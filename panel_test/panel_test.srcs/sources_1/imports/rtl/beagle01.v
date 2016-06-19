//=============================================================================================
// SparkFun / Adafruit 32x32 LED Panel Driver
// Copyright 2014 by Glen Akins.
// All rights reserved.
// 
// Set editor width to 96 and tab stop to 4.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//=============================================================================================

module beagle01
(
	input	wire			rst_n,				// actie-low async reset (tied to PB0)
	input	wire			clk100_in,			// 100MHz clock in

//	input	wire			gpmc_clk,			// gpmc bus
//	input	wire			gpmc_csn,
//	input	wire			gpmc_advn,
//	input	wire			gpmc_oen,
//	input	wire			gpmc_wen,
//	input	wire	[1:0]	gpmc_ben,
//	inout	wire	[15:0]	gpmc_ad,

//	input	wire			pushbutton,			// user interface (tied to PB1)
//	input	wire	[1:0]	switch,
	output	wire	[1:0]	led,

    output wire PMOD_R0,
    output wire PMOD_G0,
    output wire PMOD_B0,
    output wire PMOD_R1,
    output wire PMOD_G1,
    output wire PMOD_B1,
    output wire PMOD_A0,
    output wire PMOD_A1,
    output wire PMOD_A2,
    output wire PMOD_A3,
    output wire PMOD_BLANK,
    output wire PMOD_LATCH,
    output wire PMOD_CLK
);

// reset wires and assignments
wire rst;
assign rst = ~rst_n;

wire mtrx_r0, mtrx_g0, mtrx_b0, mtrx_r1, mtrx_g1, mtrx_b1;
wire mtrx_blank, mtrx_latch, mtrx_sclk;
wire [3:0] mtrx_a;

// pmod connection assignments
assign PMOD_R0 = mtrx_r0;
assign PMOD_G0 = mtrx_g0;
assign PMOD_B0 = mtrx_b0;
assign PMOD_R1 = mtrx_r1;
assign PMOD_G1 = mtrx_g1;
assign PMOD_B1 = mtrx_b1;

assign PMOD_A0 = mtrx_a[0];
assign PMOD_A1 = mtrx_a[1];
assign PMOD_A2 = mtrx_a[2];
assign PMOD_A3 = mtrx_a[3];
assign PMOD_BLANK = mtrx_blank;
assign PMOD_LATCH = mtrx_latch;
assign PMOD_CLK = mtrx_sclk;


//---------------------------------------------------------------------------------------------
// clock generator
//

wire clk100, clk50, clk33;

clk_wiz_0 clk_wiz_0
(
	.clk_in1			(clk100_in),
	.clk_out1			(clk100),
	.clk_out2			(clk50),
	.clk_out3			(clk33)
);


//---------------------------------------------------------------------------------------------
// blink the LEDs
//

reg [23:0] counter50;

always @ (posedge clk50 or negedge rst_n)
begin
	if (!rst_n)
	begin
		counter50 <= 0;
	end
	else
	begin
		counter50 <= counter50 + 1;
	end
end

assign led[0] = counter50[23];


reg [23:0] counter10;

always @ (posedge clk33 or negedge rst_n)
begin
	if (!rst_n)
	begin
		counter10 <= 0;
	end
	else
	begin
		counter10 <= counter10 + 1;
	end
end

assign led[1] = counter10[23];


//---------------------------------------------------------------------------------------------
// gpmc bus interface
//

//wire sb_rd, sb_wr;
//wire [16:1] sb_addr;
//wire [15:0] sb_wr_data;
//reg [15:0] sb_rd_data;

//gpmc_target gpmc_target
//(
//    .rst_n              (rst_n),
//    .clk                (clk100),

//    .gpmc_clk           (gpmc_clk),
//    .gpmc_csn           (gpmc_csn),
//    .gpmc_advn          (gpmc_advn),
//    .gpmc_oen           (gpmc_oen),
//    .gpmc_wen           (gpmc_wen),
//    .gpmc_ben           (gpmc_ben),
//    .gpmc_ad            (gpmc_ad),

