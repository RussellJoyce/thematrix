// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: galois.com:galois:panel_test:1.0
// IP Revision: 15

(* X_CORE_INFO = "beagle01,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "design_1_panel_test_0_0,beagle01,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_panel_test_0_0 (
  rst_n,
  clk100_in,
  led,
  wen,
  waddr,
  wdata,
  wclk,
  PMOD_R0,
  PMOD_G0,
  PMOD_B0,
  PMOD_R1,
  PMOD_G1,
  PMOD_B1,
  PMOD_A0,
  PMOD_A1,
  PMOD_A2,
  PMOD_A3,
  PMOD_BLANK,
  PMOD_LATCH,
  PMOD_CLK
);

input wire rst_n;
input wire clk100_in;
output wire [1 : 0] led;
input wire wen;
input wire [11 : 0] waddr;
input wire [11 : 0] wdata;
input wire wclk;
output wire PMOD_R0;
output wire PMOD_G0;
output wire PMOD_B0;
output wire PMOD_R1;
output wire PMOD_G1;
output wire PMOD_B1;
output wire PMOD_A0;
output wire PMOD_A1;
output wire PMOD_A2;
output wire PMOD_A3;
output wire PMOD_BLANK;
output wire PMOD_LATCH;
output wire PMOD_CLK;

  beagle01 inst (
    .rst_n(rst_n),
    .clk100_in(clk100_in),
    .led(led),
    .wen(wen),
    .waddr(waddr),
    .wdata(wdata),
    .wclk(wclk),
    .PMOD_R0(PMOD_R0),
    .PMOD_G0(PMOD_G0),
    .PMOD_B0(PMOD_B0),
    .PMOD_R1(PMOD_R1),
    .PMOD_G1(PMOD_G1),
    .PMOD_B1(PMOD_B1),
    .PMOD_A0(PMOD_A0),
    .PMOD_A1(PMOD_A1),
    .PMOD_A2(PMOD_A2),
    .PMOD_A3(PMOD_A3),
    .PMOD_BLANK(PMOD_BLANK),
    .PMOD_LATCH(PMOD_LATCH),
    .PMOD_CLK(PMOD_CLK)
  );
endmodule
