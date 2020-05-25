connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Avnet MiniZed V1 1234-oj1A" && level==0} -index 1
fpga -file C:/eFPGA/OPDRACHT_2/2/Workspace_Exercises/EX_2_MATRIX_App/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/eFPGA/OPDRACHT_2/2/Workspace_Exercises/EX_2_MATRIX/export/EX_2_MATRIX/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/eFPGA/OPDRACHT_2/2/Workspace_Exercises/EX_2_MATRIX_App/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/eFPGA/OPDRACHT_2/2/Workspace_Exercises/EX_2_MATRIX_App/Debug/EX_2_MATRIX_App.elf
configparams force-mem-access 0
bpadd -addr &main
