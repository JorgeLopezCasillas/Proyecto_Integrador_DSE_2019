################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_cache.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_clocks.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_feature.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_fmi_R7FS7G27H3A01CFC.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_group_irq.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_hw_locks.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_module_stop.c \
../synergy/ssp/src/bsp/mcu/s7g2/bsp_rom_registers.c 

OBJS += \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_cache.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_clocks.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_feature.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_fmi_R7FS7G27H3A01CFC.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_group_irq.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_hw_locks.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_module_stop.o \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_rom_registers.o 

C_DEPS += \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_cache.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_clocks.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_feature.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_fmi_R7FS7G27H3A01CFC.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_group_irq.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_hw_locks.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_module_stop.d \
./synergy/ssp/src/bsp/mcu/s7g2/bsp_rom_registers.d 


# Each subdirectory must supply rules for building sources it contributes
synergy/ssp/src/bsp/mcu/s7g2/%.o: ../synergy/ssp/src/bsp/mcu/s7g2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	C:\Renesas\Synergy\e2studio_v6.2.1_ssp_v1.5.0\eclipse\../Utilities/isdebuild arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal  -g3 -DSF_MESSAGE_CLASS -I../GUIApp/synergy_cfg/ssp_cfg/bsp/ -I../GUIApp/synergy_cfg/ssp_cfg/driver/ -I../GUIApp/synergy/ssp/inc/ -I../GUIApp/synergy/ssp/inc/bsp/ -I../GUIApp/synergy/ssp/inc/bsp/cmsis/Include/ -I../GUIApp/synergy/ssp/inc/driver/api/ -I../GUIApp/synergy/ssp/inc/driver/instances/ -I../GUIApp/synergy_cfg/ssp_cfg/framework/el/ -I../GUIApp/synergy/ssp/inc/framework/el/ -I../GUIApp/synergy/ssp/src/framework/el/tx/ -I../GUIApp/synergy_cfg/ssp_cfg/framework/ -I../GUIApp/synergy/ssp/inc/framework/api/ -I../GUIApp/synergy/ssp/inc/framework/instances/ -I../GUIApp/synergy_cfg/ssp_cfg/framework/tes/ -I../GUIApp/synergy/ssp/inc/framework/tes/ -I../GUIApp/synergy_cfg/framework/ -I../GUIApp/synergy_cfg/ssp_cfg/framework -I../GUIApp/synergy/ssp/inc/framework/api -I../GUIApp/synergy/ssp/inc/framework/instances -I../GUIApp/synergy_cfg/ssp_cfg/framework/tes -I../GUIApp/synergy/ssp/inc/framework/tes -I../GUIApp/synergy_cfg/ssp_cfg/framework/el -I../GUIApp/synergy/ssp/inc/framework/el -I../GUIApp/synergy/ssp/src/framework/el/tx -I../GUIApp/synergy_cfg/ssp_cfg/bsp -I../GUIApp/synergy_cfg/ssp_cfg/driver -I../GUIApp/synergy/ssp/inc -I../GUIApp/synergy/ssp/inc/bsp -I../GUIApp/synergy/ssp/inc/bsp/cmsis/Include -I../GUIApp/synergy/ssp/inc/driver/api -I../GUIApp/synergy/ssp/inc/driver/instances -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy_cfg\ssp_cfg\framework" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\framework\api" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\framework\instances" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\framework\tes" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy_cfg\ssp_cfg\framework\el" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\framework\el" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\src\framework\el\tx" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy_cfg\ssp_cfg\bsp" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy_cfg\ssp_cfg\driver" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\bsp" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\bsp\cmsis\Include" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\driver\api" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\synergy\ssp\inc\driver\instances" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\src" -I"D:\Documentos\Proyecto_Integrador_DSE_2019\EMCS_Source_Code\EMCS_SoftwareProject\src\synergy_gen" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" -x c "$<"
	@echo 'Finished building: $<'
	@echo ' '


