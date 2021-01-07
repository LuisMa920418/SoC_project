################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/FIR_driver.c \
../src/audio_fun.c \
../src/filter_driver_H.c \
../src/helloworld.c \
../src/platform.c \
../src/timer_ps.c 

OBJS += \
./src/FIR_driver.o \
./src/audio_fun.o \
./src/filter_driver_H.o \
./src/helloworld.o \
./src/platform.o \
./src/timer_ps.o 

C_DEPS += \
./src/FIR_driver.d \
./src/audio_fun.d \
./src/filter_driver_H.d \
./src/helloworld.d \
./src/platform.d \
./src/timer_ps.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../test2_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


