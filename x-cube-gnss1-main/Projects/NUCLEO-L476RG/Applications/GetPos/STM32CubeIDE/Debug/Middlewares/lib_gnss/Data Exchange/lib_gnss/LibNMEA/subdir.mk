################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Middlewares/ST/lib_gnss/LibNMEA/Src/NMEA_parser.c 

OBJS += \
./Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.o 

C_DEPS += \
./Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Middlewares/ST/lib_gnss/LibNMEA/Src/NMEA_parser.c Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Middlewares/lib_gnss/Data Exchange/lib_gnss/LibNMEA/NMEA_parser.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lib_gnss-2f-Data-20-Exchange-2f-lib_gnss-2f-LibNMEA

clean-Middlewares-2f-lib_gnss-2f-Data-20-Exchange-2f-lib_gnss-2f-LibNMEA:
	-$(RM) ./Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.cyclo ./Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.d ./Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.o ./Middlewares/lib_gnss/Data\ Exchange/lib_gnss/LibNMEA/NMEA_parser.su

.PHONY: clean-Middlewares-2f-lib_gnss-2f-Data-20-Exchange-2f-lib_gnss-2f-LibNMEA

