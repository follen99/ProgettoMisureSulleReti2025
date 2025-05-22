#ifndef GNSS_H
#define GNSS_H

#include "stm32l0xx_hal.h"

#define GNSS_UART &huart2      // UART usata dal modulo GNSS
#define GNSS_BUFFER_SIZE 512

void GNSS_Init(void);
void GNSS_Process(void);

extern char gnss_buffer[GNSS_BUFFER_SIZE];

#endif
