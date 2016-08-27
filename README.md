# thematrix

FPGA controller for LED matrix display. :100:

For instructions on setting up the Xilinx tools and drivers, see [docs/xilinx-setup.md](docs/xilinx-setup.md).

The hardware design is specified in Xilinx Vivado, and software for the ARM CPU written in Xilinx SDK.



## System Structure

### FPGA cores
There are currently two custom FPGA cores for driving the matrix:
* `panel_test` is based on the Verilog code from http://bikerglen.com/projects/lighting/led-panel-1up/ and drives the output signals to the matrix.
* `panel_axi` has an AXI slave interface connected to the Processing System, and is used to translate writes from the CPU into data for the display buffer in the `panel_test` component.

Supporting these in the Vivado design are 'AXI Interconnect', 'Processor System Reset' and 'ZYNQ7 Processing System' blocks.


### Block diagram
The following image shows how these blocks are connected (from the system block diagram in Vivado):
![System block diagram](docs/block-diagram.png?raw=true)



## Hardware

### panel_test
The panel test core continuously outputs data to the LEDs based on the values stored in its Block RAM buffer.
Data is written in by the `panel_axi` core using 12-bit data and 12-bit address buses as inputs into this core.
Data is output to the LEDs using two red, two green and two blue channels, a 3-bit address, and blank, latch and clock signals.

`panel_test` contains two Block RAM primitives (one for the upper half of the screens and one for the lower half), and a clock generator primitive that outputs 100MHz, 50MHz and 33MHz clocks from the input 100MHz clock.


### panel_axi
The panel AXI translation core takes 32-bit writes from the CPU and translates them into 12-bit data to send to the `panel_test` core.
Each write on the AXI bus is translated into a 12-bit address, 12-bit data, and clock and enable signals to send the data into the Block RAM inside `panel_test`.

This peripheral is mostly made up of the Xilinx AXI4-Lite slave example code, but with every write to a 'register' translated into the appropriate signals to send to `panel_test` BRAM interface instead.


### Vivado projects

Each of the two peripherals are in their own Vivado projects, and exported as IP cores, with a third project containing a block design linking them together with the processing system.

The main Vivado project accesses these exported cores by setting their paths as repositories (Project Settings, IP, Repository Manager) and adding them through the IP Catalog.

Each of the cores needs to be re-exported when it is changed, so the master project can re-import it.



## Software

The software for the ARM is currently just a single C file that clears the buffer in the `panel_axi` component and writes a couple of pixel values, as well as the Xilinx libraries to support the Zynq.

The base of the pixel array can be accessed at address `XPAR_PANEL_AXI_0_S00_AXI_BASEADDR` (defined in Vivado and generated into `xparameters.h` when hardware is exported and the SDK hardware platform project is built).

A simple way of writing to the buffer is using C pointer syntax:
```C
*(((volatile u32 *)XPAR_PANEL_AXI_0_S00_AXI_BASEADDR) + offset) = value;
```

The AXI bus is 32-bit, but only the lower 12 bits of each write will be stored in the BRAM buffer for the LEDs. Addresses must be aligned to 32-bits, so each subsequent 32-bit word corresponds to the next pixel in the grid. Ordering is horizontally (along each shifted line) then vertically.


### SDK workspace
The SDK workspace contains three projects:
* `design_1_wrapper_hw_platform_0` - the hardware platform project created by the 'Export Hardware' option in Vivado. Contains descriptions of the hardware, the AXI bus address map, and the bitfile for programming the FPGA logic. This will be updated each time hardware is exported from Vivado, which should be done after any hardware changes.
* `test_bsp` - the board support package project. This is generated using the files in the hardware platform project, and should be rebuilt after any hardware changes.
* `test` - the main software project, containing the user code.



## Building and running the project

* Load the `fpga_test` project in Vivado.
* If anything has changed, click 'Generate Bitstream' in the 'Flow Navigator' panel and wait for synthesis and implementation to run.
* Choose File, Export, Export Hardware and tick the 'Include bitstream' box to export the hardware design for SDK to use.
* Choose File, Launch SDK to run Xilinx SDK for writing software and programming the board.
* Choose Xilinx Tools, Program FPGA to program the bitstream from Vivado to the FPGA device.
* Choose Run, Run in SDK to upload the compiled software into DDR, configure the processing system, and start the code running.

If recreating the run configuration, select 'Run using System Debugger', with `design_1_wrapper.bit` as the bitstream file and `ps7_init.tcl` as the initialization file.


