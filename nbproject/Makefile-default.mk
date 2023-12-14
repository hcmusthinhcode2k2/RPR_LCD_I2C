#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/traps.c mcc_generated_files/system.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c main.c mcc_generated_files/i2c1_driver.c mcc_generated_files/reset.c mcc_generated_files/pin_manager.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/interrupt_manager.c mcc_generated_files/clock.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/uart1.c stick/SystemTick.c I2C_RPR0521RS/RPR0521RS_I2C.c I2C_LCD/LCD_I2C.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/stick/SystemTick.o ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o ${OBJECTDIR}/I2C_LCD/LCD_I2C.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d ${OBJECTDIR}/mcc_generated_files/reset.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/stick/SystemTick.o.d ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o.d ${OBJECTDIR}/I2C_LCD/LCD_I2C.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/main.o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o ${OBJECTDIR}/mcc_generated_files/reset.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/stick/SystemTick.o ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o ${OBJECTDIR}/I2C_LCD/LCD_I2C.o

# Source Files
SOURCEFILES=mcc_generated_files/traps.c mcc_generated_files/system.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c main.c mcc_generated_files/i2c1_driver.c mcc_generated_files/reset.c mcc_generated_files/pin_manager.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/interrupt_manager.c mcc_generated_files/clock.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/uart1.c stick/SystemTick.c I2C_RPR0521RS/RPR0521RS_I2C.c I2C_LCD/LCD_I2C.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33CK256MP508
MP_LINKER_FILE_OPTION=,--script=p33CK256MP508.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/c6d9f562ef544367836698120caf40cd99c1adf8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/1b943d4af7bd194be165f04bc8480ec43e9e07c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/9449a5c4704647a272564d08384676c7273156af .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/dd7a6d56d6f803990530ced540b94c09f258ee51 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/406093509ccc3536badd22a54fe8b58f805237fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/656649f4b6d9778d4108c866399e3bf47a2ba738 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/56f6a11e75a39ed991cbebc67726ef2de469eac3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/b359f0802dbe1963a77c67a5ceb59f0563b98c31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/5b43778e5996b411da2b6a8710f271827d0cf13d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/366c987cd8bcfade5411a9eaa3ebe30fd62365a3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/ac44cbfd5de0de2d41a78583ae4571205a052657 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/7486bf14bbbe0b2866d77b57b6d4a25bf6ebae92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/100b5a2404356aad5f0367b70bf7de3e15b60ff2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/a720f0d89328c8257232d534f554b07ae9ea91e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stick/SystemTick.o: stick/SystemTick.c  .generated_files/flags/default/699b8daca0b9402d899dce2487cd3d1cec434154 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/stick" 
	@${RM} ${OBJECTDIR}/stick/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/stick/SystemTick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stick/SystemTick.c  -o ${OBJECTDIR}/stick/SystemTick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stick/SystemTick.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o: I2C_RPR0521RS/RPR0521RS_I2C.c  .generated_files/flags/default/b2ad995906f7290b4c45657ba44675b7658c178a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/I2C_RPR0521RS" 
	@${RM} ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o.d 
	@${RM} ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  I2C_RPR0521RS/RPR0521RS_I2C.c  -o ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/I2C_LCD/LCD_I2C.o: I2C_LCD/LCD_I2C.c  .generated_files/flags/default/d4ac5a3a375627c934dccf37808d5196dafca3b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/I2C_LCD" 
	@${RM} ${OBJECTDIR}/I2C_LCD/LCD_I2C.o.d 
	@${RM} ${OBJECTDIR}/I2C_LCD/LCD_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  I2C_LCD/LCD_I2C.c  -o ${OBJECTDIR}/I2C_LCD/LCD_I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/I2C_LCD/LCD_I2C.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/b07ce431730d36fc0d51a2966db20ee2cbf68929 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/5b03e139a8bde9f36759bc859462e4b4f19cfd29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/5d73a67c0d75545420e6d94386486b608049e1fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/7d64b2c40dfdf1c65397d2844be5f9984ad5bd44 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/33f6ffcd3dce0ba1f74faee139aa725b3712f072 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c1_driver.o: mcc_generated_files/i2c1_driver.c  .generated_files/flags/default/d20cd665cd90bb98333eede0b668d99916b9b8f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/reset.o: mcc_generated_files/reset.c  .generated_files/flags/default/563043ffd1f2df698b81907fbad22335ec07fe5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/reset.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/reset.c  -o ${OBJECTDIR}/mcc_generated_files/reset.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/reset.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/7a5d82bef4cdbe5ebbc10a9edfadf569439f5141 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/2aeb2e0358a08ad3efc8ccd758d5b870fc583131 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/d4db02f56bf38327a74eff5aeec892a0ea13298c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/a68ec72c779a6d650fb505c1317b99df17dedfd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/5d1a2a3e90d7507f6accbfd4a5aa5467de58ba9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/773a91641b8d8dfa704d0265dfde6c22fd7dab4e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/a386f1c78743b51bc0e48c8b07c5b2dbbf685001 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/stick/SystemTick.o: stick/SystemTick.c  .generated_files/flags/default/f33b3e466cbb5cd286ec0e58fd2aca8d96ef615b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/stick" 
	@${RM} ${OBJECTDIR}/stick/SystemTick.o.d 
	@${RM} ${OBJECTDIR}/stick/SystemTick.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  stick/SystemTick.c  -o ${OBJECTDIR}/stick/SystemTick.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/stick/SystemTick.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o: I2C_RPR0521RS/RPR0521RS_I2C.c  .generated_files/flags/default/d822bb5134a4a12d861cb85b321d652d35673414 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/I2C_RPR0521RS" 
	@${RM} ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o.d 
	@${RM} ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  I2C_RPR0521RS/RPR0521RS_I2C.c  -o ${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/I2C_RPR0521RS/RPR0521RS_I2C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/I2C_LCD/LCD_I2C.o: I2C_LCD/LCD_I2C.c  .generated_files/flags/default/15a4a9ad09749b41e3dc53e799b8f32aabf6dcb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/I2C_LCD" 
	@${RM} ${OBJECTDIR}/I2C_LCD/LCD_I2C.o.d 
	@${RM} ${OBJECTDIR}/I2C_LCD/LCD_I2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  I2C_LCD/LCD_I2C.c  -o ${OBJECTDIR}/I2C_LCD/LCD_I2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/I2C_LCD/LCD_I2C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -O0 -I"I2C_RPR0521RS" -I"I2C_LCD" -I"stick" -I"mcc_generated_files" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers"  -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"I2C_RPR0521RS" -I"I2C_LCD" -I"mcc_generated_files" -I"stick" -I"mcc_generated_files/drivers" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/RPR_LCD_I2C.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
