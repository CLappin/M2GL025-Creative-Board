open_project -project {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM_fp\PROC_SUBSYSTEM.pro}\
         -connect_programmers {FALSE}
if { [catch {load_programming_data \
    -name {M2GL025} \
    -fpga {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.map} \
    -header {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.hdr} \
    -envm {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.efc}  \
    -spm {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.spm} \
    -dca {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.dca} } return_val] } {
save_project
close_project
exit }
export_single_stapl \
    -name {M2GL025} \
    -file {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\PROC_SUBSYSTEMMIV_BaseDesign_M2GL025.stp} \
    -secured
set_programming_file -name {M2GL025} -no_file
save_project
close_project
