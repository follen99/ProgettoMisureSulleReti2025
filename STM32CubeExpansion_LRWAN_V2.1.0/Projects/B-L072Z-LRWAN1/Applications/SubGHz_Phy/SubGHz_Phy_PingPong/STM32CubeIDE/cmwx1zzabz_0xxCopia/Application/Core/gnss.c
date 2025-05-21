#include "gnss.h"
#include <string.h>
#include <stdlib.h>

float latitude = 0.0f;
float longitude = 0.0f;

// Helper: converti NMEA lat/long in float decimali
static float ConvertCoord(const char* coord, const char* dir) {
    float deg = 0.0f;
    float minutes = 0.0f;

    int len = strlen(coord);
    if (len < 4) return 0.0f;

    char deg_str[3] = {0};
    char min_str[10] = {0};

    if (strchr(coord, '.') - coord > 4) {
        // Longitudine
        strncpy(deg_str, coord, 3);
        strncpy(min_str, coord + 3, len - 3);
    } else {
        // Latitudine
        strncpy(deg_str, coord, 2);
        strncpy(min_str, coord + 2, len - 2);
    }

    deg = atof(deg_str);
    minutes = atof(min_str);

    float decimal = deg + (minutes / 60.0f);

    if (dir[0] == 'S' || dir[0] == 'W') {
        decimal *= -1.0f;
    }

    return decimal;
}

void GNSS_ProcessNMEA(char *nmea) {
    // Cerca GPGGA
    if (strncmp(nmea, "$GPGGA", 6) == 0) {
        char *token;
        char *nmea_copy = strdup(nmea);
        int field = 0;

        token = strtok(nmea_copy, ",");

        char lat[15] = {0}, lat_dir[2] = {0};
        char lon[15] = {0}, lon_dir[2] = {0};

        while (token != NULL) {
            field++;
            if (field == 3) strncpy(lat, token, sizeof(lat));
            if (field == 4) strncpy(lat_dir, token, sizeof(lat_dir));
            if (field == 5) strncpy(lon, token, sizeof(lon));
            if (field == 6) strncpy(lon_dir, token, sizeof(lon_dir));

            token = strtok(NULL, ",");
        }

        latitude = ConvertCoord(lat, lat_dir);
        longitude = ConvertCoord(lon, lon_dir);

        free(nmea_copy);
    }
}
