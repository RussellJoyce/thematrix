# thematrix

FPGA controller for LED matrix display. :100:

For instructions on setting up the Xilinx tools and drivers, see [docs/xilinx-setup.md](docs/xilinx-setup.md).

The hardware design is specified in Xilinx Vivado, and software for the ARM CPU written in Xilinx SDK.



## System Structure

### FPGA cores
There are currently two custom FPGA cores for driving the matrix:
* `panel_test` is based on the Verilog code from http://bikerglen.com/projects/lighting/led-panel-1up/ and drives the output signals to the matrix
* `panel_axi` has an AXI slave interface connected to the Processing System, and is used to buffer data between the CPU and the driver core in Block RAM

Supporting these in the Vivado design are 'AXI Interconnect', 'Processor System Reset' and 'ZYNQ7 Processing System' blocks.


### Block diagram
The following image shows how these blocks are connected (from the system block diagram in Vivado):
![System block diagram](docs/block-diagram.png?raw=true)
