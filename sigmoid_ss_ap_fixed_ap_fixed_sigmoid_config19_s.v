// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module sigmoid_ss_ap_fixed_ap_fixed_sigmoid_config19_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        data_V_V_dout,
        data_V_V_empty_n,
        data_V_V_read,
        res_V_V_TDATA,
        res_V_V_TVALID,
        res_V_V_TREADY
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state7 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] data_V_V_dout;
input   data_V_V_empty_n;
output   data_V_V_read;
output  [15:0] res_V_V_TDATA;
output   res_V_V_TVALID;
input   res_V_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] sigmoid_table1_address0;
reg    sigmoid_table1_ce0;
wire   [9:0] sigmoid_table1_q0;
reg    data_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln158_reg_264;
reg    res_V_V_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter3;
reg   [0:0] icmp_ln158_reg_264_pp0_iter2_reg;
reg    ap_enable_reg_pp0_iter4;
reg   [0:0] icmp_ln158_reg_264_pp0_iter3_reg;
reg   [2:0] i_0_reg_124;
wire   [0:0] icmp_ln158_fu_135_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
reg    ap_block_state5_io;
wire    ap_block_state6_pp0_stage0_iter4;
reg    ap_block_state6_io;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln158_reg_264_pp0_iter1_reg;
wire   [2:0] i_fu_141_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [9:0] select_ln167_fu_239_p3;
reg   [9:0] select_ln167_reg_273;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
wire   [63:0] zext_ln168_fu_247_p1;
reg    ap_block_pp0_stage0_01001;
wire   [9:0] tmp_s_fu_155_p4;
wire   [25:0] r_V_fu_147_p3;
wire   [5:0] trunc_ln851_fu_175_p1;
wire   [11:0] p_Result_2_fu_179_p3;
wire  signed [10:0] sext_ln835_fu_165_p1;
wire   [0:0] icmp_ln851_fu_187_p2;
wire   [10:0] ret_V_fu_193_p2;
wire   [0:0] p_Result_s_fu_169_p2;
wire   [10:0] select_ln851_fu_199_p3;
wire   [10:0] select_ln850_fu_207_p3;
wire   [9:0] trunc_ln165_fu_215_p1;
wire   [10:0] index_fu_219_p2;
wire   [0:0] tmp_1_fu_231_p3;
wire   [9:0] xor_ln165_fu_225_p2;
wire   [11:0] out_data_V_fu_251_p3;
wire    ap_CS_fsm_state7;
wire    regslice_both_res_V_V_U_apdone_blk;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [15:0] res_V_V_TDATA_int;
reg    res_V_V_TVALID_int;
wire    res_V_V_TREADY_int;
wire    regslice_both_res_V_V_U_vld_out;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

sigmoid_ss_ap_fixed_ap_fixed_sigmoid_config19_s_sigmoid_tyd2 #(
    .DataWidth( 10 ),
    .AddressRange( 1024 ),
    .AddressWidth( 10 ))
sigmoid_table1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(sigmoid_table1_address0),
    .ce0(sigmoid_table1_ce0),
    .q0(sigmoid_table1_q0)
);

regslice_both #(
    .DataWidth( 16 ))
