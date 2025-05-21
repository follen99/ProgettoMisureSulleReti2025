#ifndef __GNSS_H
#define __GNSS_H

#include <stdint.h>

extern float latitude;
extern float longitude;

void GNSS_ProcessNMEA(char *nmea_line);
void GNSS_Init(void); // chiamala nel main

#endif
