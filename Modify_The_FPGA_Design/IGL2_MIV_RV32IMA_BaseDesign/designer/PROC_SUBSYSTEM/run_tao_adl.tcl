set_family {IGLOO2}
read_adl {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.adl}
map_netlist
read_sdc {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\constraint\PROC_SUBSYSTEM_derived_constraints.sdc}
read_sdc {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\constraint\user.sdc}
check_constraints {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\constraint\placer_sdc_errors.log}
write_sdc -strict {C:\Users\hbreslin\OneDrive - Microsemi Corporation\Ciaran stuff\IGL2_MIV_RV32IMA_BaseDesign\IGL2_MIV_RV32IMA_BaseDesign\designer\PROC_SUBSYSTEM\place_route.sdc}
