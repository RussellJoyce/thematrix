//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
//Date        : Tue Jun 14 18:26:23 2016
//Host        : ubuntu running 64-bit Ubuntu 16.04 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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

  wire panel_test_0_PMOD_A0;
  wire panel_test_0_PMOD_A1;
  wire panel_test_0_PMOD_A2;
  wire panel_test_0_PMOD_A3;
  wire panel_test_0_PMOD_B0;
  wire panel_test_0_PMOD_B1;
  wire panel_test_0_PMOD_BLANK;
  wire panel_test_0_PMOD_CLK;
  wire panel_test_0_PMOD_G0;
  wire panel_test_0_PMOD_G1;
  wire panel_test_0_PMOD_LATCH;
  wire panel_test_0_PMOD_R0;
  wire panel_test_0_PMOD_R1;
  wire [1:0]panel_test_0_led;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;

  assign PMOD_A0 = panel_test_0_PMOD_A0;
  assign PMOD_A1 = panel_test_0_PMOD_A1;
  assign PMOD_A2 = panel_test_0_PMOD_A2;
  assign PMOD_A3 = panel_test_0_PMOD_A3;
  assign PMOD_B0 = panel_test_0_PMOD_B0;
  assign PMOD_B1 = panel_test_0_PMOD_B1;
  assign PMOD_BLANK = panel_test_0_PMOD_BLANK;
  assign PMOD_CLK = panel_test_0_PMOD_CLK;
  assign PMOD_G0 = panel_test_0_PMOD_G0;
  assign PMOD_G1 = panel_test_0_PMOD_G1;
  assign PMOD_LATCH = panel_test_0_PMOD_LATCH;
  assign PMOD_R0 = panel_test_0_PMOD_R0;
  assign PMOD_R1 = panel_test_0_PMOD_R1;
  assign led[1:0] = panel_test_0_led;
  design_1_panel_test_0_0 panel_test_0
       (.PMOD_A0(panel_test_0_PMOD_A0),
        .PMOD_A1(panel_test_0_PMOD_A1),
        .PMOD_A2(panel_test_0_PMOD_A2),
        .PMOD_A3(panel_test_0_PMOD_A3),
        .PMOD_B0(panel_test_0_PMOD_B0),
        .PMOD_B1(panel_test_0_PMOD_B1),
        .PMOD_BLANK(panel_test_0_PMOD_BLANK),
        .PMOD_CLK(panel_test_0_PMOD_CLK),
        .PMOD_G0(panel_test_0_PMOD_G0),
        .PMOD_G1(panel_test_0_PMOD_G1),
        .PMOD_LATCH(panel_test_0_PMOD_LATCH),
        .PMOD_R0(panel_test_0_PMOD_R0),
        .PMOD_R1(panel_test_0_PMOD_R1),
        .clk50_in(processing_system7_0_FCLK_CLK0),
        .led(panel_test_0_led),
        .rst_n(processing_system7_0_FCLK_RESET0_N));
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARREADY(1'b0),
        .M_AXI_GP0_AWREADY(1'b0),
        .M_AXI_GP0_BID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_BRESP({1'b0,1'b0}),
        .M_AXI_GP0_BVALID(1'b0),
        .M_AXI_GP0_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_GP0_RLAST(1'b0),
        .M_AXI_GP0_RRESP({1'b0,1'b0}),
        .M_AXI_GP0_RVALID(1'b0),
        .M_AXI_GP0_WREADY(1'b0),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SDIO0_WP(1'b0),
        .USB0_VBUS_PWRFAULT(1'b0));
endmodule
