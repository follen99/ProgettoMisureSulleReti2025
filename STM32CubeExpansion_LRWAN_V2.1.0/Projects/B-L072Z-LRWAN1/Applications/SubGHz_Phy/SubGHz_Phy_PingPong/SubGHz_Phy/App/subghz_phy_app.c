/*!
 * \file      subghz_phy_app.c
 *
 * \brief     Ping-Pong implementation
 *
 * \copyright Revised BSD License, see section \ref LICENSE.
 *
 * \code
 *                ______                              _
 *               / _____)             _              | |
 *              ( (____  _____ ____ _| |_ _____  ____| |__
 *               \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 *               _____) ) ____| | | || |_| ____( (___| | | |
 *              (______/|_____)_|_|_| \__)_____)\____)_| |_|
 *              (C)2013-2017 Semtech
 *
 * \endcode
 *
 * \author    Miguel Luis ( Semtech )
 *
 * \author    Gregory Cristian ( Semtech )
 */
/**
  ******************************************************************************
  *
  *          Portions COPYRIGHT 2020 STMicroelectronics
  *
  * @file    subghz_phy_app.c
  * @author  MCD Application Team
  * @brief   Application of the SubGHz_Phy Middleware
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "platform.h"
#include "sys_app.h"
#include "subghz_phy_app.h"
#include "radio.h"
#include "app_version.h"

/* USER CODE BEGIN Includes */
#include "stm32_timer.h"
#include "stm32_seq.h"
#include "utilities_def.h"
#include "b-l072z-lrwan1.h"
#include "usart.h"
/* USER CODE END Includes */

/* External variables ---------------------------------------------------------*/
/* USER CODE BEGIN EV */

/* USER CODE END EV */

/* Private typedef -----------------------------------------------------------*/

/* USER CODE BEGIN PTD */
typedef enum
{
  RX,
  RX_TIMEOUT,
  RX_ERROR,
  TX,
  TX_TIMEOUT,
} States_t;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* Configurations */
/*Timeout*/
#define RX_TIMEOUT_VALUE              3000
#define TX_TIMEOUT_VALUE              3000
/* PING string*/
#define GPS "GPS"
/* PONG string*/
#define ACK "ACK"
/*Size of the payload to be sent*/
/* Size must be greater of equal the PING and PONG*/
#define MAX_APP_BUFFER_SIZE          255
#if (PAYLOAD_LEN > MAX_APP_BUFFER_SIZE)
#error PAYLOAD_LEN must be less or equal than MAX_APP_BUFFER_SIZE
#endif /* (PAYLOAD_LEN > MAX_APP_BUFFER_SIZE) */
/* wait for remote to be in Rx, before sending a Tx frame*/
#define RX_TIME_MARGIN                50
/* Afc bandwidth in Hz */
#define FSK_AFC_BANDWIDTH             83333
/* LED blink Period*/
#define LED_PERIOD_MS                 200
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
//#define MASTER = 1
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* Radio events function pointer */
static RadioEvents_t RadioEvents;
/* USER CODE BEGIN PV */

/*Ping Pong FSM states */
static States_t State = RX;
/* App Rx Buffer*/
static uint8_t BufferRx[MAX_APP_BUFFER_SIZE];
/* App Tx Buffer*/
static uint8_t BufferTx[MAX_APP_BUFFER_SIZE];
/* Last  Received Buffer Size*/
uint16_t RxBufferSize = 0;
/* Last  Received packer Rssi*/
int8_t RssiValue = 0;
/* Last  Received packer SNR (in Lora modulation)*/
int8_t SnrValue = 0;
/* Led Timers objects*/
static UTIL_TIMER_Object_t timerLed;
/* device state. Master: true, Slave: false*/
bool isMaster = true;
static int MASTER = 1;
static int buttonPressed = 0;
extern UART_HandleTypeDef huart1;
/* random delay to make sure 2 devices will sync*/
/* the closest the random delays are, the longer it will
   take for the devices to sync when started simultaneously*/
static int32_t random_delay;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/*!
 * @brief Function to be executed on Radio Tx Done event
 */
static void OnTxDone(void);

/**
  * @brief Function to be executed on Radio Rx Done event
  * @param  payload ptr of buffer received
  * @param  size buffer size
  * @param  rssi
  * @param  LoraSnr_FskCfo
  */
