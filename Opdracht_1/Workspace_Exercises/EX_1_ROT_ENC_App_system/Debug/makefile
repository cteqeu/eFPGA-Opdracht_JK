#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = C:/eFPGA/OPDRACHT_2/Workspace_Exercises/EX_1_ROT_ENC/export/EX_1_ROT_ENC/EX_1_ROT_ENC.xpfm
SYS_CONFIG = EX_1_ROT_ENC
DOMAINS = standalone_domain
BIF_PATH = C:/eFPGA/OPDRACHT_2/Workspace_Exercises/EX_1_ROT_ENC_App_system/Debug/system.bif

BITSTREAM_PATH = C:/eFPGA/OPDRACHT_2/Workspace_Exercises/EX_1_ROT_ENC_App/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf C:/eFPGA/OPDRACHT_2/Workspace_Exercises/EX_1_ROT_ENC_App/Debug/EX_1_ROT_ENC_App.elf,ps7_cortexa9_0

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 61593 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


