// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config12_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_V_address0,
        data_V_ce0,
        data_V_q0,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        output_V_q0
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] data_V_address0;
output   data_V_ce0;
input  [15:0] data_V_q0;
output  [9:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;
input  [15:0] output_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg[9:0] output_V_address0;
reg output_V_ce0;
reg output_V_we0;
reg[15:0] output_V_d0;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [11:0] linebuffer_V_address0;
reg    linebuffer_V_ce0;
reg    linebuffer_V_we0;
reg   [15:0] linebuffer_V_d0;
wire   [15:0] linebuffer_V_q0;
wire   [6:0] i0_fu_295_p2;
reg   [6:0] i0_reg_755;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln246_fu_289_p2;
wire   [12:0] zext_ln203_47_fu_306_p1;
reg   [12:0] zext_ln203_47_reg_765;
wire    ap_CS_fsm_state3;
wire   [11:0] zext_ln203_48_fu_310_p1;
reg   [11:0] zext_ln203_48_reg_771;
wire   [8:0] zext_ln203_49_fu_314_p1;
reg   [8:0] zext_ln203_49_reg_776;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln250_fu_327_p2;
wire   [1:0] add_ln255_fu_361_p2;
reg   [1:0] add_ln255_reg_791;
wire   [11:0] add_ln203_27_fu_399_p2;
reg   [11:0] add_ln203_27_reg_801;
wire   [15:0] tmpinput_V_q0;
reg   [15:0] tmp1_V_reg_806;
wire    ap_CS_fsm_state5;
wire   [6:0] zext_ln255_fu_404_p1;
reg   [6:0] zext_ln255_reg_811;
reg   [11:0] linebuffer_V_addr_1_reg_817;
reg   [15:0] tmp_V_reg_822;
wire   [4:0] i2_fu_417_p2;
reg   [4:0] i2_reg_830;
wire    ap_CS_fsm_state6;
wire   [12:0] add_ln203_30_fu_448_p2;
reg   [12:0] add_ln203_30_reg_835;
wire   [0:0] icmp_ln258_fu_411_p2;
wire   [1:0] i1_fu_516_p2;
wire   [1:0] i0_4_fu_532_p2;
reg   [1:0] i0_4_reg_853;
wire    ap_CS_fsm_state8;
wire   [7:0] zext_ln192_15_fu_550_p1;
reg   [7:0] zext_ln192_15_reg_858;
wire   [0:0] icmp_ln188_fu_526_p2;
wire   [7:0] add_ln192_fu_554_p2;
reg   [7:0] add_ln192_reg_863;
wire   [1:0] i1_7_fu_566_p2;
reg   [1:0] i1_7_reg_871;
wire    ap_CS_fsm_state9;
wire   [10:0] sub_ln192_fu_596_p2;
reg   [10:0] sub_ln192_reg_876;
wire   [0:0] icmp_ln190_fu_560_p2;
wire   [6:0] i2_8_fu_612_p2;
reg   [6:0] i2_8_reg_885;
wire    ap_CS_fsm_state10;
wire   [10:0] add_ln192_13_fu_627_p2;
reg   [10:0] add_ln192_13_reg_890;
wire   [0:0] icmp_ln191_fu_606_p2;
wire   [1:0] i1_8_fu_669_p2;
reg   [1:0] i1_8_reg_903;
wire    ap_CS_fsm_state12;
wire   [9:0] sub_ln203_fu_695_p2;
reg   [9:0] sub_ln203_reg_908;
wire   [0:0] icmp_ln200_fu_663_p2;
wire   [8:0] zext_ln202_fu_701_p1;
reg   [8:0] zext_ln202_reg_913;
wire   [6:0] i2_7_fu_711_p2;
reg   [6:0] i2_7_reg_921;
wire    ap_CS_fsm_state13;
wire   [9:0] add_ln203_fu_729_p2;
reg   [9:0] add_ln203_reg_926;
wire   [0:0] icmp_ln202_fu_705_p2;
reg   [7:0] tmpinput_V_address0;
reg    tmpinput_V_ce0;
reg    tmpinput_V_we0;
reg   [15:0] tmpinput_V_d0;
reg   [6:0] i0_0_reg_199;
reg   [1:0] i1_0_reg_211;
reg   [4:0] i2_0_reg_223;
wire    ap_CS_fsm_state7;
reg   [1:0] i0_0_i_reg_234;
reg   [1:0] i1_0_i_reg_245;
reg   [6:0] i2_0_i_reg_256;
wire    ap_CS_fsm_state11;
reg   [1:0] i11_0_i_reg_267;
reg   [6:0] i22_0_i_reg_278;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln248_fu_301_p1;
wire   [63:0] tmp_130_fu_318_p3;
wire   [63:0] zext_ln252_4_fu_356_p1;
wire   [63:0] zext_ln255_11_fu_388_p1;
wire   [63:0] zext_ln203_50_fu_407_p1;
wire   [63:0] zext_ln203_56_fu_483_p1;
wire   [63:0] zext_ln203_52_fu_511_p1;
wire   [63:0] zext_ln203_54_fu_522_p1;
wire   [63:0] zext_ln192_4_fu_650_p1;
wire   [63:0] zext_ln192_fu_658_p1;
wire   [63:0] zext_ln203_58_fu_743_p1;
wire   [63:0] zext_ln203_fu_748_p1;
wire   [1:0] xor_ln252_fu_333_p2;
wire   [7:0] tmp_132_fu_339_p3;
wire   [8:0] zext_ln252_fu_347_p1;
wire   [8:0] add_ln252_fu_351_p2;
wire   [7:0] tmp_133_fu_367_p3;
wire   [8:0] zext_ln255_10_fu_379_p1;
wire   [8:0] add_ln255_4_fu_383_p2;
wire   [11:0] zext_ln255_9_fu_375_p1;
wire   [11:0] add_ln203_26_fu_393_p2;
wire   [5:0] tmp_136_fu_423_p3;
wire   [6:0] zext_ln203_53_fu_431_p1;
wire   [6:0] add_ln203_29_fu_435_p2;
wire   [12:0] tmp_138_cast_fu_440_p3;
wire   [5:0] tmp_139_fu_453_p3;
wire   [6:0] zext_ln203_55_fu_461_p1;
wire   [6:0] add_ln203_31_fu_465_p2;
wire   [12:0] tmp_141_cast_fu_470_p3;
wire   [12:0] add_ln203_32_fu_478_p2;
wire   [1:0] sub_ln265_fu_488_p2;
wire   [7:0] tmp_135_fu_494_p3;
wire   [8:0] zext_ln203_51_fu_502_p1;
wire   [8:0] add_ln203_28_fu_506_p2;
wire   [0:0] trunc_ln192_fu_538_p1;
wire   [6:0] shl_ln_fu_542_p3;
wire   [9:0] shl_ln192_5_fu_572_p3;
wire   [7:0] shl_ln192_6_fu_584_p3;
wire   [10:0] zext_ln192_16_fu_580_p1;
wire   [10:0] zext_ln192_17_fu_592_p1;
wire   [7:0] zext_ln191_fu_602_p1;
wire   [7:0] add_ln192_14_fu_618_p2;
wire   [10:0] zext_ln192_18_fu_623_p1;
wire   [7:0] add_ln192_15_fu_632_p2;
wire   [10:0] zext_ln192_19_fu_637_p1;
wire   [10:0] add_ln192_16_fu_641_p2;
wire  signed [31:0] sext_ln192_4_fu_646_p1;
wire  signed [31:0] sext_ln192_fu_655_p1;
wire   [7:0] shl_ln203_3_fu_683_p3;
wire   [9:0] shl_ln3_fu_675_p3;
wire   [9:0] zext_ln203_13_fu_691_p1;
wire   [7:0] or_ln_fu_717_p3;
wire   [9:0] zext_ln203_14_fu_725_p1;
wire   [8:0] zext_ln203_57_fu_734_p1;
wire   [8:0] add_ln203_33_fu_738_p2;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config12_s_linetde #(
    .DataWidth( 16 ),
    .AddressRange( 2304 ),
    .AddressWidth( 12 ))