static void OnRxDone(uint8_t *payload, uint16_t size, int16_t rssi, int8_t LoraSnr_FskCfo);

/**
  * @brief Function executed on Radio Tx Timeout event
  */
static void OnTxTimeout(void);

/**
  * @brief Function executed on Radio Rx Timeout event
  */
static void OnRxTimeout(void);

/**
  * @brief Function executed on Radio Rx Error event
  */
static void OnRxError(void);

/* USER CODE BEGIN PFP */
/**
  * @brief  Function executed on when led timer elapses
  * @param  context ptr of LED context
  */
static void OnledEvent(void *context);

/**
  * @brief PingPong state machine implementation
  */
//static void PingPong_Process(void);
static void Master(void);
static void Slave(void);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);
/* USER CODE END PFP */

/* Exported functions ---------------------------------------------------------*/
void SubghzApp_Init(void)
{
  /* USER CODE BEGIN SubghzApp_Init_1 */
  APP_LOG(TS_OFF, VLEVEL_M, "\n\rPING PONG\n\r");
  /* Print APP version*/
  APP_LOG(TS_OFF, VLEVEL_M, "APP_VERSION= V%X.%X.%X\r\n",
          (uint8_t)(__APP_VERSION >> __APP_VERSION_MAIN_SHIFT),
          (uint8_t)(__APP_VERSION >> __APP_VERSION_SUB1_SHIFT),
          (uint8_t)(__APP_VERSION >> __APP_VERSION_SUB2_SHIFT));

  /* Led Timers*/
  UTIL_TIMER_Create(&timerLed, 0xFFFFFFFFU, UTIL_TIMER_ONESHOT, OnledEvent, NULL);
  UTIL_TIMER_SetPeriod(&timerLed, LED_PERIOD_MS);
  UTIL_TIMER_Start(&timerLed);
  /* USER CODE END SubghzApp_Init_1 */

  BSP_PB_Init(BUTTON_USER, BUTTON_MODE_EXTI);

  /* USER CODE BEGIN SubghzApp_Init_2 */

  /* Radio initialization */
  RadioEvents.TxDone = OnTxDone;
  RadioEvents.RxDone = OnRxDone;
  RadioEvents.TxTimeout = OnTxTimeout;
  RadioEvents.RxTimeout = OnRxTimeout;
  RadioEvents.RxError = OnRxError;

  Radio.Init(&RadioEvents);

  /*calculate random delay for synchronization*/
  random_delay = (Radio.Random()) >> 22; /*10bits random e.g. from 0 to 1023 ms*/

  /* USER CODE BEGIN SubghzApp_Init_2 */
  /* Radio Set frequency */
  Radio.SetChannel(RF_FREQUENCY);

  /* Radio configuration */
#if ((USE_MODEM_LORA == 1) && (USE_MODEM_FSK == 0))
  APP_LOG(TS_OFF, VLEVEL_M, "---------------\n\r");
  APP_LOG(TS_OFF, VLEVEL_M, "LORA_MODULATION\n\r");
  APP_LOG(TS_OFF, VLEVEL_M, "LORA_BW=%d kHz\n\r", (1 << LORA_BANDWIDTH) * 125);
  APP_LOG(TS_OFF, VLEVEL_M, "LORA_SF=%d\n\r", LORA_SPREADING_FACTOR);

  Radio.SetTxConfig(MODEM_LORA, TX_OUTPUT_POWER, 0, LORA_BANDWIDTH,
                    LORA_SPREADING_FACTOR, LORA_CODINGRATE,
                    LORA_PREAMBLE_LENGTH, LORA_FIX_LENGTH_PAYLOAD_ON,
                    true, 0, 0, LORA_IQ_INVERSION_ON, TX_TIMEOUT_VALUE);

  Radio.SetRxConfig(MODEM_LORA, LORA_BANDWIDTH, LORA_SPREADING_FACTOR,
                    LORA_CODINGRATE, 0, LORA_PREAMBLE_LENGTH,
                    LORA_SYMBOL_TIMEOUT, LORA_FIX_LENGTH_PAYLOAD_ON,
                    0, true, 0, 0, LORA_IQ_INVERSION_ON, true);

  Radio.SetMaxPayloadLength(MODEM_LORA, MAX_APP_BUFFER_SIZE);

#elif ((USE_MODEM_LORA == 0) && (USE_MODEM_FSK == 1))
  APP_LOG(TS_OFF, VLEVEL_M, "---------------\n\r");
  APP_LOG(TS_OFF, VLEVEL_M, "FSK_MODULATION\n\r");
  APP_LOG(TS_OFF, VLEVEL_M, "FSK_BW=%d Hz\n\r", FSK_BANDWIDTH);
  APP_LOG(TS_OFF, VLEVEL_M, "FSK_DR=%d bits/s\n\r", FSK_DATARATE);

  Radio.SetTxConfig(MODEM_FSK, TX_OUTPUT_POWER, FSK_FDEV, 0,
                    FSK_DATARATE, 0,
                    FSK_PREAMBLE_LENGTH, FSK_FIX_LENGTH_PAYLOAD_ON,
                    true, 0, 0, 0, TX_TIMEOUT_VALUE);

  Radio.SetRxConfig(MODEM_FSK, FSK_BANDWIDTH, FSK_DATARATE,
                    0, FSK_AFC_BANDWIDTH, FSK_PREAMBLE_LENGTH,
                    0, FSK_FIX_LENGTH_PAYLOAD_ON, 0, true,
                    0, 0, false, true);

  Radio.SetMaxPayloadLength(MODEM_FSK, MAX_APP_BUFFER_SIZE);

#else
#error "Please define a modulation in the subghz_phy_app.h file."
#endif /* USE_MODEM_LORA | USE_MODEM_FSK */
  /* LED initialization*/
  LED_Init(LED_RED1);
  LED_Init(LED_RED2);
  /*fills tx buffer*/
  memset(BufferTx, 0x0, MAX_APP_BUFFER_SIZE);

  APP_LOG(TS_ON, VLEVEL_L, "rand=%d\n\r", random_delay);
  /*starts reception*/
  Radio.Rx(RX_TIMEOUT_VALUE + random_delay);
  /*register task to to be run in while(1) after Radio IT*/
  if(MASTER==1){
	  UTIL_SEQ_RegTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Master), UTIL_SEQ_RFU, Master);
  }
  else{
	  UTIL_SEQ_RegTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Slave), UTIL_SEQ_RFU, Slave);
  }

  /* USER CODE END SubghzApp_Init_2 */
}