//    .sb_wr              (sb_wr),
//    .sb_rd              (sb_rd),
//    .sb_addr            (sb_addr),
//    .sb_wr_data         (sb_wr_data),
//    .sb_rd_data         (sb_rd_data)
//);


//---------------------------------------------------------------------------------------------
// gpmc test registers
//

reg [15:0] reg0, reg1, reg2, reg3;

//always @ (posedge clk100 or negedge rst_n)
//begin
//	if (!rst_n)
//	begin
//		reg0 <= 0;
//		reg1 <= 0;
//		reg2 <= 0;
//		reg3 <= 0;
		
//		sb_rd_data <= 16'hffff;
//	end
//	else
//	begin
//        if (sb_wr)
//        begin
//            case (sb_addr)
//                0: reg0 <= sb_wr_data;
//                1: reg1 <= sb_wr_data;
//                2: reg2 <= sb_wr_data;
//                3: reg3 <= sb_wr_data;
//            endcase
//        end

//        if (sb_rd)
//        begin
//            case (sb_addr)
//                0: sb_rd_data <= reg0;
//                1: sb_rd_data <= reg1;
//                2: sb_rd_data <= reg2;
//                3: sb_rd_data <= reg3;
//				4: sb_rd_data <= 16'hdead;
//				5: sb_rd_data <= 16'hbeef;
//				6: sb_rd_data <= 16'hcafe;
//				7: sb_rd_data <= 16'hfeed;
//            endcase
//        end
//	end
//end


//---------------------------------------------------------------------------------------------
// 32 x 32 LED Matrix Registers
//

reg [10:0] mtrx_addr;
reg mtrx_wr;
reg [10:0] mtrx_wr_addr;
reg [11:0] mtrx_wr_data;
reg mtrx_select_yy;
reg mtrx_current;

//always @ (posedge clk100 or negedge rst_n)
//begin
//	if (!rst_n)
//	begin
//		mtrx_addr <= 0;
//		mtrx_wr <= 0;
//		mtrx_wr_addr <= 0;
//		mtrx_wr_data <= 0;
//		mtrx_select_yy <= 0;
//	end
//	else
//	begin
//		// defaults
//		mtrx_wr <= 0;

//		if (sb_wr)
//		begin
//			case (sb_addr)

//				8: begin
//					mtrx_addr <= sb_wr_data[10:0];
//				end

//				9: begin
//					mtrx_addr <= mtrx_addr + 1;
//					mtrx_wr <= 1;
//					mtrx_wr_addr <= mtrx_addr[10:0];
//					mtrx_wr_data <= sb_wr_data[11:0];
//				end

//				10: begin
//					mtrx_select_yy <= sb_wr_data[0];
//				end

//			endcase
//		end
//	end
//end


//---------------------------------------------------------------------------------------------
// matrix controller
//

reg mtrx_select;
reg mtrx_select_y;
wire mtrx_current_yy;
reg mtrx_current_y;

always @ (posedge clk33 or negedge rst_n)
begin
	if (!rst_n)
	begin
		mtrx_select_y <= 0;
		mtrx_select <= 0;
	end
	else
	begin
		mtrx_select_y <= mtrx_select_yy;
		mtrx_select <= mtrx_select_y;
	end
end

always @ (posedge clk100 or negedge rst_n)
begin
	if (!rst_n)
	begin
		mtrx_current_y <= 0;
		mtrx_current <= 0;
	end
	else
	begin
		mtrx_current_y <= mtrx_current_yy;
		mtrx_current <= mtrx_current_y;
	end
end

matrix matrix
(
    .rst_n					(rst_n),
    .clk					(clk33),

    .wr_clk					(clk100),
    .wr						(mtrx_wr),
    .wr_addr				(mtrx_wr_addr),
    .wr_data				(mtrx_wr_data),

    .buffer_select			(mtrx_select),
    .buffer_current			(mtrx_current_yy),

    .r0						(mtrx_r0),
    .g0						(mtrx_g0),
    .b0						(mtrx_b0),
    .r1						(mtrx_r1),
    .g1						(mtrx_g1),
    .b1						(mtrx_b1),
    .a						(mtrx_a),
    .blank					(mtrx_blank),
    .sclk					(mtrx_sclk),
    .latch					(mtrx_latch)
);


endmodule
