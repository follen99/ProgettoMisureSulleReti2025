################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f.c \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_i2c.c \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_queue.c \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_uart.c 

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
Drivers/BSP/Components/teseo_liv3f.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/teseo_liv3f_i2c.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_i2c.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/teseo_liv3f_queue.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_queue.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/BSP/Components/teseo_liv3f_uart.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/Components/teseo_liv3f/teseo_liv3f_uart.c Drivers/BSP/Components/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-Components

clean-Drivers-2f-BSP-2f-Components:
	-$(RM) ./Drivers/BSP/Components/teseo_liv3f.cyclo ./Drivers/BSP/Components/teseo_liv3f.d ./Drivers/BSP/Components/teseo_liv3f.o ./Drivers/BSP/Components/teseo_liv3f.su ./Drivers/BSP/Components/teseo_liv3f_i2c.cyclo ./Drivers/BSP/Components/teseo_liv3f_i2c.d ./Drivers/BSP/Components/teseo_liv3f_i2c.o ./Drivers/BSP/Components/teseo_liv3f_i2c.su ./Drivers/BSP/Components/teseo_liv3f_queue.cyclo ./Drivers/BSP/Components/teseo_liv3f_queue.d ./Drivers/BSP/Components/teseo_liv3f_queue.o ./Drivers/BSP/Components/teseo_liv3f_queue.su ./Drivers/BSP/Components/teseo_liv3f_uart.cyclo ./Drivers/BSP/Components/teseo_liv3f_uart.d ./Drivers/BSP/Components/teseo_liv3f_uart.o ./Drivers/BSP/Components/teseo_liv3f_uart.su

.PHONY: clean-Drivers-2f-BSP-2f-Components

