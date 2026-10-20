module counter4 (clk,
    en,
    load,
    overflow,
    rst_n,
    d,
    q);
 input clk;
 input en;
 input load;
 output overflow;
 input rst_n;
 input [3:0] d;
 output [3:0] q;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__inv_2 _19_ (.A(net6),
    .Y(_05_));
 sky130_fd_sc_hd__and4_1 _20_ (.A(net12),
    .B(net11),
    .C(net10),
    .D(net9),
    .X(_06_));
 sky130_fd_sc_hd__and4_1 _21_ (.A(_05_),
    .B(net5),
    .C(net7),
    .D(_06_),
    .X(_00_));
 sky130_fd_sc_hd__nand2_1 _22_ (.A(net9),
    .B(net5),
    .Y(_07_));
 sky130_fd_sc_hd__or2_1 _23_ (.A(net9),
    .B(net5),
    .X(_08_));
 sky130_fd_sc_hd__a21o_1 _24_ (.A1(_07_),
    .A2(_08_),
    .B1(net6),
    .X(_09_));
 sky130_fd_sc_hd__o211a_1 _25_ (.A1(_05_),
    .A2(net1),
    .B1(_09_),
    .C1(net7),
    .X(_01_));
 sky130_fd_sc_hd__a21oi_1 _26_ (.A1(net9),
    .A2(net5),
    .B1(net10),
    .Y(_10_));
 sky130_fd_sc_hd__and3_1 _27_ (.A(net10),
    .B(net9),
    .C(net5),
    .X(_11_));
 sky130_fd_sc_hd__o21ai_1 _28_ (.A1(_10_),
    .A2(_11_),
    .B1(_05_),
    .Y(_12_));
 sky130_fd_sc_hd__o211a_1 _29_ (.A1(_05_),
    .A2(net2),
    .B1(_12_),
    .C1(net7),
    .X(_02_));
 sky130_fd_sc_hd__xnor2_1 _30_ (.A(net11),
    .B(_11_),
    .Y(_13_));
 sky130_fd_sc_hd__o21ai_1 _31_ (.A1(_05_),
    .A2(net3),
    .B1(net7),
    .Y(_14_));
 sky130_fd_sc_hd__a21oi_1 _32_ (.A1(_05_),
    .A2(_13_),
    .B1(_14_),
    .Y(_03_));
 sky130_fd_sc_hd__a31o_1 _33_ (.A1(net11),
    .A2(net10),
    .A3(net9),
    .B1(net12),
    .X(_15_));
 sky130_fd_sc_hd__and4bb_1 _34_ (.A_N(net6),
    .B_N(_06_),
    .C(_15_),
    .D(net5),
    .X(_16_));
 sky130_fd_sc_hd__or3b_1 _35_ (.A(net6),
    .B(net5),
    .C_N(net12),
    .X(_17_));
 sky130_fd_sc_hd__a21bo_1 _36_ (.A1(net6),
    .A2(net4),
    .B1_N(_17_),
    .X(_18_));
 sky130_fd_sc_hd__o21a_1 _37_ (.A1(_16_),
    .A2(_18_),
    .B1(net7),
    .X(_04_));
 sky130_fd_sc_hd__dfxtp_1 _38_ (.CLK(clknet_1_1__leaf_clk),
    .D(_00_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _39_ (.CLK(clknet_1_1__leaf_clk),
    .D(_01_),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_1 _40_ (.CLK(clknet_1_1__leaf_clk),
    .D(_02_),
    .Q(net10));
 sky130_fd_sc_hd__dfxtp_1 _41_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .Q(net11));
 sky130_fd_sc_hd__dfxtp_1 _42_ (.CLK(clknet_1_0__leaf_clk),
    .D(_04_),
    .Q(net12));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_19 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_20 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_21 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_22 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_23 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_31 ();
 sky130_fd_sc_hd__clkbuf_1 input1 (.A(d[0]),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_1 input2 (.A(d[1]),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 input3 (.A(d[2]),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 input4 (.A(d[3]),
    .X(net4));
 sky130_fd_sc_hd__dlymetal6s2s_1 input5 (.A(en),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(load),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(rst_n),
    .X(net7));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(overflow));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(q[0]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(q[1]));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(q[2]));
 sky130_fd_sc_hd__buf_2 output12 (.A(net12),
    .X(q[3]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload0 (.A(clknet_1_0__leaf_clk));
 sky130_ef_sc_hd__decap_12 FILLER_0_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_34 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_53 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_7 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_22 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_28 ();
 sky130_ef_sc_hd__decap_12 FILLER_1_40 ();
 sky130_fd_sc_hd__decap_4 FILLER_1_52 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_2_19 ();
 sky130_fd_sc_hd__fill_1 FILLER_2_23 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_3_19 ();
 sky130_ef_sc_hd__decap_12 FILLER_3_37 ();
 sky130_fd_sc_hd__decap_6 FILLER_3_49 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_4_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_4_36 ();
 sky130_fd_sc_hd__decap_6 FILLER_4_48 ();
 sky130_fd_sc_hd__decap_8 FILLER_5_43 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_19 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_36 ();
 sky130_fd_sc_hd__decap_4 FILLER_7_35 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_39 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_57 ();
 sky130_ef_sc_hd__decap_12 FILLER_8_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_18 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_23 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_8_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_56 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_6 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_26 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_9_34 ();
 sky130_fd_sc_hd__decap_8 FILLER_9_46 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_54 ();
 sky130_fd_sc_hd__fill_1 FILLER_9_57 ();
endmodule
