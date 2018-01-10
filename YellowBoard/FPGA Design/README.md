# IGLOO2 Creative Development Board RISC-V Sample FPGA Designs 
Sample RISC-V Libero projects for the IGLOO2 (M2GL025) Creative Development Board.

This project contains Libero projects containing FPGA designs including a RISC-V RV32IMA soft processor. Programming bitstreams are also included so you don't have to run through the full FPGA design flow in order to start developing software for RISC-V.

### Design Feature (MIV only)
The FPGA Designs include the following features
* MiV_RV32IMA_L1_AHB RISC-V processor 
* RISC-V debug block allowing on-target debug using openocd/GDB
* On-chip NVM used as boot/execution memory
* DDR2 memory for code/data
* User peripherals such as GPIO, Timers, UART

The memory map for each design is available within each Libero project.

### Target Hardware
The IGLOO2 Creative Development Board includes a IGLOO2 M2GL025 FPGA. Details of the features available for this development board are available [here](https://www.microsemi.com/products/fpga-soc/design-resources/dev-kits/smartfusion2/future-creative-board) .

### Libero Projects
This folder contains two RISC-V Libero projects.

* IGL2_MIV_RV32IMA_BaseDesign,contains a simple RISC-V design which allows users to use basic peripherals such as GPIO, UART and Timers. 
* IGL2_RISCV_Systic_Blinky, contains a simple RISC-V design which is provided as on all new Creative Development boards (yellow). This design uses the CoreRISCV_AXI4 core. 


### Modifying the Libero projects
Some of the Libero projects use IP packages not directly available from the Microsemi IP Catalog. These IP packages were created to speed up design creation by wrapping simple logic into reusable user IP packages.
These user IP packages are available [here](https://github.com/RISCV-on-Microsemi-FPGA/riscv-junk-drawer/tree/master/IP-packages).

## CoreRISCV_AXI4 Only
Please note that you may need to uncomment "`define USE_REGISTERS" in file coreriscv_axi4_defines.v in order to reduce RAM blocks usage. You will need to do this anytime you regenerate the top level SmartDesign in Libero.
