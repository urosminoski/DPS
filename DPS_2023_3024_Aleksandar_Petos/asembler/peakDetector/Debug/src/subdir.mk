################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/hwfftTest.c 

OBJS += \
./src/hwfftTest.obj 

C_DEPS += \
./src/hwfftTest.pp 

OBJS__QTD += \
".\src\hwfftTest.obj" 

C_DEPS__QTD += \
".\src\hwfftTest.pp" 

C_SRCS_QUOTED += \
"../src/hwfftTest.c" 


# Each subdirectory must supply rules for building sources it contributes
src/hwfftTest.obj: ../src/hwfftTest.c $(GEN_OPTS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/bin/cl55" -v5505 -g --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/c5500/include" --include_path="C:/Users/aleks/Desktop/Workspace_CCS4/peakDetector/inc" --diag_warning=225 --ptrdiff_size=16 --memory_model=large --preproc_with_compile --preproc_dependency="src/hwfftTest.pp" --obj_directory="src" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