regslice_both_res_V_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(res_V_V_TDATA_int),
    .vld_in(res_V_V_TVALID_int),
    .ack_in(res_V_V_TREADY_int),
    .data_out(res_V_V_TDATA),
    .vld_out(regslice_both_res_V_V_U_vld_out),
    .ack_out(res_V_V_TREADY),
    .apdone_blk(regslice_both_res_V_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((regslice_both_res_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln158_fu_135_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        i_0_reg_124 <= i_fu_141_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_124 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln158_reg_264 <= icmp_ln158_fu_135_p2;
        icmp_ln158_reg_264_pp0_iter1_reg <= icmp_ln158_reg_264;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln158_reg_264_pp0_iter2_reg <= icmp_ln158_reg_264_pp0_iter1_reg;
        icmp_ln158_reg_264_pp0_iter3_reg <= icmp_ln158_reg_264_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln158_reg_264 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln167_reg_273 <= select_ln167_fu_239_p3;
    end
end

always @ (*) begin
    if ((icmp_ln158_fu_135_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_res_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((regslice_both_res_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln158_reg_264 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_V_V_blk_n = data_V_V_empty_n;
    end else begin
        data_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln158_reg_264 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        data_V_V_read = 1'b1;
    end else begin
        data_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln158_reg_264_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((icmp_ln158_reg_264_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        res_V_V_TDATA_blk_n = res_V_V_TREADY_int;
    end else begin
        res_V_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln158_reg_264_pp0_iter2_reg == 1'd0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        res_V_V_TVALID_int = 1'b1;
    end else begin
        res_V_V_TVALID_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sigmoid_table1_ce0 = 1'b1;
    end else begin
        sigmoid_table1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln158_fu_135_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & ~((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((icmp_ln158_fu_135_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((regslice_both_res_V_V_U_apdone_blk == 1'b0) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln158_reg_264 == 1'd0) & (data_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state6_io) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln158_reg_264 == 1'd0) & (data_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state6_io) & (ap_enable_reg_pp0_iter4 == 1'b1)) | ((1'b1 == ap_block_state5_io) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((icmp_ln158_reg_264 == 1'd0) & (data_V_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((icmp_ln158_reg_264 == 1'd0) & (data_V_V_empty_n == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5_io = ((icmp_ln158_reg_264_pp0_iter2_reg == 1'd0) & (res_V_V_TREADY_int == 1'b0));
end

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state6_io = ((icmp_ln158_reg_264_pp0_iter3_reg == 1'd0) & (res_V_V_TREADY_int == 1'b0));
end

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_141_p2 = (i_0_reg_124 + 3'd1);

assign icmp_ln158_fu_135_p2 = ((i_0_reg_124 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln851_fu_187_p2 = ((p_Result_2_fu_179_p3 == 12'd0) ? 1'b1 : 1'b0);

assign index_fu_219_p2 = (11'd512 + select_ln850_fu_207_p3);

assign out_data_V_fu_251_p3 = {{sigmoid_table1_q0}, {2'd0}};

assign p_Result_2_fu_179_p3 = {{trunc_ln851_fu_175_p1}, {6'd0}};

assign p_Result_s_fu_169_p2 = (($signed(r_V_fu_147_p3) < $signed(26'd67108849)) ? 1'b1 : 1'b0);

assign r_V_fu_147_p3 = {{data_V_V_dout}, {10'd0}};

assign res_V_V_TDATA_int = out_data_V_fu_251_p3;

assign res_V_V_TVALID = regslice_both_res_V_V_U_vld_out;

assign ret_V_fu_193_p2 = ($signed(11'd1) + $signed(sext_ln835_fu_165_p1));

assign select_ln167_fu_239_p3 = ((tmp_1_fu_231_p3[0:0] === 1'b1) ? 10'd1023 : xor_ln165_fu_225_p2);

assign select_ln850_fu_207_p3 = ((p_Result_s_fu_169_p2[0:0] === 1'b1) ? select_ln851_fu_199_p3 : sext_ln835_fu_165_p1);

assign select_ln851_fu_199_p3 = ((icmp_ln851_fu_187_p2[0:0] === 1'b1) ? sext_ln835_fu_165_p1 : ret_V_fu_193_p2);

assign sext_ln835_fu_165_p1 = $signed(tmp_s_fu_155_p4);

assign sigmoid_table1_address0 = zext_ln168_fu_247_p1;

assign tmp_1_fu_231_p3 = index_fu_219_p2[32'd10];

assign tmp_s_fu_155_p4 = {{data_V_V_dout[15:6]}};

assign trunc_ln165_fu_215_p1 = select_ln850_fu_207_p3[9:0];

assign trunc_ln851_fu_175_p1 = data_V_V_dout[5:0];

assign xor_ln165_fu_225_p2 = (trunc_ln165_fu_215_p1 ^ 10'd512);

assign zext_ln168_fu_247_p1 = select_ln167_reg_273;

endmodule //sigmoid_ss_ap_fixed_ap_fixed_sigmoid_config19_s
