################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/GNSS1A1/gnss1a1_gnss.c 

OBJS += \
./Drivers/BSP/GNSS1A1/gnss1a1_gnss.o 

C_DEPS += \
./Drivers/BSP/GNSS1A1/gnss1a1_gnss.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/BSP/GNSS1A1/gnss1a1_gnss.o: D:/Git/ProgettoMisureSulleReti2025/x-cube-gnss1-main/Drivers/BSP/GNSS1A1/gnss1a1_gnss.c Drivers/BSP/GNSS1A1/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0plus -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L073xx -c -I../../Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc -I../../../../../../Drivers/STM32L0xx_HAL_Driver/Inc/Legacy -I../../../../../../Drivers/CMSIS/Device/ST/STM32L0xx/Include -I../../../../../../Drivers/CMSIS/Include -I../../../../../../Middlewares/ST/lib_gnss/LibGNSS/Inc -I../../../../../../Middlewares/ST/lib_gnss/LibNMEA/Inc -I../../../../../../Drivers/BSP/Components/teseo_liv3f -I../../../../../../Drivers/BSP/GNSS1A1 -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Drivers-2f-BSP-2f-GNSS1A1

clean-Drivers-2f-BSP-2f-GNSS1A1:
	-$(RM) ./Drivers/BSP/GNSS1A1/gnss1a1_gnss.cyclo ./Drivers/BSP/GNSS1A1/gnss1a1_gnss.d ./Drivers/BSP/GNSS1A1/gnss1a1_gnss.o ./Drivers/BSP/GNSS1A1/gnss1a1_gnss.su

.PHONY: clean-Drivers-2f-BSP-2f-GNSS1A1