/* USER CODE BEGIN EF */

/* USER CODE END EF */

/* Private functions ---------------------------------------------------------*/

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  if (GPIO_Pin == KEY_BUTTON_PIN)
  {
    BSP_LED_Toggle(LED2);
    buttonPressed = true;               // Indico che il bottone è stato premuto
    UTIL_SEQ_SetTask(1 << CFG_SEQ_Task_SubGHz_Phy_App_Master, CFG_SEQ_Prio_0);
  }
}

static void OnTxDone(void)
{
  /* USER CODE BEGIN OnTxDone */
  APP_LOG(TS_ON, VLEVEL_L, "OnTxDone\n\r");
  /* Update the State of the FSM*/
  State = TX;
  /* Run PingPong process in background*/
  if(MASTER==1){
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Master), CFG_SEQ_Prio_0);
  }
  else{
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Slave), CFG_SEQ_Prio_0);
  }
  /* USER CODE END OnTxDone */
}

static void OnRxDone(uint8_t *payload, uint16_t size, int16_t rssi, int8_t LoraSnr_FskCfo)
{
  /* USER CODE BEGIN OnRxDone */
  APP_LOG(TS_ON, VLEVEL_L, "OnRxDone\n\r");
#if ((USE_MODEM_LORA == 1) && (USE_MODEM_FSK == 0))
  APP_LOG(TS_ON, VLEVEL_L, "RssiValue=%d dBm, SnrValue=%ddB\n\r", rssi, LoraSnr_FskCfo);
  /* Record payload Signal to noise ratio in Lora*/
  SnrValue = LoraSnr_FskCfo;
#endif /* USE_MODEM_LORA | USE_MODEM_FSK */
#if ((USE_MODEM_LORA == 0) && (USE_MODEM_FSK == 1))
  APP_LOG(TS_ON, VLEVEL_L, "RssiValue=%d dBm, Cfo=%dkHz\n\r", rssi, LoraSnr_FskCfo);
  SnrValue = 0; /*not applicable in GFSK*/
#endif /* USE_MODEM_LORA | USE_MODEM_FSK */
  /* Update the State of the FSM*/
  State = RX;
  /* Clear BufferRx*/
  memset(BufferRx, 0, MAX_APP_BUFFER_SIZE);
  /* Record payload size*/
  RxBufferSize = size;
  if (RxBufferSize <= MAX_APP_BUFFER_SIZE)
  {
    memcpy(BufferRx, payload, RxBufferSize);
  }
  /* Record Received Signal Strength*/
  RssiValue = rssi;
  /* Record payload content*/
  APP_LOG(TS_ON, VLEVEL_H, "payload. size=%d \n\r", size);
  for (int i = 0; i < PAYLOAD_LEN; i++)
  {
    APP_LOG(TS_OFF, VLEVEL_H, "%02X", BufferRx[i]);
    if (i % 16 == 15)
    {
      APP_LOG(TS_OFF, VLEVEL_H, "\n\r");
    }
  }
  APP_LOG(TS_OFF, VLEVEL_H, "\n\r");
  /* Run PingPong process in background*/
  if(MASTER==1){
	  UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Master), CFG_SEQ_Prio_0);
  }
  else{
	  UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Slave), CFG_SEQ_Prio_0);
  }
  /* USER CODE END OnRxDone */
}

