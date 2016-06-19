//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Sun Jun 19 18:52:45 2016
//Host        : ubuntu running 64-bit Ubuntu 16.04 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    PMOD_A0,
    PMOD_A1,
    PMOD_A2,
    PMOD_A3,
    PMOD_B0,
    PMOD_B1,
    PMOD_BLANK,
    PMOD_CLK,
    PMOD_G0,
    PMOD_G1,
    PMOD_LATCH,
    PMOD_R0,
    PMOD_R1,
    led);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output PMOD_A0;
  output PMOD_A1;
  output PMOD_A2;
  output PMOD_A3;
  output PMOD_B0;
  output PMOD_B1;
  output PMOD_BLANK;
  output PMOD_CLK;
  output PMOD_G0;
  output PMOD_G1;
  output PMOD_LATCH;
  output PMOD_R0;
  output PMOD_R1;
  output [1:0]led;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire PMOD_A0;
  wire PMOD_A1;
  wire PMOD_A2;
  wire PMOD_A3;
  wire PMOD_B0;
  wire PMOD_B1;
  wire PMOD_BLANK;
  wire PMOD_CLK;
  wire PMOD_G0;
  wire PMOD_G1;
  wire PMOD_LATCH;
  wire PMOD_R0;
  wire PMOD_R1;
  wire [1:0]led;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .PMOD_A0(PMOD_A0),
        .PMOD_A1(PMOD_A1),
        .PMOD_A2(PMOD_A2),
        .PMOD_A3(PMOD_A3),
        .PMOD_B0(PMOD_B0),
        .PMOD_B1(PMOD_B1),
        .PMOD_BLANK(PMOD_BLANK),
        .PMOD_CLK(PMOD_CLK),
        .PMOD_G0(PMOD_G0),
        .PMOD_G1(PMOD_G1),
        .PMOD_LATCH(PMOD_LATCH),
        .PMOD_R0(PMOD_R0),
        .PMOD_R1(PMOD_R1),
        .led(led));
endmodule
