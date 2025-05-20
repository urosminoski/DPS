################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/polyphaseDecimationTest.c 

ASM_SRCS += \
../src/polyphaseDecimate.asm 

ASM_DEPS += \
./src/polyphaseDecimate.pp 

OBJS += \
./src/polyphaseDecimate.obj \
./src/polyphaseDecimationTest.obj 

C_DEPS += \
./src/polyphaseDecimationTest.pp 

OBJS__QTD += \
".\src\polyphaseDecimate.obj" \
".\src\polyphaseDecimationTest.obj" 

ASM_DEPS__QTD += \
".\src\polyphaseDecimate.pp" 

C_DEPS__QTD += \
".\src\polyphaseDecimationTest.pp" 

ASM_SRCS_QUOTED += \
"../src/polyphaseDecimate.asm" 

C_SRCS_QUOTED += \
"../src/polyphaseDecimationTest.c" 


# Each subdirectory must supply rules for building sources it contributes
src/polyphaseDecimate.obj: ../src/polyphaseDecimate.asm $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5505 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Users/aleks/Desktop/Workspace_CCS4/polyphaseDecimation/inc" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="src/polyphaseDecimate.pp" --obj_directory="src" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

src/polyphaseDecimationTest.obj: ../src/polyphaseDecimationTest.c $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5505 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Users/aleks/Desktop/Workspace_CCS4/polyphaseDecimation/inc" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="src/polyphaseDecimationTest.pp" --obj_directory="src" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


