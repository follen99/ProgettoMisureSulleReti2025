################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.c 

OBJS += \
./Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.o 

C_DEPS += \
./Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.o: C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.c Drivers/BSP/CMWX1ZZABZ_0xx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -DSTM32L072xx -DCMWX1ZZABZ0XX -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -I../../../SubGHz_Phy/App -I../../../SubGHz_Phy/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/B-L072Z-LRWAN1 -I../../../../../../../../Drivers/BSP/CMWX1ZZABZ_0xx -I../../../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx1276 -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/STM32CubeIDE/Drivers/BSP/Components" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/STM32CubeIDE/Drivers/BSP" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/STM32CubeIDE/Drivers/CMSIS" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/STM32CubeIDE/Drivers/STM32L0xx_HAL_Driver" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/STM32CubeIDE/Middlewares/lib_gnss/Data Exchange/lib_gnss/LibGNSS" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/STM32CubeIDE/Middlewares/lib_gnss/Data Exchange/lib_gnss/LibNMEA" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Projects/B-L072Z-LRWAN1/Applications/SubGHz_Phy/SubGHz_Phy_PingPong/Inc" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/STM32L0xx_HAL_Driver/Inc" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/STM32L0xx_HAL_Driver/Src" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Projects/B-L072Z-LRWAN1/Applications/SubGHz_Phy/SubGHz_Phy_PingPong/Core/Inc" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/Components/teseo_liv3f" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Drivers/BSP/GNSS1A1" -I"C:/Users/giuli/Documents/Magistrale/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Middlewares/ST/lib_gnss/LibGNSS/Inc" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-CMWX1ZZABZ_0xx

clean-Drivers-2f-BSP-2f-CMWX1ZZABZ_0xx:
	-$(RM) ./Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.cyclo ./Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.d ./Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.o ./Drivers/BSP/CMWX1ZZABZ_0xx/cmwx1zzabz_0xx.su

.PHONY: clean-Drivers-2f-BSP-2f-CMWX1ZZABZ_0xx