static void OnTxTimeout(void)
{
  /* USER CODE BEGIN OnTxTimeout */
  APP_LOG(TS_ON, VLEVEL_L, "OnTxTimeout\n\r");
  /* Update the State of the FSM*/
  State = TX_TIMEOUT;
  /* Run PingPong process in background*/
  if(MASTER==1){
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Master), CFG_SEQ_Prio_0);
  }
  else{
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Slave), CFG_SEQ_Prio_0);
  }
  /* USER CODE END OnTxTimeout */
}

static void OnRxTimeout(void)
{
  /* USER CODE BEGIN OnRxTimeout */
  APP_LOG(TS_ON, VLEVEL_L, "OnRxTimeout\n\r");
  /* Update the State of the FSM*/
  State = RX_TIMEOUT;
  /* Run PingPong process in background*/
  if(MASTER==1){
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Master), CFG_SEQ_Prio_0);
  }
  else{
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Slave), CFG_SEQ_Prio_0);
  }
  /* USER CODE END OnRxTimeout */
}

static void OnRxError(void)
{
  /* USER CODE BEGIN OnRxError */
  APP_LOG(TS_ON, VLEVEL_L, "OnRxError\n\r");
  /* Update the State of the FSM*/
  State = RX_ERROR;
  /* Run PingPong process in background*/
  if(MASTER==1){
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Master), CFG_SEQ_Prio_0);
  }
  else{
    UTIL_SEQ_SetTask((1 << CFG_SEQ_Task_SubGHz_Phy_App_Slave), CFG_SEQ_Prio_0);
  }
  /* USER CODE END OnRxError */
}

/* USER CODE BEGIN PrFD */

