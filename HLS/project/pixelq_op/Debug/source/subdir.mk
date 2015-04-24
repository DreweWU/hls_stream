################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../pixel_op.cpp 

OBJS += \
./source/pixel_op.o 

CPP_DEPS += \
./source/pixel_op.d 


# Each subdirectory must supply rules for building sources it contributes
source/pixel_op.o: C:/AVNET_ZED_HDMI/pixelq_op/pixel_op.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__kernel -D__global -Dglobal -Dlocal -D__local -Dconstant -D__constant -Dprivate -D__private -D__private -IC:/Xilinx/Vivado_HLS/2014.4/include/ap_sysc -IC:/AVNET_ZED_HDMI -IC:/Xilinx/Vivado_HLS/2014.4/include -IC:/Xilinx/Vivado_HLS/2014.4/win64/tools/systemc/include -IC:/Xilinx/Vivado_HLS/2014.4/include/etc -IC:/Xilinx/Vivado_HLS/2014.4/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