linebuffer_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuffer_V_address0),
    .ce0(linebuffer_V_ce0),
    .we0(linebuffer_V_we0),
    .d0(linebuffer_V_d0),
    .q0(linebuffer_V_q0)
);

cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config12_s_tmpiudo #(
    .DataWidth( 16 ),
    .AddressRange( 192 ),
    .AddressWidth( 8 ))
tmpinput_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tmpinput_V_address0),
    .ce0(tmpinput_V_ce0),
    .we0(tmpinput_V_we0),
    .d0(tmpinput_V_d0),
    .q0(tmpinput_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln246_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i0_0_i_reg_234 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_560_p2 == 1'd1))) begin
        i0_0_i_reg_234 <= i0_4_reg_853;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i0_0_reg_199 <= 7'd0;
    end else if (((icmp_ln250_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i0_0_reg_199 <= i0_reg_755;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_526_p2 == 1'd1))) begin
        i11_0_i_reg_267 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_705_p2 == 1'd1))) begin
        i11_0_i_reg_267 <= i1_8_reg_903;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_606_p2 == 1'd1))) begin
        i1_0_i_reg_245 <= i1_7_reg_871;
    end else if (((icmp_ln188_fu_526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i1_0_i_reg_245 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1))) begin
        i1_0_reg_211 <= i1_fu_516_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i1_0_reg_211 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i22_0_i_reg_278 <= i2_7_reg_921;
    end else if (((icmp_ln200_fu_663_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        i22_0_i_reg_278 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        i2_0_i_reg_256 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i2_0_i_reg_256 <= i2_8_reg_885;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i2_0_reg_223 <= i2_reg_830;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i2_0_reg_223 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln191_fu_606_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        add_ln192_13_reg_890 <= add_ln192_13_fu_627_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln188_fu_526_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln192_reg_863[7 : 6] <= add_ln192_fu_554_p2[7 : 6];
        zext_ln192_15_reg_858[6] <= zext_ln192_15_fu_550_p1[6];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln250_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln203_27_reg_801 <= add_ln203_27_fu_399_p2;
        add_ln255_reg_791 <= add_ln255_fu_361_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln258_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln203_30_reg_835 <= add_ln203_30_fu_448_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln202_fu_705_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        add_ln203_reg_926 <= add_ln203_fu_729_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i0_4_reg_853 <= i0_4_fu_532_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i0_reg_755 <= i0_fu_295_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i1_7_reg_871 <= i1_7_fu_566_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i1_8_reg_903 <= i1_8_fu_669_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i2_7_reg_921 <= i2_7_fu_711_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i2_8_reg_885 <= i2_8_fu_612_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i2_reg_830 <= i2_fu_417_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        linebuffer_V_addr_1_reg_817 <= zext_ln203_50_fu_407_p1;
        tmp1_V_reg_806 <= tmpinput_V_q0;
        tmp_V_reg_822 <= linebuffer_V_q0;
        zext_ln255_reg_811[1 : 0] <= zext_ln255_fu_404_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        sub_ln192_reg_876[10 : 6] <= sub_ln192_fu_596_p2[10 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_663_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        sub_ln203_reg_908[9 : 6] <= sub_ln203_fu_695_p2[9 : 6];
        zext_ln202_reg_913[7 : 6] <= zext_ln202_fu_701_p1[7 : 6];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln203_47_reg_765[6 : 0] <= zext_ln203_47_fu_306_p1[6 : 0];
        zext_ln203_48_reg_771[6 : 0] <= zext_ln203_48_fu_310_p1[6 : 0];
        zext_ln203_49_reg_776[6 : 0] <= zext_ln203_49_fu_314_p1[6 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_663_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_663_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_address0 = zext_ln203_54_fu_522_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1))) begin
        linebuffer_V_address0 = linebuffer_V_addr_1_reg_817;
    end else if (((icmp_ln258_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        linebuffer_V_address0 = zext_ln203_56_fu_483_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        linebuffer_V_address0 = zext_ln255_11_fu_388_p1;
    end else begin
        linebuffer_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1)) | ((icmp_ln258_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        linebuffer_V_ce0 = 1'b1;
    end else begin
        linebuffer_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_d0 = linebuffer_V_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1))) begin
        linebuffer_V_d0 = tmp1_V_reg_806;
    end else begin
        linebuffer_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1)))) begin
        linebuffer_V_we0 = 1'b1;
    end else begin
        linebuffer_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_address0 = zext_ln203_fu_748_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_address0 = zext_ln192_fu_658_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_V_address0 = zext_ln192_4_fu_650_p1;
    end else begin
        output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_d0 = tmpinput_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_d0 = output_V_q0;
    end else begin
        output_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmpinput_V_address0 = zext_ln203_58_fu_743_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_address0 = zext_ln203_52_fu_511_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_address0 = zext_ln252_4_fu_356_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_address0 = tmp_130_fu_318_p3;
    end else begin
        tmpinput_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6))) begin
        tmpinput_V_ce0 = 1'b1;
    end else begin
        tmpinput_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_d0 = tmp_V_reg_822;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_d0 = data_V_q0;
    end else begin
        tmpinput_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1)))) begin
        tmpinput_V_we0 = 1'b1;
    end else begin
        tmpinput_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln246_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln250_fu_327_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_411_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_526_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_560_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_606_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_663_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_705_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln192_13_fu_627_p2 = (zext_ln192_18_fu_623_p1 + sub_ln192_reg_876);

