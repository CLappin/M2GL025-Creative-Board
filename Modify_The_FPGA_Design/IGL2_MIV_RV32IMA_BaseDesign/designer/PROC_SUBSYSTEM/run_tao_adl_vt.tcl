set_family {IGLOO2}
read_adl {C:\Users\ciaran.lappin\Desktop\Github\IGL2_M2GL025_Creative_Development_Kit\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\PROC_SUBSYSTEM.adl}
map_netlist
read_sdc {C:\Users\ciaran.lappin\Desktop\Github\IGL2_M2GL025_Creative_Development_Kit\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\constraint\PROC_SUBSYSTEM_derived_constraints.sdc}
read_sdc {C:\Users\ciaran.lappin\Desktop\Github\IGL2_M2GL025_Creative_Development_Kit\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\constraint\user.sdc}
check_constraints {C:\Users\ciaran.lappin\Desktop\Github\IGL2_M2GL025_Creative_Development_Kit\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\constraint\timing_sdc_errors.log}
write_sdc -strict {C:\Users\ciaran.lappin\Desktop\Github\IGL2_M2GL025_Creative_Development_Kit\Modify_The_FPGA_Design\CoreRISCV_AXI4_BaseDesign\designer\PROC_SUBSYSTEM\timing_analysis.sdc}
