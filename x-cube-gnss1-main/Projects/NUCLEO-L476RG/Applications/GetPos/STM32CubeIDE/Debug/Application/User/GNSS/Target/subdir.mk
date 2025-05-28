################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L476RG/Applications/GetPos/GNSS/Target/gnss_lib_config.c \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L476RG/Applications/GetPos/GNSS/Target/stm32_bus_ex.c 

OBJS += \
./Application/User/GNSS/Target/gnss_lib_config.o \
./Application/User/GNSS/Target/stm32_bus_ex.o 

C_DEPS += \
./Application/User/GNSS/Target/gnss_lib_config.d \
./Application/User/GNSS/Target/stm32_bus_ex.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/GNSS/Target/gnss_lib_config.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L476RG/Applications/GetPos/GNSS/Target/gnss_lib_config.c Application/User/GNSS/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/GNSS/Target/stm32_bus_ex.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L476RG/Applications/GetPos/GNSS/Target/stm32_bus_ex.c Application/User/GNSS/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../../Core/Inc -I../../GNSS/App -I../../GNSS/Target -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../../../../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../../../../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-GNSS-2f-Target

clean-Application-2f-User-2f-GNSS-2f-Target:
	-$(RM) ./Application/User/GNSS/Target/gnss_lib_config.cyclo ./Application/User/GNSS/Target/gnss_lib_config.d ./Application/User/GNSS/Target/gnss_lib_config.o ./Application/User/GNSS/Target/gnss_lib_config.su ./Application/User/GNSS/Target/stm32_bus_ex.cyclo ./Application/User/GNSS/Target/stm32_bus_ex.d ./Application/User/GNSS/Target/stm32_bus_ex.o ./Application/User/GNSS/Target/stm32_bus_ex.su

.PHONY: clean-Application-2f-User-2f-GNSS-2f-Target

