#ifndef GNSS_H
#define GNSS_H

#include <stdint.h>
#include <stdbool.h>

typedef struct {
    float latitude;
    float longitude;
    float altitude;
    bool valid_fix;
} GNSS_Position_t;

void GNSS_Init(void);
bool GNSS_GetPosition(GNSS_Position_t *position);

#endif // GNSS_H
