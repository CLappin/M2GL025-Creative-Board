new_project \
         -name {PROC_SUBSYSTEM} \
         -location {C:\Users\ciaran.lappin\Desktop\Github\IGL2_M2GL025_Creative_Development_Kit\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2GL025} \
         -name {M2GL025}
enable_device \
         -name {M2GL025} \
         -enable {TRUE}
save_project
close_project
