################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_i2c.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_queue.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_uart.c 

OBJS += \
./Drivers/BSP/Components/teseo_liv3f.o \
./Drivers/BSP/Components/teseo_liv3f_i2c.o \
./Drivers/BSP/Components/teseo_liv3f_queue.o \
./Drivers/BSP/Components/teseo_liv3f_uart.o 

C_DEPS += \
./Drivers/BSP/Components/teseo_liv3f.d \
./Drivers/BSP/Components/teseo_liv3f_i2c.d \
./Drivers/BSP/Components/teseo_liv3f_queue.d \
./Drivers/BSP/Components/teseo_liv3f_uart.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/Components/teseo_liv3f.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/teseo_liv3f_i2c.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_i2c.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/teseo_liv3f_queue.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_queue.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/BSP/Components/teseo_liv3f_uart.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_uart.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/teseo_liv3f.cyclo ./Drivers/BSP/Components/teseo_liv3f.d ./Drivers/BSP/Components/teseo_liv3f.o ./Drivers/BSP/Components/teseo_liv3f.su ./Drivers/BSP/Components/teseo_liv3f_i2c.cyclo ./Drivers/BSP/Components/teseo_liv3f_i2c.d ./Drivers/BSP/Components/teseo_liv3f_i2c.o ./Drivers/BSP/Components/teseo_liv3f_i2c.su ./Drivers/BSP/Components/teseo_liv3f_queue.cyclo ./Drivers/BSP/Components/teseo_liv3f_queue.d ./Drivers/BSP/Components/teseo_liv3f_queue.o ./Drivers/BSP/Components/teseo_liv3f_queue.su ./Drivers/BSP/Components/teseo_liv3f_uart.cyclo ./Drivers/BSP/Components/teseo_liv3f_uart.d ./Drivers/BSP/Components/teseo_liv3f_uart.o ./Drivers/BSP/Components/teseo_liv3f_uart.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

