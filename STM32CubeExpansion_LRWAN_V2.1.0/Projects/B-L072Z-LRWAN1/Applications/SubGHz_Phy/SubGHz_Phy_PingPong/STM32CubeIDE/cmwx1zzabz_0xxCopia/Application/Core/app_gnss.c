#include "app_gnss.h"
#include "gnss_data.h"     // dove è dichiarato GNSS_DATA_GetValidInfo e GNSSParser_Data_t
#include "gnss_parser.h"   // eventuale supporto al parsing
#include <stdio.h>

// Variabile statica per memorizzare i dati GNSS attuali (puoi gestirla diversamente)
static GNSSParser_Data_t currentGnssData = {0};

void MX_GNSS_PreOSInit(void)
{
    // Inizializzazione preliminare hardware GNSS o variabili globali
    // Esempio: reset dati
    currentGnssData.gpgga_data.valid = 0;
}

void MX_GNSS_Init(void)
{
    // Inizializzazione periferiche GNSS (UART, I2C, SPI etc.)
    // Da implementare a seconda del modulo GNSS usato
}

void MX_GNSS_PostOSInit(void)
{
    // Qualsiasi inizializzazione da fare dopo che OS o scheduler è attivo
    // Es. avvia task GNSS, timer, interrupt ecc.
}

// Esempio funzione per aggiornare dati GNSS da buffer NMEA
void GNSS_ProcessIncomingData(const char *nmeaSentence)
{
    // qui chiameresti il parser vero per aggiornare currentGnssData
    // es. GNSS_Parser_ParseNMEA(&currentGnssData, nmeaSentence);
    // per ora simuliamo:
    if (nmeaSentence != NULL && strstr(nmeaSentence, "$GPGGA") != NULL) {
        currentGnssData.gpgga_data.valid = 1;
        currentGnssData.gpgga_data.xyz.lat = 45.12345;  // esempio lat
        currentGnssData.gpgga_data.xyz.lon = 7.12345;   // esempio lon
    }
}

// Funzione che permette di copiare lo stato GNSS aggiornato
void GNSS_DATA_GetValidInfo(GNSSParser_Data_t *data)
{
    if (data == NULL) return;
    *data = currentGnssData;
}