assign add_ln192_14_fu_618_p2 = (zext_ln192_15_reg_858 + zext_ln191_fu_602_p1);

assign add_ln192_15_fu_632_p2 = (add_ln192_reg_863 + zext_ln191_fu_602_p1);

assign add_ln192_16_fu_641_p2 = (zext_ln192_19_fu_637_p1 + sub_ln192_reg_876);

assign add_ln192_fu_554_p2 = (8'd64 + zext_ln192_15_fu_550_p1);

assign add_ln203_26_fu_393_p2 = ($signed(zext_ln255_9_fu_375_p1) + $signed(12'd2176));

assign add_ln203_27_fu_399_p2 = (zext_ln203_48_reg_771 + add_ln203_26_fu_393_p2);

assign add_ln203_28_fu_506_p2 = (zext_ln203_49_reg_776 + zext_ln203_51_fu_502_p1);

assign add_ln203_29_fu_435_p2 = (zext_ln255_reg_811 + zext_ln203_53_fu_431_p1);

assign add_ln203_30_fu_448_p2 = (zext_ln203_47_reg_765 + tmp_138_cast_fu_440_p3);

assign add_ln203_31_fu_465_p2 = (zext_ln255_reg_811 + zext_ln203_55_fu_461_p1);

assign add_ln203_32_fu_478_p2 = (zext_ln203_47_reg_765 + tmp_141_cast_fu_470_p3);

assign add_ln203_33_fu_738_p2 = (zext_ln202_reg_913 + zext_ln203_57_fu_734_p1);

assign add_ln203_fu_729_p2 = (sub_ln203_reg_908 + zext_ln203_14_fu_725_p1);

assign add_ln252_fu_351_p2 = (zext_ln203_49_reg_776 + zext_ln252_fu_347_p1);

assign add_ln255_4_fu_383_p2 = (zext_ln203_49_reg_776 + zext_ln255_10_fu_379_p1);

assign add_ln255_fu_361_p2 = ($signed(i1_0_reg_211) + $signed(2'd3));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign data_V_address0 = zext_ln248_fu_301_p1;

assign i0_4_fu_532_p2 = (i0_0_i_reg_234 + 2'd1);

assign i0_fu_295_p2 = (i0_0_reg_199 + 7'd1);

assign i1_7_fu_566_p2 = (i1_0_i_reg_245 + 2'd1);

assign i1_8_fu_669_p2 = (i11_0_i_reg_267 + 2'd1);

assign i1_fu_516_p2 = (i1_0_reg_211 + 2'd1);

assign i2_7_fu_711_p2 = (i22_0_i_reg_278 + 7'd1);

assign i2_8_fu_612_p2 = (i2_0_i_reg_256 + 7'd1);

assign i2_fu_417_p2 = (i2_0_reg_223 + 5'd1);

assign icmp_ln188_fu_526_p2 = ((i0_0_i_reg_234 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln190_fu_560_p2 = ((i1_0_i_reg_245 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln191_fu_606_p2 = ((i2_0_i_reg_256 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln200_fu_663_p2 = ((i11_0_i_reg_267 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln202_fu_705_p2 = ((i22_0_i_reg_278 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln246_fu_289_p2 = ((i0_0_reg_199 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln250_fu_327_p2 = ((i1_0_reg_211 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln258_fu_411_p2 = ((i2_0_reg_223 == 5'd17) ? 1'b1 : 1'b0);

assign or_ln_fu_717_p3 = {{1'd1}, {i22_0_i_reg_278}};

assign sext_ln192_4_fu_646_p1 = $signed(add_ln192_16_fu_641_p2);

assign sext_ln192_fu_655_p1 = $signed(add_ln192_13_reg_890);

assign shl_ln192_5_fu_572_p3 = {{i1_0_i_reg_245}, {8'd0}};

assign shl_ln192_6_fu_584_p3 = {{i1_0_i_reg_245}, {6'd0}};

assign shl_ln203_3_fu_683_p3 = {{i11_0_i_reg_267}, {6'd0}};

assign shl_ln3_fu_675_p3 = {{i11_0_i_reg_267}, {8'd0}};

assign shl_ln_fu_542_p3 = {{trunc_ln192_fu_538_p1}, {6'd0}};

assign sub_ln192_fu_596_p2 = (zext_ln192_16_fu_580_p1 - zext_ln192_17_fu_592_p1);

assign sub_ln203_fu_695_p2 = (shl_ln3_fu_675_p3 - zext_ln203_13_fu_691_p1);

assign sub_ln265_fu_488_p2 = ($signed(2'd2) - $signed(i1_0_reg_211));

assign tmp_130_fu_318_p3 = {{57'd1}, {i0_0_reg_199}};

assign tmp_132_fu_339_p3 = {{xor_ln252_fu_333_p2}, {6'd0}};

assign tmp_133_fu_367_p3 = {{add_ln255_fu_361_p2}, {6'd0}};

assign tmp_135_fu_494_p3 = {{sub_ln265_fu_488_p2}, {6'd0}};

assign tmp_136_fu_423_p3 = {{i2_0_reg_223}, {1'd0}};

assign tmp_138_cast_fu_440_p3 = {{add_ln203_29_fu_435_p2}, {6'd0}};

assign tmp_139_fu_453_p3 = {{i2_fu_417_p2}, {1'd0}};

assign tmp_141_cast_fu_470_p3 = {{add_ln203_31_fu_465_p2}, {6'd0}};

assign trunc_ln192_fu_538_p1 = i0_0_i_reg_234[0:0];

assign xor_ln252_fu_333_p2 = (i1_0_reg_211 ^ 2'd3);

assign zext_ln191_fu_602_p1 = i2_0_i_reg_256;

assign zext_ln192_15_fu_550_p1 = shl_ln_fu_542_p3;

assign zext_ln192_16_fu_580_p1 = shl_ln192_5_fu_572_p3;

assign zext_ln192_17_fu_592_p1 = shl_ln192_6_fu_584_p3;

assign zext_ln192_18_fu_623_p1 = add_ln192_14_fu_618_p2;

assign zext_ln192_19_fu_637_p1 = add_ln192_15_fu_632_p2;

assign zext_ln192_4_fu_650_p1 = $unsigned(sext_ln192_4_fu_646_p1);

assign zext_ln192_fu_658_p1 = $unsigned(sext_ln192_fu_655_p1);

assign zext_ln202_fu_701_p1 = shl_ln203_3_fu_683_p3;

assign zext_ln203_13_fu_691_p1 = shl_ln203_3_fu_683_p3;

assign zext_ln203_14_fu_725_p1 = or_ln_fu_717_p3;

assign zext_ln203_47_fu_306_p1 = i0_0_reg_199;

assign zext_ln203_48_fu_310_p1 = i0_0_reg_199;

assign zext_ln203_49_fu_314_p1 = i0_0_reg_199;

assign zext_ln203_50_fu_407_p1 = add_ln203_27_reg_801;

assign zext_ln203_51_fu_502_p1 = tmp_135_fu_494_p3;

assign zext_ln203_52_fu_511_p1 = add_ln203_28_fu_506_p2;

assign zext_ln203_53_fu_431_p1 = tmp_136_fu_423_p3;

assign zext_ln203_54_fu_522_p1 = add_ln203_30_reg_835;

assign zext_ln203_55_fu_461_p1 = tmp_139_fu_453_p3;

assign zext_ln203_56_fu_483_p1 = add_ln203_32_fu_478_p2;

assign zext_ln203_57_fu_734_p1 = i22_0_i_reg_278;

assign zext_ln203_58_fu_743_p1 = add_ln203_33_fu_738_p2;

assign zext_ln203_fu_748_p1 = add_ln203_reg_926;

assign zext_ln248_fu_301_p1 = i0_0_reg_199;

assign zext_ln252_4_fu_356_p1 = add_ln252_fu_351_p2;

assign zext_ln252_fu_347_p1 = tmp_132_fu_339_p3;

assign zext_ln255_10_fu_379_p1 = tmp_133_fu_367_p3;

assign zext_ln255_11_fu_388_p1 = add_ln255_4_fu_383_p2;

assign zext_ln255_9_fu_375_p1 = tmp_133_fu_367_p3;

assign zext_ln255_fu_404_p1 = add_ln255_reg_791;

always @ (posedge ap_clk) begin
    zext_ln203_47_reg_765[12:7] <= 6'b000000;
    zext_ln203_48_reg_771[11:7] <= 5'b00000;
    zext_ln203_49_reg_776[8:7] <= 2'b00;
    zext_ln255_reg_811[6:2] <= 5'b00000;
    zext_ln192_15_reg_858[5:0] <= 6'b000000;
    zext_ln192_15_reg_858[7] <= 1'b0;
    add_ln192_reg_863[5:0] <= 6'b000000;
    sub_ln192_reg_876[5:0] <= 6'b000000;
    sub_ln203_reg_908[5:0] <= 6'b000000;
    zext_ln202_reg_913[5:0] <= 6'b000000;
    zext_ln202_reg_913[8] <= 1'b0;
end

endmodule //cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config12_s
