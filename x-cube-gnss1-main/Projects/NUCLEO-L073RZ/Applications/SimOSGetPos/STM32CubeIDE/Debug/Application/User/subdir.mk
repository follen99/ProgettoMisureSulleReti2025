################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/app_gnss.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/gnss_lib_config.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/main.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32_bus_ex.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_hal_msp.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_it.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_nucleo.c \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_nucleo_bus.c \
../Application/User/syscalls.c \
../Application/User/sysmem.c 

OBJS += \
./Application/User/app_gnss.o \
./Application/User/gnss_lib_config.o \
./Application/User/main.o \
./Application/User/stm32_bus_ex.o \
./Application/User/stm32l0xx_hal_msp.o \
./Application/User/stm32l0xx_it.o \
./Application/User/stm32l0xx_nucleo.o \
./Application/User/stm32l0xx_nucleo_bus.o \
./Application/User/syscalls.o \
./Application/User/sysmem.o 

C_DEPS += \
./Application/User/app_gnss.d \
./Application/User/gnss_lib_config.d \
./Application/User/main.d \
./Application/User/stm32_bus_ex.d \
./Application/User/stm32l0xx_hal_msp.d \
./Application/User/stm32l0xx_it.d \
./Application/User/stm32l0xx_nucleo.d \
./Application/User/stm32l0xx_nucleo_bus.d \
./Application/User/syscalls.d \
./Application/User/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/app_gnss.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/app_gnss.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/gnss_lib_config.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/gnss_lib_config.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/main.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/main.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32_bus_ex.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32_bus_ex.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32l0xx_hal_msp.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_hal_msp.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32l0xx_it.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_it.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32l0xx_nucleo.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_nucleo.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/stm32l0xx_nucleo_bus.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src/stm32l0xx_nucleo_bus.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Application/User/%.o Application/User/%.su Application/User/%.cyclo: ../Application/User/%.c Application/User/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Application-2f-User

clean-Application-2f-User:
	-$(RM) ./Application/User/app_gnss.cyclo ./Application/User/app_gnss.d ./Application/User/app_gnss.o ./Application/User/app_gnss.su ./Application/User/gnss_lib_config.cyclo ./Application/User/gnss_lib_config.d ./Application/User/gnss_lib_config.o ./Application/User/gnss_lib_config.su ./Application/User/main.cyclo ./Application/User/main.d ./Application/User/main.o ./Application/User/main.su ./Application/User/stm32_bus_ex.cyclo ./Application/User/stm32_bus_ex.d ./Application/User/stm32_bus_ex.o ./Application/User/stm32_bus_ex.su ./Application/User/stm32l0xx_hal_msp.cyclo ./Application/User/stm32l0xx_hal_msp.d ./Application/User/stm32l0xx_hal_msp.o ./Application/User/stm32l0xx_hal_msp.su ./Application/User/stm32l0xx_it.cyclo ./Application/User/stm32l0xx_it.d ./Application/User/stm32l0xx_it.o ./Application/User/stm32l0xx_it.su ./Application/User/stm32l0xx_nucleo.cyclo ./Application/User/stm32l0xx_nucleo.d ./Application/User/stm32l0xx_nucleo.o ./Application/User/stm32l0xx_nucleo.su ./Application/User/stm32l0xx_nucleo_bus.cyclo ./Application/User/stm32l0xx_nucleo_bus.d ./Application/User/stm32l0xx_nucleo_bus.o ./Application/User/stm32l0xx_nucleo_bus.su ./Application/User/syscalls.cyclo ./Application/User/syscalls.d ./Application/User/syscalls.o ./Application/User/syscalls.su ./Application/User/sysmem.cyclo ./Application/User/sysmem.d ./Application/User/sysmem.o ./Application/User/sysmem.su

.PHONY: clean-Application-2f-User