static void Master(void) {
    static bool gpsSent = false;

    Radio.Sleep();

    switch (State)
    {
        case TX:
            APP_LOG(TS_ON, VLEVEL_L, "Master: Messaggio inviato, in attesa di ACK...\n\r");
            Radio.Rx(RX_TIMEOUT_VALUE);
            gpsSent = true;
            buttonPressed = false;  // Reset: pacchetto già inviato
            break;

        case RX:
            if (gpsSent && RxBufferSize > 0)
            {
                if (strncmp((const char *)BufferRx, ACK, strlen(ACK)) == 0)
                {
                    UTIL_TIMER_Stop(&timerLed);
                    LED_Off(LED_RED2);
                    LED_Toggle(LED_RED1);
                    APP_LOG(TS_ON, VLEVEL_L, "Master: ACK ricevuto ✅\n\r");
                }
                else
                {
                    APP_LOG(TS_ON, VLEVEL_L, "Master: Messaggio inatteso ricevuto ❌\n\r");
                }
                gpsSent = false;  // Reset per permettere nuovo invio
            }
            else
            {
                APP_LOG(TS_ON, VLEVEL_L, "Master: Nessun dato utile ricevuto.\n\r");
            }
            break;

        case RX_TIMEOUT:
        case RX_ERROR:
            APP_LOG(TS_ON, VLEVEL_L, "Master: Timeout o errore, riascolto...\n\r");
            Radio.Rx(RX_TIMEOUT_VALUE);
            gpsSent = false;
            break;

        case TX_TIMEOUT:
            APP_LOG(TS_ON, VLEVEL_L, "Master: Timeout di trasmissione, riprovo.\n\r");
            gpsSent = false;
            break;

        default:
            break;
    }

    // Se il bottone è premuto e non siamo già in attesa di ACK
    if (buttonPressed && !gpsSent)
    {
        char uartBuf[64] = {0};  // buffer più grande per messaggi lunghi
        uint8_t ch;
        int i = 0;

        // Invia comando "invia\n" su UART
        const char* cmd = "invia\n";
        MX_USART1_UART_Init();  // inizializzazione UART (se necessaria)
        HAL_UART_Transmit(&huart1, (uint8_t*)cmd, strlen(cmd), 100);

        // Ricezione byte per byte fino a \n o timeout
        for (i = 0; i < sizeof(uartBuf) - 1; ++i)
        {
            if (HAL_UART_Receive(&huart1, &ch, 1, 200) == HAL_OK)
            {
                uartBuf[i] = ch;
                if (ch == '\n') {
                    ++i;  // includi il newline
                    break;
                }
            }
            else
            {
                break;  // timeout
            }
        }
        uartBuf[i] = '\0';  // terminatore stringa

        if (i > 0)
        {
            memset(BufferTx, 0, MAX_APP_BUFFER_SIZE);
            memcpy(BufferTx, uartBuf, i);  // usa solo la lunghezza letta
            APP_LOG(TS_ON, VLEVEL_L, "Master: Invio messaggio UART (%d bytes): %s\n\r", i, uartBuf);
            Radio.Send(BufferTx, i);
        }
        else
        {
            APP_LOG(TS_ON, VLEVEL_L, "Master: Nessuna risposta valida dalla UART ❌\n\r");
        }

        buttonPressed = false;  // reset
    }

}



static void Slave(void) {
    Radio.Sleep();

    switch (State)
    {
        case RX:
            if (RxBufferSize > 0)
            {
                // Assicurati che BufferRx sia terminato da '\0' per stampa come stringa
                if (RxBufferSize < MAX_APP_BUFFER_SIZE) {
                    BufferRx[RxBufferSize] = '\0';
                } else {
                    BufferRx[MAX_APP_BUFFER_SIZE - 1] = '\0'; // Sicurezza
                }

                APP_LOG(TS_ON, VLEVEL_L, "Slave: Messaggio ricevuto (%d bytes): %s\n\r", RxBufferSize, BufferRx);

                UTIL_TIMER_Stop(&timerLed);
                LED_Off(LED_RED1);
                LED_Toggle(LED_RED2);

                HAL_Delay(Radio.GetWakeupTime() + RX_TIME_MARGIN + 250);

                memset(BufferTx, 0, MAX_APP_BUFFER_SIZE);
                memcpy(BufferTx, ACK, strlen(ACK));
                Radio.Send(BufferTx, strlen(ACK));
            }
            else
            {
                APP_LOG(TS_ON, VLEVEL_L, "Slave: Buffer vuoto. In ascolto...\n\r");
                Radio.Rx(RX_TIMEOUT_VALUE);
            }
            break;

        case TX:
            APP_LOG(TS_ON, VLEVEL_L, "Slave: ACK inviato ✅. Ritorno in ascolto...\n\r");
            Radio.Rx(RX_TIMEOUT_VALUE);
            break;

        case RX_TIMEOUT:
        case RX_ERROR:
            APP_LOG(TS_ON, VLEVEL_L, "Slave: Timeout o errore in ricezione. Riprovo...\n\r");
            Radio.Rx(RX_TIMEOUT_VALUE);
            break;

        case TX_TIMEOUT:
            APP_LOG(TS_ON, VLEVEL_L, "Slave: Timeout di trasmissione ❌. Riprovo ascolto...\n\r");
            Radio.Rx(RX_TIMEOUT_VALUE);
            break;

        default:
            Radio.Rx(RX_TIMEOUT_VALUE);
            break;
    }
}




static void OnledEvent(void *context)
{
  LED_Toggle(LED_RED1);
  LED_Toggle(LED_RED2);
  UTIL_TIMER_Start(&timerLed);
}

/* USER CODE END PrFD */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
