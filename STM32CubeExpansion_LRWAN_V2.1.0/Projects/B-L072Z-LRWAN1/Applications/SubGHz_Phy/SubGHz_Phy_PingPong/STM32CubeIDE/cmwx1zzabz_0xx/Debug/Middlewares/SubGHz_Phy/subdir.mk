################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Middlewares/Third_Party/SubGHz_Phy/sx1276/sx1276.c 

OBJS += \
./Middlewares/SubGHz_Phy/sx1276.o 

C_DEPS += \
./Middlewares/SubGHz_Phy/sx1276.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/SubGHz_Phy/sx1276.o: C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/STM32CubeExpansion_LRWAN_V2.1.0/Middlewares/Third_Party/SubGHz_Phy/sx1276/sx1276.c Middlewares/SubGHz_Phy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DSTM32L072xx -DCMWX1ZZABZ0XX -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../../SubGHz_Phy/App -I../../../SubGHz_Phy/Target -I../../../Core/Inc -I../../../../../../../../Utilities/misc -I../../../../../../../../Utilities/timer -I../../../../../../../../Utilities/trace/adv_trace -I../../../../../../../../Utilities/lpm/tiny_lpm -I../../../../../../../../Utilities/sequencer -I../../../../../../../../Drivers/BSP/B-L072Z-LRWAN1 -I../../../../../../../../Drivers/BSP/CMWX1ZZABZ_0xx -I../../../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../../../Drivers/CMSIS/Include -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy -I../../../../../../../../Middlewares/Third_Party/SubGHz_Phy/sx1276 -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Inc" -I../../../../../../../../Drivers/BSP/GNSS1A1 -I../../../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../../../Drivers/CMSIS/BSP/Components/teseo_liv3f -I../../../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../../../Drivers/BSP/STM32L0xx_Nucleo -I"C:/Users/giuli/Documents/MAGISTRALE-git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Projects/NUCLEO-L073RZ/Applications/SimOSGetPos/Src" -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Middlewares-2f-SubGHz_Phy

clean-Middlewares-2f-SubGHz_Phy:
	-$(RM) ./Middlewares/SubGHz_Phy/sx1276.cyclo ./Middlewares/SubGHz_Phy/sx1276.d ./Middlewares/SubGHz_Phy/sx1276.o ./Middlewares/SubGHz_Phy/sx1276.su

.PHONY: clean-Middlewares-2f-SubGHz_Phy

