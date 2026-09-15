// Fusion Compiler Version V-2023.12-SP4 Verilog Writer
// Generated on 8/12/2025 at 16:51:54
// Library Name: Router_mini.dlib
// Block Name: router_top
// User Label: 
// Write Command: write_verilog logical_gln.v
module router_fifo_0 ( router_clock , resetn , soft_reset , write_enb , 
    read_enb , lfd_state , data_in , data_out , empty , full ) ;
input  router_clock ;
input  resetn ;
input  soft_reset ;
input  write_enb ;
input  read_enb ;
input  lfd_state ;
input  [7:0] data_in ;
output [7:0] data_out ;
output empty ;
output full ;

wire [4:0] write_ptr ;
wire [4:0] read_ptr ;
wire [8:0] \memory[15] ;
wire [8:0] \memory[14] ;
wire [8:0] \memory[13] ;
wire [8:0] \memory[12] ;
wire [8:0] \memory[11] ;
wire [8:0] \memory[10] ;
wire [8:0] \memory[9] ;
wire [8:0] \memory[8] ;
wire [8:0] \memory[7] ;
wire [8:0] \memory[6] ;
wire [8:0] \memory[5] ;
wire [8:0] \memory[4] ;
wire [8:0] \memory[3] ;
wire [8:0] \memory[2] ;
wire [8:0] \memory[1] ;
wire [8:0] \memory[0] ;
wire [6:0] count ;

AO22X1_HVT ctmi_1699 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1781 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1784 ) , .Y ( N65 ) ) ;
SDFFX1_RVT \write_ptr_reg[4] ( .D ( N42 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_write_ptr_reg ) , .Q ( write_ptr[4] ) , 
    .QN ( ctmn_1729 ) ) ;
AO22X1_HVT ctmi_1712 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1792 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1793 ) , .Y ( N67 ) ) ;
OR2X1_RVT A1197 ( .A1 ( read_ptr[2] ) , .A2 ( ctmn_1733 ) , .Y ( ctmn_201 ) ) ;
SDFFX1_RVT \memory_reg[15][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [6] ) ) ;
SDFFX1_RVT \memory_reg[15][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [5] ) ) ;
SDFFX1_RVT \memory_reg[15][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [4] ) ) ;
SDFFX1_RVT \memory_reg[15][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [3] ) ) ;
SDFFX1_RVT \memory_reg[15][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [2] ) ) ;
SDFFX1_RVT \memory_reg[15][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [1] ) ) ;
SDFFX1_RVT \memory_reg[15][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [0] ) ) ;
SDFFX1_RVT \memory_reg[14][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [8] ) ) ;
SDFFX1_RVT \memory_reg[14][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [7] ) ) ;
SDFFX1_RVT \memory_reg[14][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [6] ) ) ;
SDFFX1_RVT \memory_reg[14][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [5] ) ) ;
SDFFX1_RVT \memory_reg[14][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [4] ) ) ;
SDFFX1_RVT \memory_reg[14][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [3] ) ) ;
SDFFX1_RVT \memory_reg[14][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [2] ) ) ;
SDFFX1_RVT \memory_reg[14][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [1] ) ) ;
SDFFX1_RVT \memory_reg[14][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [0] ) ) ;
SDFFX1_RVT \memory_reg[13][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [8] ) ) ;
SDFFX1_RVT \memory_reg[13][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [7] ) ) ;
SDFFX1_RVT \memory_reg[13][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [6] ) ) ;
SDFFX1_RVT \memory_reg[13][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [5] ) ) ;
SDFFX1_RVT \memory_reg[13][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [4] ) ) ;
SDFFX1_RVT \memory_reg[13][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [3] ) ) ;
SDFFX1_RVT \memory_reg[13][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [2] ) ) ;
SDFFX1_RVT \memory_reg[13][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [1] ) ) ;
SDFFX1_RVT \memory_reg[13][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [0] ) ) ;
SDFFX1_RVT \memory_reg[12][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [8] ) ) ;
SDFFX1_RVT \memory_reg[12][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [7] ) ) ;
SDFFX1_RVT \memory_reg[12][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [6] ) ) ;
SDFFX1_RVT \memory_reg[12][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [5] ) ) ;
SDFFX1_RVT \memory_reg[12][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [4] ) ) ;
SDFFX1_RVT \memory_reg[12][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [3] ) ) ;
SDFFX1_RVT \memory_reg[12][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [2] ) ) ;
SDFFX1_RVT \memory_reg[12][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [1] ) ) ;
SDFFX1_RVT \memory_reg[12][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [0] ) ) ;
SDFFX1_RVT \memory_reg[11][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [8] ) ) ;
SDFFX1_RVT \memory_reg[11][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [7] ) ) ;
SDFFX1_RVT \memory_reg[11][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [6] ) ) ;
SDFFX1_RVT \memory_reg[11][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [5] ) ) ;
SDFFX1_RVT \memory_reg[11][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [4] ) ) ;
SDFFX1_RVT \memory_reg[11][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [3] ) ) ;
SDFFX1_RVT \memory_reg[11][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [2] ) ) ;
SDFFX1_RVT \memory_reg[11][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [1] ) ) ;
SDFFX1_RVT \memory_reg[11][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [0] ) ) ;
SDFFX1_RVT \memory_reg[10][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [8] ) ) ;
SDFFX1_RVT \memory_reg[10][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [7] ) ) ;
SDFFX1_RVT \memory_reg[10][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [6] ) ) ;
SDFFX1_RVT \memory_reg[10][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [5] ) ) ;
SDFFX1_RVT \memory_reg[10][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [4] ) ) ;
SDFFX1_RVT \memory_reg[10][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [3] ) ) ;
SDFFX1_RVT \memory_reg[10][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [2] ) ) ;
SDFFX1_RVT \memory_reg[10][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [1] ) ) ;
SDFFX1_RVT \memory_reg[10][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [0] ) ) ;
SDFFX1_RVT \memory_reg[9][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [8] ) ) ;
SDFFX1_RVT \memory_reg[9][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [7] ) ) ;
SDFFX1_RVT \memory_reg[9][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [6] ) ) ;
SDFFX1_RVT \memory_reg[9][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [5] ) ) ;
SDFFX1_RVT \memory_reg[9][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [4] ) ) ;
SDFFX1_RVT \memory_reg[9][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [3] ) ) ;
SDFFX1_RVT \memory_reg[9][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [2] ) ) ;
SDFFX1_RVT \memory_reg[9][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [1] ) ) ;
SDFFX1_RVT \memory_reg[9][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [0] ) ) ;
SDFFX1_RVT \memory_reg[8][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [8] ) ) ;
SDFFX1_RVT \memory_reg[8][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [7] ) ) ;
SDFFX1_RVT \memory_reg[8][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [6] ) ) ;
SDFFX1_RVT \memory_reg[8][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [5] ) ) ;
SDFFX1_RVT \memory_reg[8][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [4] ) ) ;
SDFFX1_RVT \memory_reg[8][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [3] ) ) ;
SDFFX1_RVT \memory_reg[8][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [2] ) ) ;
SDFFX1_RVT \memory_reg[8][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [1] ) ) ;
SDFFX1_RVT \memory_reg[8][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [0] ) ) ;
SDFFX1_RVT \memory_reg[7][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [8] ) ) ;
SDFFX1_RVT \memory_reg[7][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [7] ) ) ;
SDFFX1_RVT \memory_reg[7][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [6] ) ) ;
SDFFX1_RVT \memory_reg[7][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [5] ) ) ;
SDFFX1_RVT \memory_reg[7][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [4] ) ) ;
SDFFX1_RVT \memory_reg[7][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [3] ) ) ;
SDFFX1_RVT \memory_reg[7][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [2] ) ) ;
SDFFX1_RVT \memory_reg[7][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [1] ) ) ;
SDFFX1_RVT \memory_reg[7][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [0] ) ) ;
SDFFX1_RVT \memory_reg[6][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [8] ) ) ;
SDFFX1_RVT \memory_reg[6][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [7] ) ) ;
SDFFX1_RVT \memory_reg[6][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [6] ) ) ;
SDFFX1_RVT \memory_reg[6][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [5] ) ) ;
SDFFX1_RVT \memory_reg[6][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [4] ) ) ;
SDFFX1_RVT \memory_reg[6][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [3] ) ) ;
SDFFX1_RVT \memory_reg[6][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [2] ) ) ;
SDFFX1_RVT \memory_reg[6][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [1] ) ) ;
SDFFX1_RVT \memory_reg[6][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [0] ) ) ;
SDFFX1_RVT \memory_reg[5][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [8] ) ) ;
SDFFX1_RVT \memory_reg[5][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [7] ) ) ;
SDFFX1_RVT \memory_reg[5][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [6] ) ) ;
SDFFX1_RVT \memory_reg[5][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [5] ) ) ;
SDFFX1_RVT \memory_reg[5][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [4] ) ) ;
SDFFX1_RVT \memory_reg[5][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [3] ) ) ;
SDFFX1_RVT \memory_reg[5][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [2] ) ) ;
SDFFX1_RVT \memory_reg[5][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [1] ) ) ;
SDFFX1_RVT \memory_reg[5][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [0] ) ) ;
SDFFX1_RVT \memory_reg[4][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [8] ) ) ;
SDFFX1_RVT \memory_reg[4][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [7] ) ) ;
SDFFX1_RVT \memory_reg[4][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [6] ) ) ;
SDFFX1_RVT \memory_reg[4][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [5] ) ) ;
SDFFX1_RVT \memory_reg[4][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [4] ) ) ;
SDFFX1_RVT \memory_reg[4][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [3] ) ) ;
SDFFX1_RVT \memory_reg[4][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [2] ) ) ;
SDFFX1_RVT \memory_reg[4][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [1] ) ) ;
SDFFX1_RVT \memory_reg[4][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [0] ) ) ;
SDFFX1_RVT \memory_reg[3][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [8] ) ) ;
SDFFX1_RVT \memory_reg[3][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [7] ) ) ;
SDFFX1_RVT \memory_reg[3][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [6] ) ) ;
SDFFX1_RVT \memory_reg[3][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [5] ) ) ;
SDFFX1_RVT \memory_reg[3][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [4] ) ) ;
SDFFX1_RVT \memory_reg[3][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [3] ) ) ;
SDFFX1_RVT \memory_reg[3][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [2] ) ) ;
SDFFX1_RVT \memory_reg[3][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [1] ) ) ;
SDFFX1_RVT \memory_reg[3][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [0] ) ) ;
SDFFX1_RVT \memory_reg[2][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [8] ) ) ;
SDFFX1_RVT \memory_reg[2][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [7] ) ) ;
SDFFX1_RVT \memory_reg[2][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [6] ) ) ;
SDFFX1_RVT \memory_reg[2][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [5] ) ) ;
SDFFX1_RVT \memory_reg[2][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [4] ) ) ;
SDFFX1_RVT \memory_reg[2][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [3] ) ) ;
SDFFX1_RVT \memory_reg[2][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [2] ) ) ;
SDFFX1_RVT \memory_reg[2][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [1] ) ) ;
SDFFX1_RVT \memory_reg[2][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [0] ) ) ;
SDFFX1_RVT \memory_reg[1][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [8] ) ) ;
SDFFX1_RVT \memory_reg[1][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [7] ) ) ;
SDFFX1_RVT \memory_reg[1][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [6] ) ) ;
SDFFX1_RVT \memory_reg[1][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [5] ) ) ;
SDFFX1_RVT \memory_reg[1][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [4] ) ) ;
SDFFX1_RVT \memory_reg[1][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [3] ) ) ;
SDFFX1_RVT \memory_reg[1][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [2] ) ) ;
SDFFX1_RVT \memory_reg[1][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [1] ) ) ;
SDFFX1_RVT \memory_reg[1][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [0] ) ) ;
SDFFX1_RVT \memory_reg[0][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [8] ) ) ;
SDFFX1_RVT \memory_reg[0][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [7] ) ) ;
SDFFX1_RVT \memory_reg[0][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [6] ) ) ;
SDFFX1_RVT \memory_reg[0][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [5] ) ) ;
SDFFX1_RVT \memory_reg[0][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [4] ) ) ;
SDFFX1_RVT \memory_reg[0][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [3] ) ) ;
SDFFX1_RVT \memory_reg[0][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [2] ) ) ;
SDFFX1_RVT \memory_reg[0][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [1] ) ) ;
SDFFX1_RVT \memory_reg[0][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg ) , .Q ( \memory[0] [0] ) ) ;
INVX1_RVT phfnr_buf_1112 ( .A ( ctmn_1766 ) , .Y ( phfnn_342 ) ) ;
AO22X1_HVT ctmi_1705 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1787 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1790 ) , .Y ( N66 ) ) ;
SDFFX1_RVT \write_ptr_reg[2] ( .D ( N44 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_write_ptr_reg ) , .Q ( write_ptr[2] ) , 
    .QN ( ctmn_1733 ) ) ;
SDFFX1_RVT \write_ptr_reg[1] ( .D ( N45 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_write_ptr_reg ) , .Q ( write_ptr[1] ) , 
    .QN ( ctmn_1734 ) ) ;
SDFFSSRX1_RVT \data_out_reg[7] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( phfnn_351 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[7] ) ) ;
SDFFSSRX1_RVT \data_out_reg[6] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1679 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[6] ) ) ;
SDFFX1_RVT \write_ptr_reg[0] ( .D ( N46 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_write_ptr_reg ) , .Q ( write_ptr[0] ) ) ;
SDFFSSRX1_RVT \data_out_reg[5] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1687 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[5] ) ) ;
SDFFSSRX1_RVT \data_out_reg[4] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1695 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[4] ) ) ;
SDFFSSRX1_RVT \data_out_reg[3] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1703 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[3] ) ) ;
SDFFSSRX1_RVT \data_out_reg[2] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( phfnn_352 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[2] ) ) ;
SDFFX1_RVT \read_ptr_reg[4] ( .D ( N57 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_read_ptr_reg ) , .Q ( read_ptr[4] ) , 
    .QN ( ctmn_1728 ) ) ;
SDFFX1_RVT \data_out_reg[0] ( .D ( N55 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[0] ) ) ;
SDFFX1_RVT \read_ptr_reg[3] ( .D ( N58 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_read_ptr_reg ) , .Q ( read_ptr[3] ) , 
    .QN ( ctmn_1634 ) ) ;
SDFFX1_RVT \data_out_reg[1] ( .D ( N54 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_data_out_reg ) , .Q ( data_out[1] ) ) ;
SDFFX1_RVT \read_ptr_reg[2] ( .D ( N59 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_read_ptr_reg ) , .Q ( read_ptr[2] ) , 
    .QN ( ctmn_1631 ) ) ;
SDFFX1_RVT \read_ptr_reg[1] ( .D ( N60 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_read_ptr_reg ) , .Q ( read_ptr[1] ) , 
    .QN ( ctmn_1632 ) ) ;
SDFFSSRX1_RVT \read_ptr_reg[0] ( .RSTB ( 1'b1 ) , .SETB ( ctmn_1633 ) , 
    .D ( ctmn_1669 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_read_ptr_reg ) , .Q ( ctmn_1633 ) , 
    .QN ( read_ptr[0] ) ) ;
SDFFX1_RVT \count_reg[0] ( .D ( N69 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[0] ) , 
    .QN ( ctmn_1796 ) ) ;
SDFFX1_RVT \count_reg[5] ( .D ( N64 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[5] ) ) ;
SDFFX1_RVT \count_reg[4] ( .D ( N65 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[4] ) ) ;
SDFFX1_RVT \count_reg[3] ( .D ( N66 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[3] ) ) ;
SDFFX1_RVT \count_reg[2] ( .D ( N67 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[2] ) ) ;
SDFFX1_RVT \count_reg[1] ( .D ( N68 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[1] ) ) ;
SDFFX1_RVT lfd_state_d1_reg ( .D ( ls_69 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32 ) , .Q ( lfd_state_d1 ) ) ;
SDFFX1_RVT \count_reg[6] ( .D ( N63 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_count_reg ) , .Q ( count[6] ) ) ;
SDFFX1_RVT \write_ptr_reg[3] ( .D ( N43 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_write_ptr_reg ) , .Q ( write_ptr[3] ) , 
    .QN ( ctmn_1731 ) ) ;
AND2X2_RVT ctmi_1631 ( .A1 ( phfnn_347 ) , .A2 ( lfd_state_d1 ) , .Y ( N2 ) ) ;
AO221X1_HVT ctmi_1621 ( .A1 ( phfnn_349 ) , .A2 ( ctmn_1748 ) , 
    .A3 ( phfnn_349 ) , .A4 ( ctmn_1665 ) , .A5 ( ctmn_1669 ) , .Y ( N62 ) ) ;
INVX1_RVT phfnr_buf_1119 ( .A ( ctmn_1739 ) , .Y ( phfnn_349 ) ) ;
OAI22X1_HVT ctmi_1722 ( .A1 ( ctmn_1798 ) , .A2 ( ctmn_1757 ) , 
    .A3 ( ctmn_1729 ) , .A4 ( ctmn_1760 ) , .Y ( N42 ) ) ;
NAND2X0_RVT ctmi_1723 ( .A1 ( ctmn_1760 ) , .A2 ( ctmn_1729 ) , 
    .Y ( ctmn_1798 ) ) ;
AOI22X1_HVT ctmi_1724 ( .A1 ( write_ptr[2] ) , .A2 ( ctmn_1759 ) , 
    .A3 ( ctmn_1733 ) , .A4 ( ctmn_1757 ) , .Y ( N44 ) ) ;
AO21X1_HVT ctmi_1700 ( .A1 ( count[4] ) , .A2 ( phfnn_346 ) , 
    .A3 ( ctmn_1780 ) , .Y ( ctmn_1781 ) ) ;
INVX0_RVT phfnr_buf_1113 ( .A ( ctmn_1785 ) , .Y ( phfnn_343 ) ) ;
OA21X1_HVT ctmi_1702 ( .A1 ( phfnn_356 ) , .A2 ( ctmn_1679 ) , 
    .A3 ( ctmn_1771 ) , .Y ( ctmn_1784 ) ) ;
NOR4X1_RVT ctmi_1393 ( .A1 ( ctmn_431 ) , .A2 ( ctmn_1653 ) , 
    .A3 ( ctmn_1658 ) , .A4 ( ctmn_1640 ) , .Y ( ctmn_1778 ) ) ;
INVX0_RVT phfnr_buf_1126 ( .A ( N165 ) , .Y ( phfnn_356 ) ) ;
AO221X1_HVT ctmi_1706 ( .A1 ( count[3] ) , .A2 ( ctmn_1785 ) , 
    .A3 ( count[3] ) , .A4 ( count[2] ) , .A5 ( ctmn_1786 ) , 
    .Y ( ctmn_1787 ) ) ;
OR2X1_HVT ctmi_1707 ( .A1 ( count[0] ) , .A2 ( count[1] ) , .Y ( ctmn_1785 ) ) ;
AO22X1_HVT ctmi_1394 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [7] ) , 
    .A3 ( \memory[6] [7] ) , .A4 ( ctmn_1641 ) , .Y ( ctmn_431 ) ) ;
OA21X1_HVT ctmi_1709 ( .A1 ( phfnn_354 ) , .A2 ( ctmn_1687 ) , .A3 ( N165 ) , 
    .Y ( ctmn_1790 ) ) ;
NAND3X0_RVT ctmi_1710 ( .A1 ( ctmn_1695 ) , .A2 ( ctmn_1703 ) , 
    .A3 ( phfnn_352 ) , .Y ( ctmn_1788 ) ) ;
INVX0_RVT phfnr_buf_1124 ( .A ( ctmn_1788 ) , .Y ( phfnn_354 ) ) ;
MUX21X1_RVT ctmi_1713 ( .A1 ( phfnn_343 ) , .A2 ( ctmn_1785 ) , 
    .S0 ( count[2] ) , .Y ( ctmn_1792 ) ) ;
INVX2_RVT phfnr_buf_1115 ( .A ( ctmn_1638 ) , .Y ( phfnn_345 ) ) ;
OA21X1_HVT ctmi_1715 ( .A1 ( phfnn_353 ) , .A2 ( ctmn_1695 ) , 
    .A3 ( ctmn_1788 ) , .Y ( ctmn_1793 ) ) ;
AO22X1_HVT ctmi_1716 ( .A1 ( ctmn_1794 ) , .A2 ( ctmn_1769 ) , 
    .A3 ( ctmn_1795 ) , .A4 ( ctmn_1775 ) , .Y ( N68 ) ) ;
OA21X1_HVT ctmi_1717 ( .A1 ( ctmn_1703 ) , .A2 ( phfnn_352 ) , 
    .A3 ( ctmn_1767 ) , .Y ( ctmn_1794 ) ) ;
OA22X1_RVT A1349 ( .A1 ( read_ptr[1] ) , .A2 ( ctmn_1734 ) , 
    .A3 ( ctmn_1731 ) , .A4 ( read_ptr[3] ) , .Y ( N376 ) ) ;
AO21X1_HVT ctmi_1718 ( .A1 ( count[0] ) , .A2 ( count[1] ) , 
    .A3 ( phfnn_343 ) , .Y ( ctmn_1795 ) ) ;
AO22X1_HVT ctmi_1719 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1796 ) , 
    .A3 ( ctmn_1797 ) , .A4 ( ctmn_1767 ) , .Y ( N69 ) ) ;
OA222X1_RVT A1182 ( .A1 ( read_ptr[3] ) , .A2 ( ctmn_1731 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( ctmn_1734 ) , .A5 ( ctmn_1631 ) , 
    .A6 ( write_ptr[2] ) , .Y ( N369 ) ) ;
INVX1_RVT phfnr_buf_1116 ( .A ( ctmn_1786 ) , .Y ( phfnn_346 ) ) ;
AO221X1_HVT ctmi_1405 ( .A1 ( ctmn_1725 ) , .A2 ( ctmn_1725 ) , 
    .A3 ( ctmn_1654 ) , .A4 ( \memory[14] [0] ) , .A5 ( ctmn_1726 ) , 
    .Y ( ctmn_1727 ) ) ;
AND2X1_LVT A1183 ( .A1 ( N372 ) , .A2 ( ctmn_200 ) , .Y ( empty ) ) ;
OA222X1_LVT A1280 ( .A1 ( write_ptr[0] ) , .A2 ( ctmn_1633 ) , 
    .A3 ( write_ptr[1] ) , .A4 ( ctmn_1632 ) , .A5 ( write_ptr[3] ) , 
    .A6 ( ctmn_1634 ) , .Y ( N378 ) ) ;
INVX1_RVT phfnr_buf_1122 ( .A ( ctmn_1797 ) , .Y ( phfnn_352 ) ) ;
OA21X1_HVT ctmi_1589 ( .A1 ( ctmn_1715 ) , .A2 ( ctmn_1719 ) , 
    .A3 ( ctmn_1671 ) , .Y ( N54 ) ) ;
OA21X1_HVT ctmi_1598 ( .A1 ( ctmn_1723 ) , .A2 ( ctmn_1727 ) , 
    .A3 ( ctmn_1671 ) , .Y ( N55 ) ) ;
AO221X1_RVT ctmi_1599 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [0] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [0] ) , .A5 ( ctmn_1722 ) , 
    .Y ( ctmn_1723 ) ) ;
AO221X1_HVT ctmi_1600 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [0] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [0] ) , .A5 ( ctmn_1721 ) , 
    .Y ( ctmn_1722 ) ) ;
AO221X1_HVT ctmi_1601 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [0] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [0] ) , .A5 ( ctmn_1720 ) , 
    .Y ( ctmn_1721 ) ) ;
AO22X1_HVT ctmi_1602 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [0] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [0] ) , .Y ( ctmn_1720 ) ) ;
AO221X1_HVT ctmi_1406 ( .A1 ( ctmn_1717 ) , .A2 ( ctmn_1717 ) , 
    .A3 ( ctmn_1654 ) , .A4 ( \memory[14] [1] ) , .A5 ( ctmn_1718 ) , 
    .Y ( ctmn_1719 ) ) ;
AO221X1_HVT ctmi_1604 ( .A1 ( ctmn_1641 ) , .A2 ( \memory[6] [0] ) , 
    .A3 ( ctmn_1635 ) , .A4 ( \memory[0] [0] ) , .A5 ( ctmn_1724 ) , 
    .Y ( ctmn_1725 ) ) ;
AO22X1_HVT ctmi_1605 ( .A1 ( ctmn_1636 ) , .A2 ( \memory[12] [0] ) , 
    .A3 ( phfnn_345 ) , .A4 ( \memory[15] [0] ) , .Y ( ctmn_1724 ) ) ;
AO222X1_RVT ctmi_1606 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [0] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [0] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [0] ) , .Y ( ctmn_1726 ) ) ;
OR2X1_RVT A1198 ( .A1 ( ctmn_1631 ) , .A2 ( write_ptr[2] ) , .Y ( N375 ) ) ;
NOR2X0_HVT ctmi_940 ( .A1 ( count[0] ) , .A2 ( ctmn_1661 ) , 
    .Y ( ctmn_1786 ) ) ;
INVX2_RVT phfnr_buf_1117 ( .A ( ctmn_1669 ) , .Y ( phfnn_347 ) ) ;
NOR2X0_HVT ctmi_942 ( .A1 ( count[4] ) , .A2 ( phfnn_346 ) , 
    .Y ( ctmn_1780 ) ) ;
INVX0_RVT phfnr_buf_1118 ( .A ( ctmn_1780 ) , .Y ( phfnn_348 ) ) ;
INVX0_RVT phfnr_buf_1120 ( .A ( ctmn_1776 ) , .Y ( phfnn_350 ) ) ;
NOR2X0_HVT ctmi_943 ( .A1 ( count[5] ) , .A2 ( phfnn_348 ) , 
    .Y ( ctmn_1776 ) ) ;
INVX1_RVT phfnr_buf_1121 ( .A ( ctmn_1778 ) , .Y ( phfnn_351 ) ) ;
INVX0_RVT phfnr_buf_1123 ( .A ( ctmn_1769 ) , .Y ( phfnn_353 ) ) ;
INVX1_RVT A755 ( .A ( full ) , .Y ( ctmn_1750 ) ) ;
NAND2X0_RVT A756 ( .A1 ( ctmn_1687 ) , .A2 ( phfnn_354 ) , .Y ( N165 ) ) ;
AND3X1_LVT A1281 ( .A1 ( N378 ) , .A2 ( N382 ) , .A3 ( N377 ) , .Y ( full ) ) ;
NAND2X0_RVT ctmi_1619 ( .A1 ( ctmn_1671 ) , .A2 ( ctmn_1739 ) , .Y ( N47 ) ) ;
NAND2X2_HVT ctmi_1620 ( .A1 ( ls_40 ) , .A2 ( ctmn_1738 ) , .Y ( ctmn_1739 ) ) ;
AO222X1_RVT ctmi_1624 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [8] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [8] ) , .A5 ( phfnn_345 ) , 
    .A6 ( \memory[15] [8] ) , .Y ( ctmn_1741 ) ) ;
AO221X1_HVT ctmi_1626 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [8] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [8] ) , .A5 ( ctmn_1744 ) , 
    .Y ( ctmn_1745 ) ) ;
AO221X1_RVT ctmi_1627 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [8] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [8] ) , .A5 ( ctmn_1743 ) , 
    .Y ( ctmn_1744 ) ) ;
AO221X1_HVT ctmi_1628 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [8] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [8] ) , .A5 ( ctmn_1742 ) , 
    .Y ( ctmn_1743 ) ) ;
AO22X1_HVT ctmi_1629 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [8] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [8] ) , .Y ( ctmn_1742 ) ) ;
AO222X1_RVT ctmi_1630 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [8] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [8] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [8] ) , .Y ( ctmn_1746 ) ) ;
AND2X2_RVT ctmi_1632 ( .A1 ( phfnn_347 ) , .A2 ( ls_42 ) , .Y ( N3 ) ) ;
AND2X2_RVT ctmi_1633 ( .A1 ( phfnn_347 ) , .A2 ( ls_45 ) , .Y ( N4 ) ) ;
AND2X2_RVT ctmi_1634 ( .A1 ( phfnn_347 ) , .A2 ( ls_48 ) , .Y ( N5 ) ) ;
OA21X1_HVT ctmi_1643 ( .A1 ( ctmn_1753 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( phfnn_347 ) , .Y ( N45 ) ) ;
AND2X2_RVT ctmi_1635 ( .A1 ( phfnn_347 ) , .A2 ( ls_51 ) , .Y ( N6 ) ) ;
AND2X2_RVT ctmi_1636 ( .A1 ( phfnn_347 ) , .A2 ( ls_54 ) , .Y ( N7 ) ) ;
AND2X2_RVT ctmi_1637 ( .A1 ( phfnn_347 ) , .A2 ( ls_57 ) , .Y ( N8 ) ) ;
AND2X2_RVT ctmi_1638 ( .A1 ( phfnn_347 ) , .A2 ( ls_60 ) , .Y ( N9 ) ) ;
AND2X2_RVT ctmi_1639 ( .A1 ( phfnn_347 ) , .A2 ( ls_63 ) , .Y ( N10 ) ) ;
AO221X1_RVT ctmi_1395 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [6] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [6] ) , .A5 ( ctmn_432 ) , 
    .Y ( ctmn_1679 ) ) ;
AND3X1_RVT A1200 ( .A1 ( ctmn_201 ) , .A2 ( N375 ) , .A3 ( N376 ) , 
    .Y ( N377 ) ) ;
INVX0_RVT phfnr_buf_1125 ( .A ( ctmn_1771 ) , .Y ( phfnn_355 ) ) ;
AND2X1_RVT ctmi_1644 ( .A1 ( write_ptr[1] ) , .A2 ( ctmn_1752 ) , 
    .Y ( ctmn_1753 ) ) ;
NOR2X0_HVT ctmi_1645 ( .A1 ( ctmn_1751 ) , .A2 ( write_ptr[0] ) , 
    .Y ( ctmn_1752 ) ) ;
NAND2X0_RVT ctmi_1646 ( .A1 ( ls_76 ) , .A2 ( ctmn_1750 ) , .Y ( ctmn_1751 ) ) ;
AND4X1_RVT ctmi_1647 ( .A1 ( ctmn_1750 ) , .A2 ( ctmn_1734 ) , 
    .A3 ( write_ptr[0] ) , .A4 ( ls_76 ) , .Y ( ctmn_1754 ) ) ;
AND2X1_HVT ctmi_1648 ( .A1 ( phfnn_347 ) , .A2 ( ctmn_1752 ) , .Y ( N46 ) ) ;
AND2X1_HVT ctmi_1649 ( .A1 ( N41 ) , .A2 ( ctmn_1760 ) , .Y ( N1 ) ) ;
NAND2X0_RVT ctmi_1650 ( .A1 ( phfnn_347 ) , .A2 ( ctmn_1751 ) , .Y ( N41 ) ) ;
OA21X1_RVT ctmi_1651 ( .A1 ( ctmn_1757 ) , .A2 ( ctmn_1758 ) , 
    .A3 ( ctmn_1759 ) , .Y ( ctmn_1760 ) ) ;
NAND2X0_RVT ctmi_1652 ( .A1 ( phfnn_347 ) , .A2 ( ctmn_1756 ) , 
    .Y ( ctmn_1757 ) ) ;
NAND2X0_RVT ctmi_1675 ( .A1 ( phfnn_347 ) , .A2 ( ctmn_1739 ) , .Y ( N56 ) ) ;
AO21X1_HVT ctmi_1674 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N39 ) ) ;
OA221X1_HVT ctmi_1676 ( .A1 ( ctmn_1728 ) , .A2 ( ctmn_1638 ) , 
    .A3 ( read_ptr[4] ) , .A4 ( phfnn_345 ) , .A5 ( phfnn_347 ) , .Y ( N57 ) ) ;
AO21X1_HVT ctmi_1673 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N37 ) ) ;
AND4X1_RVT ctmi_1653 ( .A1 ( ctmn_1750 ) , .A2 ( write_ptr[0] ) , 
    .A3 ( write_ptr[1] ) , .A4 ( ls_76 ) , .Y ( ctmn_1756 ) ) ;
AND2X1_RVT ctmi_1654 ( .A1 ( write_ptr[3] ) , .A2 ( write_ptr[2] ) , 
    .Y ( ctmn_1758 ) ) ;
NOR2X0_HVT ctmi_1655 ( .A1 ( N45 ) , .A2 ( N46 ) , .Y ( ctmn_1759 ) ) ;
AO21X1_HVT ctmi_1656 ( .A1 ( ctmn_1758 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N11 ) ) ;
AO21X1_HVT ctmi_1657 ( .A1 ( ctmn_1758 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N13 ) ) ;
AO21X1_HVT ctmi_1658 ( .A1 ( ctmn_1761 ) , .A2 ( ctmn_1758 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N15 ) ) ;
AND2X1_RVT ctmi_1659 ( .A1 ( ctmn_1734 ) , .A2 ( ctmn_1752 ) , 
    .Y ( ctmn_1761 ) ) ;
AO21X1_HVT ctmi_1660 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N17 ) ) ;
AND2X1_HVT ctmi_1661 ( .A1 ( ctmn_1733 ) , .A2 ( write_ptr[3] ) , 
    .Y ( ctmn_1762 ) ) ;
AO21X1_HVT ctmi_1662 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N19 ) ) ;
OA221X1_HVT ctmi_1677 ( .A1 ( ctmn_1657 ) , .A2 ( ctmn_1638 ) , 
    .A3 ( ctmn_1657 ) , .A4 ( read_ptr[3] ) , .A5 ( phfnn_347 ) , .Y ( N58 ) ) ;
AO21X1_HVT ctmi_1663 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N21 ) ) ;
AO21X1_HVT ctmi_1664 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N23 ) ) ;
AO21X1_HVT ctmi_1665 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N25 ) ) ;
AND2X1_RVT ctmi_1666 ( .A1 ( ctmn_1731 ) , .A2 ( write_ptr[2] ) , 
    .Y ( ctmn_1763 ) ) ;
AO21X1_HVT ctmi_1667 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N27 ) ) ;
AO21X1_HVT ctmi_1668 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N29 ) ) ;
AO21X1_HVT ctmi_1669 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N31 ) ) ;
AO21X1_HVT ctmi_1670 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N33 ) ) ;
AND2X1_RVT ctmi_1671 ( .A1 ( ctmn_1731 ) , .A2 ( ctmn_1733 ) , 
    .Y ( ctmn_1764 ) ) ;
AO21X1_HVT ctmi_1672 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N35 ) ) ;
OA221X1_HVT ctmi_1678 ( .A1 ( phfnn_342 ) , .A2 ( ctmn_1631 ) , 
    .A3 ( ctmn_1766 ) , .A4 ( read_ptr[2] ) , .A5 ( phfnn_347 ) , .Y ( N59 ) ) ;
OR3X1_HVT ctmi_1396 ( .A1 ( ctmn_1676 ) , .A2 ( ctmn_1677 ) , 
    .A3 ( ctmn_1672 ) , .Y ( ctmn_432 ) ) ;
AO221X1_RVT ctmi_1397 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [5] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [5] ) , .A5 ( ctmn_433 ) , 
    .Y ( ctmn_1687 ) ) ;
AO221X1_RVT ctmi_1408 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [8] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [8] ) , .A5 ( ctmn_437 ) , 
    .Y ( ctmn_1748 ) ) ;
OR3X1_HVT ctmi_1398 ( .A1 ( ctmn_1684 ) , .A2 ( ctmn_1685 ) , 
    .A3 ( ctmn_1680 ) , .Y ( ctmn_433 ) ) ;
AOI221X1_HVT ctmi_1683 ( .A1 ( ctmn_1731 ) , .A2 ( ctmn_1733 ) , 
    .A3 ( ctmn_1731 ) , .A4 ( ctmn_1757 ) , .A5 ( ctmn_1760 ) , .Y ( N43 ) ) ;
AO22X1_HVT ctmi_1684 ( .A1 ( ctmn_1768 ) , .A2 ( phfnn_355 ) , 
    .A3 ( ctmn_1773 ) , .A4 ( ctmn_1775 ) , .Y ( N63 ) ) ;
AND2X1_HVT ctmi_1685 ( .A1 ( phfnn_351 ) , .A2 ( ctmn_1767 ) , 
    .Y ( ctmn_1768 ) ) ;
AND3X1_RVT ctmi_1686 ( .A1 ( ctmn_1748 ) , .A2 ( phfnn_347 ) , 
    .A3 ( phfnn_349 ) , .Y ( ctmn_1767 ) ) ;
NAND4X1_HVT ctmi_1687 ( .A1 ( phfnn_353 ) , .A2 ( ctmn_1679 ) , 
    .A3 ( ctmn_1687 ) , .A4 ( ctmn_1695 ) , .Y ( ctmn_1771 ) ) ;
NAND2X0_RVT ctmi_1688 ( .A1 ( ctmn_1703 ) , .A2 ( phfnn_352 ) , 
    .Y ( ctmn_1769 ) ) ;
AO221X1_RVT ctmi_1399 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [4] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [4] ) , .A5 ( ctmn_434 ) , 
    .Y ( ctmn_1695 ) ) ;
INVX0_RVT A1134 ( .A ( empty ) , .Y ( ctmn_1738 ) ) ;
AND2X1_HVT ctmi_1691 ( .A1 ( phfnn_350 ) , .A2 ( count[6] ) , 
    .Y ( ctmn_1773 ) ) ;
NOR4X1_RVT ctmi_1692 ( .A1 ( ctmn_1669 ) , .A2 ( ctmn_1739 ) , 
    .A3 ( ctmn_1748 ) , .A4 ( ctmn_1774 ) , .Y ( ctmn_1775 ) ) ;
NOR4X1_HVT ctmi_1693 ( .A1 ( ctmn_1661 ) , .A2 ( count[4] ) , 
    .A3 ( count[5] ) , .A4 ( count[6] ) , .Y ( ctmn_1774 ) ) ;
AO221X1_HVT ctmi_1694 ( .A1 ( ctmn_1768 ) , .A2 ( ctmn_1771 ) , 
    .A3 ( ctmn_1777 ) , .A4 ( ctmn_1775 ) , .A5 ( ctmn_1779 ) , .Y ( N64 ) ) ;
AO21X1_HVT ctmi_1695 ( .A1 ( count[5] ) , .A2 ( phfnn_348 ) , 
    .A3 ( ctmn_1776 ) , .Y ( ctmn_1777 ) ) ;
OR3X1_HVT ctmi_1400 ( .A1 ( ctmn_1692 ) , .A2 ( ctmn_1693 ) , 
    .A3 ( ctmn_1688 ) , .Y ( ctmn_434 ) ) ;
AND3X1_RVT ctmi_1697 ( .A1 ( ctmn_1778 ) , .A2 ( ctmn_1767 ) , 
    .A3 ( phfnn_355 ) , .Y ( ctmn_1779 ) ) ;
AO221X1_RVT ctmi_1401 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [3] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [3] ) , .A5 ( ctmn_435 ) , 
    .Y ( ctmn_1703 ) ) ;
SDFFX1_RVT \memory_reg[15][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [8] ) ) ;
OR3X1_HVT ctmi_1402 ( .A1 ( ctmn_1700 ) , .A2 ( ctmn_1701 ) , 
    .A3 ( ctmn_1696 ) , .Y ( ctmn_435 ) ) ;
AO222X1_RVT ctmi_1504 ( .A1 ( \memory[0] [7] ) , .A2 ( ctmn_1635 ) , 
    .A3 ( \memory[12] [7] ) , .A4 ( ctmn_1636 ) , .A5 ( \memory[15] [7] ) , 
    .A6 ( phfnn_345 ) , .Y ( ctmn_1640 ) ) ;
AND4X1_RVT ctmi_1505 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( ctmn_1634 ) , .Y ( ctmn_1635 ) ) ;
INVX1_RVT A1202 ( .A ( read_ptr[0] ) , .Y ( N379 ) ) ;
AND2X1_HVT ctmi_947 ( .A1 ( read_ptr[1] ) , .A2 ( read_ptr[0] ) , 
    .Y ( ctmn_1766 ) ) ;
NAND2X0_RVT A1203 ( .A1 ( write_ptr[0] ) , .A2 ( N379 ) , .Y ( N380 ) ) ;
NOR4X1_RVT ctmi_1403 ( .A1 ( ctmn_436 ) , .A2 ( ctmn_1708 ) , 
    .A3 ( ctmn_1709 ) , .A4 ( ctmn_1704 ) , .Y ( ctmn_1797 ) ) ;
AND4X1_RVT ctmi_1510 ( .A1 ( ctmn_1633 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[2] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1636 ) ) ;
NAND3X1_HVT ctmi_1511 ( .A1 ( ctmn_1637 ) , .A2 ( read_ptr[0] ) , 
    .A3 ( read_ptr[3] ) , .Y ( ctmn_1638 ) ) ;
AND2X1_HVT ctmi_1512 ( .A1 ( read_ptr[2] ) , .A2 ( read_ptr[1] ) , 
    .Y ( ctmn_1637 ) ) ;
AOI22X1_RVT A1204 ( .A1 ( read_ptr[4] ) , .A2 ( write_ptr[4] ) , 
    .A3 ( ctmn_1729 ) , .A4 ( ctmn_1728 ) , .Y ( N381 ) ) ;
AND3X1_RVT ctmi_1514 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1633 ) , 
    .A3 ( ctmn_1637 ) , .Y ( ctmn_1641 ) ) ;
AO22X1_HVT ctmi_1404 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [2] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [2] ) , .Y ( ctmn_436 ) ) ;
AO221X1_RVT ctmi_1516 ( .A1 ( \memory[10] [7] ) , .A2 ( ctmn_1642 ) , 
    .A3 ( \memory[5] [7] ) , .A4 ( ctmn_1643 ) , .A5 ( ctmn_1652 ) , 
    .Y ( ctmn_1653 ) ) ;
AND4X1_RVT ctmi_1517 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1633 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1642 ) ) ;
AND4X1_RVT ctmi_1518 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[2] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1643 ) ) ;
AO221X1_RVT ctmi_1519 ( .A1 ( \memory[2] [7] ) , .A2 ( ctmn_1644 ) , 
    .A3 ( \memory[9] [7] ) , .A4 ( ctmn_1645 ) , .A5 ( ctmn_1651 ) , 
    .Y ( ctmn_1652 ) ) ;
AND4X1_RVT ctmi_1520 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1634 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[1] ) , .Y ( ctmn_1644 ) ) ;
AND4X1_RVT ctmi_1521 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1645 ) ) ;
AO221X1_HVT ctmi_1522 ( .A1 ( \memory[11] [7] ) , .A2 ( ctmn_1646 ) , 
    .A3 ( \memory[8] [7] ) , .A4 ( ctmn_1647 ) , .A5 ( ctmn_1650 ) , 
    .Y ( ctmn_1651 ) ) ;
AND4X1_RVT ctmi_1523 ( .A1 ( ctmn_1631 ) , .A2 ( read_ptr[1] ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1646 ) ) ;
AND4X1_RVT ctmi_1524 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1647 ) ) ;
AO22X1_HVT ctmi_1525 ( .A1 ( \memory[1] [7] ) , .A2 ( ctmn_1648 ) , 
    .A3 ( \memory[13] [7] ) , .A4 ( ctmn_1649 ) , .Y ( ctmn_1650 ) ) ;
AND4X1_RVT ctmi_1526 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1634 ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1648 ) ) ;
AND4X1_RVT ctmi_1527 ( .A1 ( ctmn_1632 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1649 ) ) ;
AND3X1_RVT ctmi_1528 ( .A1 ( ctmn_1633 ) , .A2 ( ctmn_1637 ) , 
    .A3 ( read_ptr[3] ) , .Y ( ctmn_1654 ) ) ;
AO222X1_RVT ctmi_1529 ( .A1 ( \memory[3] [7] ) , .A2 ( ctmn_1655 ) , 
    .A3 ( \memory[4] [7] ) , .A4 ( ctmn_1656 ) , .A5 ( \memory[7] [7] ) , 
    .A6 ( ctmn_1657 ) , .Y ( ctmn_1658 ) ) ;
AND4X1_RVT ctmi_1530 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1634 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1655 ) ) ;
AND4X1_RVT ctmi_1531 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[2] ) , .Y ( ctmn_1656 ) ) ;
AND4X1_RVT ctmi_1532 ( .A1 ( ctmn_1634 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1657 ) ) ;
OA221X1_RVT ctmi_1533 ( .A1 ( ctmn_1665 ) , .A2 ( ctmn_1666 ) , 
    .A3 ( ctmn_1665 ) , .A4 ( ctmn_1667 ) , .A5 ( phfnn_347 ) , 
    .Y ( ctmn_1671 ) ) ;
OR2X1_HVT ctmi_1534 ( .A1 ( count[6] ) , .A2 ( phfnn_350 ) , 
    .Y ( ctmn_1665 ) ) ;
AND2X1_RVT A1205 ( .A1 ( N380 ) , .A2 ( N381 ) , .Y ( N382 ) ) ;
OA221X1_HVT ctmi_1407 ( .A1 ( phfnn_342 ) , .A2 ( phfnn_342 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .A5 ( phfnn_347 ) , 
    .Y ( N60 ) ) ;
INVX1_RVT A1207 ( .A ( N381 ) , .Y ( ctmn_205 ) ) ;
OR3X1_HVT ctmi_1538 ( .A1 ( count[1] ) , .A2 ( count[3] ) , .A3 ( count[2] ) , 
    .Y ( ctmn_1661 ) ) ;
NOR4X1_HVT ctmi_1539 ( .A1 ( data_out[2] ) , .A2 ( data_out[1] ) , 
    .A3 ( data_out[0] ) , .A4 ( data_out[7] ) , .Y ( ctmn_1666 ) ) ;
NOR4X1_HVT ctmi_1540 ( .A1 ( data_out[6] ) , .A2 ( data_out[5] ) , 
    .A3 ( data_out[4] ) , .A4 ( data_out[3] ) , .Y ( ctmn_1667 ) ) ;
NAND2X4_HVT ctmi_1541 ( .A1 ( ls_35 ) , .A2 ( ctmn_1668 ) , .Y ( ctmn_1669 ) ) ;
INVX0_RVT ctmi_1542 ( .A ( ls_79 ) , .Y ( ctmn_1668 ) ) ;
AND2X1_RVT A1208 ( .A1 ( N380 ) , .A2 ( N378 ) , .Y ( ctmn_200 ) ) ;
OR3X1_HVT ctmi_1409 ( .A1 ( ctmn_1745 ) , .A2 ( ctmn_1746 ) , 
    .A3 ( ctmn_1741 ) , .Y ( ctmn_437 ) ) ;
AO222X1_RVT ctmi_1546 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [6] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [6] ) , .A5 ( phfnn_345 ) , 
    .A6 ( \memory[15] [6] ) , .Y ( ctmn_1672 ) ) ;
AO221X1_RVT ctmi_1548 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [6] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [6] ) , .A5 ( ctmn_1675 ) , 
    .Y ( ctmn_1676 ) ) ;
AO221X1_RVT ctmi_1549 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [6] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [6] ) , .A5 ( ctmn_1674 ) , 
    .Y ( ctmn_1675 ) ) ;
AO221X1_HVT ctmi_1550 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [6] ) , 
    .A3 ( \memory[8] [6] ) , .A4 ( ctmn_1647 ) , .A5 ( ctmn_1673 ) , 
    .Y ( ctmn_1674 ) ) ;
AO22X1_HVT ctmi_1551 ( .A1 ( \memory[1] [6] ) , .A2 ( ctmn_1648 ) , 
    .A3 ( \memory[13] [6] ) , .A4 ( ctmn_1649 ) , .Y ( ctmn_1673 ) ) ;
AO222X1_RVT ctmi_1552 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [6] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [6] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [6] ) , .Y ( ctmn_1677 ) ) ;
AO222X1_RVT ctmi_1555 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [5] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [5] ) , .A5 ( phfnn_345 ) , 
    .A6 ( \memory[15] [5] ) , .Y ( ctmn_1680 ) ) ;
AO221X1_RVT ctmi_1557 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [5] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [5] ) , .A5 ( ctmn_1683 ) , 
    .Y ( ctmn_1684 ) ) ;
AO221X1_RVT ctmi_1558 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [5] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [5] ) , .A5 ( ctmn_1682 ) , 
    .Y ( ctmn_1683 ) ) ;
AO221X1_HVT ctmi_1559 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [5] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [5] ) , .A5 ( ctmn_1681 ) , 
    .Y ( ctmn_1682 ) ) ;
AO22X1_HVT ctmi_1560 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [5] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [5] ) , .Y ( ctmn_1681 ) ) ;
AO222X1_RVT ctmi_1561 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [5] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [5] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [5] ) , .Y ( ctmn_1685 ) ) ;
AO222X1_RVT ctmi_1564 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [4] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [4] ) , .A5 ( phfnn_345 ) , 
    .A6 ( \memory[15] [4] ) , .Y ( ctmn_1688 ) ) ;
AO221X1_RVT ctmi_1566 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [4] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [4] ) , .A5 ( ctmn_1691 ) , 
    .Y ( ctmn_1692 ) ) ;
AO221X1_HVT ctmi_1567 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [4] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [4] ) , .A5 ( ctmn_1690 ) , 
    .Y ( ctmn_1691 ) ) ;
AO221X1_HVT ctmi_1568 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [4] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [4] ) , .A5 ( ctmn_1689 ) , 
    .Y ( ctmn_1690 ) ) ;
AO22X1_HVT ctmi_1569 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [4] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [4] ) , .Y ( ctmn_1689 ) ) ;
AO222X1_RVT ctmi_1570 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [4] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [4] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [4] ) , .Y ( ctmn_1693 ) ) ;
AO222X1_RVT ctmi_1573 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [3] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [3] ) , .A5 ( phfnn_345 ) , 
    .A6 ( \memory[15] [3] ) , .Y ( ctmn_1696 ) ) ;
AO221X1_RVT ctmi_1575 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [3] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [3] ) , .A5 ( ctmn_1699 ) , 
    .Y ( ctmn_1700 ) ) ;
AO221X1_HVT ctmi_1576 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [3] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [3] ) , .A5 ( ctmn_1698 ) , 
    .Y ( ctmn_1699 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_router_clock_UPF_LS ( 
    .A ( router_clock ) , .Y ( ls_32 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_resetn_UPF_LS ( .A ( resetn ) , 
    .Y ( ls_35 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_read_enb_UPF_LS ( .A ( read_enb ) , 
    .Y ( ls_40 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[7]_UPF_LS ( 
    .A ( data_in[7] ) , .Y ( ls_42 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[6]_UPF_LS ( 
    .A ( data_in[6] ) , .Y ( ls_45 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[5]_UPF_LS ( 
    .A ( data_in[5] ) , .Y ( ls_48 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[4]_UPF_LS ( 
    .A ( data_in[4] ) , .Y ( ls_51 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[3]_UPF_LS ( 
    .A ( data_in[3] ) , .Y ( ls_54 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[2]_UPF_LS ( 
    .A ( data_in[2] ) , .Y ( ls_57 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[1]_UPF_LS ( 
    .A ( data_in[1] ) , .Y ( ls_60 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[0]_UPF_LS ( 
    .A ( data_in[0] ) , .Y ( ls_63 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_lfd_state_UPF_LS ( .A ( lfd_state ) , 
    .Y ( ls_69 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_write_enb_UPF_LS ( .A ( write_enb ) , 
    .Y ( ls_76 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_soft_reset_UPF_LS ( 
    .A ( soft_reset ) , .Y ( ls_79 ) ) ;
AO221X1_RVT ctmi_1577 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [3] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [3] ) , .A5 ( ctmn_1697 ) , 
    .Y ( ctmn_1698 ) ) ;
AO22X1_HVT ctmi_1578 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [3] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [3] ) , .Y ( ctmn_1697 ) ) ;
CGLPPRX2_HVT clock_gate_count_reg ( .CLK ( ls_32 ) , .EN ( N62 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_count_reg ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( ls_32 ) , .EN ( N47 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_data_out_reg ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg ( .CLK ( ls_32 ) , .EN ( N39 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_1 ( .CLK ( ls_32 ) , .EN ( N19 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_1 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_2 ( .CLK ( ls_32 ) , .EN ( N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_2 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_3 ( .CLK ( ls_32 ) , .EN ( N15 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_3 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_4 ( .CLK ( ls_32 ) , .EN ( N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_4 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_5 ( .CLK ( ls_32 ) , .EN ( N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_5 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_6 ( .CLK ( ls_32 ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_6 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_7 ( .CLK ( ls_32 ) , .EN ( N37 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_7 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_8 ( .CLK ( ls_32 ) , .EN ( N35 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_8 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_9 ( .CLK ( ls_32 ) , .EN ( N33 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_9 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_10 ( .CLK ( ls_32 ) , .EN ( N31 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_10 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_11 ( .CLK ( ls_32 ) , .EN ( N29 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_11 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_12 ( .CLK ( ls_32 ) , .EN ( N27 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_12 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_13 ( .CLK ( ls_32 ) , .EN ( N25 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_13 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_14 ( .CLK ( ls_32 ) , .EN ( N23 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_14 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_15 ( .CLK ( ls_32 ) , .EN ( N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_memory_reg_15 ) ) ;
CGLPPRX2_HVT clock_gate_read_ptr_reg ( .CLK ( ls_32 ) , .EN ( N56 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_read_ptr_reg ) ) ;
CGLPPRX2_HVT clock_gate_write_ptr_reg ( .CLK ( ls_32 ) , .EN ( N41 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_32_clock_gate_write_ptr_reg ) ) ;
AO222X1_RVT ctmi_1579 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [3] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [3] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [3] ) , .Y ( ctmn_1701 ) ) ;
AND3X1_LVT A1214 ( .A1 ( ctmn_205 ) , .A2 ( ctmn_201 ) , .A3 ( N369 ) , 
    .Y ( N372 ) ) ;
AO222X1_RVT ctmi_1582 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [2] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [2] ) , .A5 ( phfnn_345 ) , 
    .A6 ( \memory[15] [2] ) , .Y ( ctmn_1704 ) ) ;
AO221X1_RVT ctmi_1584 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [2] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [2] ) , .A5 ( ctmn_1707 ) , 
    .Y ( ctmn_1708 ) ) ;
AO221X1_RVT ctmi_1585 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [2] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [2] ) , .A5 ( ctmn_1706 ) , 
    .Y ( ctmn_1707 ) ) ;
AO221X1_HVT ctmi_1586 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [2] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [2] ) , .A5 ( ctmn_1705 ) , 
    .Y ( ctmn_1706 ) ) ;
AO22X1_HVT ctmi_1587 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [2] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [2] ) , .Y ( ctmn_1705 ) ) ;
AO222X1_RVT ctmi_1588 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [2] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [2] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [2] ) , .Y ( ctmn_1709 ) ) ;
AO221X1_RVT ctmi_1590 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [1] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [1] ) , .A5 ( ctmn_1714 ) , 
    .Y ( ctmn_1715 ) ) ;
AO221X1_HVT ctmi_1591 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [1] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [1] ) , .A5 ( ctmn_1713 ) , 
    .Y ( ctmn_1714 ) ) ;
AO221X1_RVT ctmi_1592 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [1] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [1] ) , .A5 ( ctmn_1712 ) , 
    .Y ( ctmn_1713 ) ) ;
AO22X1_HVT ctmi_1593 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [1] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [1] ) , .Y ( ctmn_1712 ) ) ;
AO221X1_HVT ctmi_1595 ( .A1 ( ctmn_1641 ) , .A2 ( \memory[6] [1] ) , 
    .A3 ( ctmn_1635 ) , .A4 ( \memory[0] [1] ) , .A5 ( ctmn_1716 ) , 
    .Y ( ctmn_1717 ) ) ;
AO22X1_HVT ctmi_1596 ( .A1 ( ctmn_1636 ) , .A2 ( \memory[12] [1] ) , 
    .A3 ( phfnn_345 ) , .A4 ( \memory[15] [1] ) , .Y ( ctmn_1716 ) ) ;
AO222X1_RVT ctmi_1597 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [1] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [1] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [1] ) , .Y ( ctmn_1718 ) ) ;
SDFFX1_RVT \memory_reg[15][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_32_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [7] ) ) ;
endmodule


module router_fifo_1 ( router_clock , resetn , soft_reset , write_enb , 
    read_enb , lfd_state , data_in , data_out , empty , full ) ;
input  router_clock ;
input  resetn ;
input  soft_reset ;
input  write_enb ;
input  read_enb ;
input  lfd_state ;
input  [7:0] data_in ;
output [7:0] data_out ;
output empty ;
output full ;

wire [4:0] write_ptr ;
wire [4:0] read_ptr ;
wire [8:0] \memory[15] ;
wire [8:0] \memory[14] ;
wire [8:0] \memory[13] ;
wire [8:0] \memory[12] ;
wire [8:0] \memory[11] ;
wire [8:0] \memory[10] ;
wire [8:0] \memory[9] ;
wire [8:0] \memory[8] ;
wire [8:0] \memory[7] ;
wire [8:0] \memory[6] ;
wire [8:0] \memory[5] ;
wire [8:0] \memory[4] ;
wire [8:0] \memory[3] ;
wire [8:0] \memory[2] ;
wire [8:0] \memory[1] ;
wire [8:0] \memory[0] ;
wire [6:0] count ;

AO22X1_HVT ctmi_1699 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1781 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1784 ) , .Y ( N65 ) ) ;
SDFFX1_RVT \write_ptr_reg[4] ( .D ( N42 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_write_ptr_reg ) , .Q ( write_ptr[4] ) , 
    .QN ( ctmn_1729 ) ) ;
AO22X1_HVT ctmi_1712 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1792 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1793 ) , .Y ( N67 ) ) ;
NAND2X0_RVT A757 ( .A1 ( ctmn_1687 ) , .A2 ( phfnn_339 ) , .Y ( N166 ) ) ;
SDFFX1_RVT \memory_reg[15][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [6] ) ) ;
SDFFX1_RVT \memory_reg[15][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [5] ) ) ;
SDFFX1_RVT \memory_reg[15][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [4] ) ) ;
SDFFX1_RVT \memory_reg[15][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [3] ) ) ;
SDFFX1_RVT \memory_reg[15][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [2] ) ) ;
SDFFX1_RVT \memory_reg[15][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [1] ) ) ;
SDFFX1_RVT \memory_reg[15][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [0] ) ) ;
SDFFX1_RVT \memory_reg[14][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [8] ) ) ;
SDFFX1_RVT \memory_reg[14][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [7] ) ) ;
SDFFX1_RVT \memory_reg[14][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [6] ) ) ;
SDFFX1_RVT \memory_reg[14][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [5] ) ) ;
SDFFX1_RVT \memory_reg[14][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [4] ) ) ;
SDFFX1_RVT \memory_reg[14][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [3] ) ) ;
SDFFX1_RVT \memory_reg[14][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [2] ) ) ;
SDFFX1_RVT \memory_reg[14][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [1] ) ) ;
SDFFX1_RVT \memory_reg[14][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [0] ) ) ;
SDFFX1_RVT \memory_reg[13][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [8] ) ) ;
SDFFX1_RVT \memory_reg[13][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [7] ) ) ;
SDFFX1_RVT \memory_reg[13][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [6] ) ) ;
SDFFX1_RVT \memory_reg[13][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [5] ) ) ;
SDFFX1_RVT \memory_reg[13][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [4] ) ) ;
SDFFX1_RVT \memory_reg[13][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [3] ) ) ;
SDFFX1_RVT \memory_reg[13][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [2] ) ) ;
SDFFX1_RVT \memory_reg[13][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [1] ) ) ;
SDFFX1_RVT \memory_reg[13][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [0] ) ) ;
SDFFX1_RVT \memory_reg[12][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [8] ) ) ;
SDFFX1_RVT \memory_reg[12][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [7] ) ) ;
SDFFX1_RVT \memory_reg[12][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [6] ) ) ;
SDFFX1_RVT \memory_reg[12][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [5] ) ) ;
SDFFX1_RVT \memory_reg[12][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [4] ) ) ;
SDFFX1_RVT \memory_reg[12][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [3] ) ) ;
SDFFX1_RVT \memory_reg[12][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [2] ) ) ;
SDFFX1_RVT \memory_reg[12][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [1] ) ) ;
SDFFX1_RVT \memory_reg[12][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [0] ) ) ;
SDFFX1_RVT \memory_reg[11][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [8] ) ) ;
SDFFX1_RVT \memory_reg[11][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [7] ) ) ;
SDFFX1_RVT \memory_reg[11][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [6] ) ) ;
SDFFX1_RVT \memory_reg[11][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [5] ) ) ;
SDFFX1_RVT \memory_reg[11][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [4] ) ) ;
SDFFX1_RVT \memory_reg[11][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [3] ) ) ;
SDFFX1_RVT \memory_reg[11][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [2] ) ) ;
SDFFX1_RVT \memory_reg[11][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [1] ) ) ;
SDFFX1_RVT \memory_reg[11][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [0] ) ) ;
SDFFX1_RVT \memory_reg[10][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [8] ) ) ;
SDFFX1_RVT \memory_reg[10][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [7] ) ) ;
SDFFX1_RVT \memory_reg[10][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [6] ) ) ;
SDFFX1_RVT \memory_reg[10][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [5] ) ) ;
SDFFX1_RVT \memory_reg[10][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [4] ) ) ;
SDFFX1_RVT \memory_reg[10][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [3] ) ) ;
SDFFX1_RVT \memory_reg[10][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [2] ) ) ;
SDFFX1_RVT \memory_reg[10][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [1] ) ) ;
SDFFX1_RVT \memory_reg[10][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [0] ) ) ;
SDFFX1_RVT \memory_reg[9][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [8] ) ) ;
SDFFX1_RVT \memory_reg[9][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [7] ) ) ;
SDFFX1_RVT \memory_reg[9][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [6] ) ) ;
SDFFX1_RVT \memory_reg[9][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [5] ) ) ;
SDFFX1_RVT \memory_reg[9][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [4] ) ) ;
SDFFX1_RVT \memory_reg[9][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [3] ) ) ;
SDFFX1_RVT \memory_reg[9][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [2] ) ) ;
SDFFX1_RVT \memory_reg[9][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [1] ) ) ;
SDFFX1_RVT \memory_reg[9][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [0] ) ) ;
SDFFX1_RVT \memory_reg[8][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [8] ) ) ;
SDFFX1_RVT \memory_reg[8][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [7] ) ) ;
SDFFX1_RVT \memory_reg[8][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [6] ) ) ;
SDFFX1_RVT \memory_reg[8][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [5] ) ) ;
SDFFX1_RVT \memory_reg[8][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [4] ) ) ;
SDFFX1_RVT \memory_reg[8][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [3] ) ) ;
SDFFX1_RVT \memory_reg[8][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [2] ) ) ;
SDFFX1_RVT \memory_reg[8][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [1] ) ) ;
SDFFX1_RVT \memory_reg[8][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [0] ) ) ;
SDFFX1_RVT \memory_reg[7][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [8] ) ) ;
SDFFX1_RVT \memory_reg[7][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [7] ) ) ;
SDFFX1_RVT \memory_reg[7][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [6] ) ) ;
SDFFX1_RVT \memory_reg[7][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [5] ) ) ;
SDFFX1_RVT \memory_reg[7][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [4] ) ) ;
SDFFX1_RVT \memory_reg[7][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [3] ) ) ;
SDFFX1_RVT \memory_reg[7][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [2] ) ) ;
SDFFX1_RVT \memory_reg[7][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [1] ) ) ;
SDFFX1_RVT \memory_reg[7][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [0] ) ) ;
SDFFX1_RVT \memory_reg[6][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [8] ) ) ;
SDFFX1_RVT \memory_reg[6][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [7] ) ) ;
SDFFX1_RVT \memory_reg[6][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [6] ) ) ;
SDFFX1_RVT \memory_reg[6][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [5] ) ) ;
SDFFX1_RVT \memory_reg[6][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [4] ) ) ;
SDFFX1_RVT \memory_reg[6][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [3] ) ) ;
SDFFX1_RVT \memory_reg[6][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [2] ) ) ;
SDFFX1_RVT \memory_reg[6][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [1] ) ) ;
SDFFX1_RVT \memory_reg[6][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [0] ) ) ;
SDFFX1_RVT \memory_reg[5][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [8] ) ) ;
SDFFX1_RVT \memory_reg[5][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [7] ) ) ;
SDFFX1_RVT \memory_reg[5][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [6] ) ) ;
SDFFX1_RVT \memory_reg[5][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [5] ) ) ;
SDFFX1_RVT \memory_reg[5][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [4] ) ) ;
SDFFX1_RVT \memory_reg[5][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [3] ) ) ;
SDFFX1_RVT \memory_reg[5][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [2] ) ) ;
SDFFX1_RVT \memory_reg[5][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [1] ) ) ;
SDFFX1_RVT \memory_reg[5][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [0] ) ) ;
SDFFX1_RVT \memory_reg[4][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [8] ) ) ;
SDFFX1_RVT \memory_reg[4][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [7] ) ) ;
SDFFX1_RVT \memory_reg[4][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [6] ) ) ;
SDFFX1_RVT \memory_reg[4][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [5] ) ) ;
SDFFX1_RVT \memory_reg[4][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [4] ) ) ;
SDFFX1_RVT \memory_reg[4][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [3] ) ) ;
SDFFX1_RVT \memory_reg[4][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [2] ) ) ;
SDFFX1_RVT \memory_reg[4][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [1] ) ) ;
SDFFX1_RVT \memory_reg[4][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [0] ) ) ;
SDFFX1_RVT \memory_reg[3][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [8] ) ) ;
SDFFX1_RVT \memory_reg[3][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [7] ) ) ;
SDFFX1_RVT \memory_reg[3][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [6] ) ) ;
SDFFX1_RVT \memory_reg[3][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [5] ) ) ;
SDFFX1_RVT \memory_reg[3][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [4] ) ) ;
SDFFX1_RVT \memory_reg[3][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [3] ) ) ;
SDFFX1_RVT \memory_reg[3][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [2] ) ) ;
SDFFX1_RVT \memory_reg[3][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [1] ) ) ;
SDFFX1_RVT \memory_reg[3][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [0] ) ) ;
SDFFX1_RVT \memory_reg[2][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [8] ) ) ;
SDFFX1_RVT \memory_reg[2][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [7] ) ) ;
SDFFX1_RVT \memory_reg[2][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [6] ) ) ;
SDFFX1_RVT \memory_reg[2][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [5] ) ) ;
SDFFX1_RVT \memory_reg[2][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [4] ) ) ;
SDFFX1_RVT \memory_reg[2][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [3] ) ) ;
SDFFX1_RVT \memory_reg[2][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [2] ) ) ;
SDFFX1_RVT \memory_reg[2][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [1] ) ) ;
SDFFX1_RVT \memory_reg[2][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [0] ) ) ;
SDFFX1_RVT \memory_reg[1][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [8] ) ) ;
SDFFX1_RVT \memory_reg[1][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [7] ) ) ;
SDFFX1_RVT \memory_reg[1][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [6] ) ) ;
SDFFX1_RVT \memory_reg[1][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [5] ) ) ;
SDFFX1_RVT \memory_reg[1][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [4] ) ) ;
SDFFX1_RVT \memory_reg[1][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [3] ) ) ;
SDFFX1_RVT \memory_reg[1][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [2] ) ) ;
SDFFX1_RVT \memory_reg[1][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [1] ) ) ;
SDFFX1_RVT \memory_reg[1][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [0] ) ) ;
SDFFX1_RVT \memory_reg[0][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [8] ) ) ;
SDFFX1_RVT \memory_reg[0][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [7] ) ) ;
SDFFX1_RVT \memory_reg[0][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [6] ) ) ;
SDFFX1_RVT \memory_reg[0][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [5] ) ) ;
SDFFX1_RVT \memory_reg[0][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [4] ) ) ;
SDFFX1_RVT \memory_reg[0][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [3] ) ) ;
SDFFX1_RVT \memory_reg[0][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [2] ) ) ;
SDFFX1_RVT \memory_reg[0][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [1] ) ) ;
SDFFX1_RVT \memory_reg[0][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg ) , .Q ( \memory[0] [0] ) ) ;
NOR4X1_RVT ctmi_1376 ( .A1 ( ctmn_424 ) , .A2 ( ctmn_1653 ) , 
    .A3 ( ctmn_1658 ) , .A4 ( ctmn_1640 ) , .Y ( ctmn_1778 ) ) ;
AO22X1_HVT ctmi_1705 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1787 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1790 ) , .Y ( N66 ) ) ;
SDFFX1_RVT \write_ptr_reg[2] ( .D ( N44 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_write_ptr_reg ) , .Q ( write_ptr[2] ) , 
    .QN ( ctmn_1733 ) ) ;
SDFFX1_RVT \write_ptr_reg[1] ( .D ( N45 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_write_ptr_reg ) , .Q ( write_ptr[1] ) , 
    .QN ( ctmn_1734 ) ) ;
SDFFSSRX1_RVT \data_out_reg[7] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( phfnn_336 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[7] ) ) ;
SDFFSSRX1_RVT \data_out_reg[6] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1679 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[6] ) ) ;
SDFFX1_RVT \write_ptr_reg[0] ( .D ( N46 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_write_ptr_reg ) , .Q ( write_ptr[0] ) ) ;
SDFFSSRX1_RVT \data_out_reg[5] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1687 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[5] ) ) ;
SDFFSSRX1_RVT \data_out_reg[4] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1695 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[4] ) ) ;
SDFFSSRX1_RVT \data_out_reg[3] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1703 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[3] ) ) ;
SDFFSSRX1_RVT \data_out_reg[2] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( phfnn_337 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[2] ) ) ;
SDFFX1_RVT \read_ptr_reg[4] ( .D ( N57 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_read_ptr_reg ) , .Q ( read_ptr[4] ) , 
    .QN ( ctmn_1728 ) ) ;
SDFFX1_RVT \data_out_reg[0] ( .D ( N55 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[0] ) ) ;
SDFFX1_RVT \read_ptr_reg[3] ( .D ( N58 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_read_ptr_reg ) , .Q ( read_ptr[3] ) , 
    .QN ( ctmn_1634 ) ) ;
SDFFX1_RVT \data_out_reg[1] ( .D ( N54 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_data_out_reg ) , .Q ( data_out[1] ) ) ;
SDFFX1_RVT \read_ptr_reg[2] ( .D ( N59 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_read_ptr_reg ) , .Q ( read_ptr[2] ) , 
    .QN ( ctmn_1631 ) ) ;
SDFFX1_RVT \read_ptr_reg[1] ( .D ( N60 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_read_ptr_reg ) , .Q ( read_ptr[1] ) , 
    .QN ( ctmn_1632 ) ) ;
SDFFSSRX1_RVT \read_ptr_reg[0] ( .RSTB ( 1'b1 ) , .SETB ( ctmn_1633 ) , 
    .D ( ctmn_1669 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_read_ptr_reg ) , .Q ( ctmn_1633 ) , 
    .QN ( read_ptr[0] ) ) ;
SDFFX1_RVT \count_reg[0] ( .D ( N69 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[0] ) , 
    .QN ( ctmn_1796 ) ) ;
SDFFX1_RVT \count_reg[5] ( .D ( N64 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[5] ) ) ;
SDFFX1_RVT \count_reg[4] ( .D ( N65 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[4] ) ) ;
SDFFX1_RVT \count_reg[3] ( .D ( N66 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[3] ) ) ;
SDFFX1_RVT \count_reg[2] ( .D ( N67 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[2] ) ) ;
SDFFX1_RVT \count_reg[1] ( .D ( N68 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[1] ) ) ;
SDFFX1_RVT lfd_state_d1_reg ( .D ( ls_70 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33 ) , .Q ( lfd_state_d1 ) ) ;
SDFFX1_RVT \count_reg[6] ( .D ( N63 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_count_reg ) , .Q ( count[6] ) ) ;
SDFFX1_RVT \write_ptr_reg[3] ( .D ( N43 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_write_ptr_reg ) , .Q ( write_ptr[3] ) , 
    .QN ( ctmn_1731 ) ) ;
AND2X2_RVT ctmi_1631 ( .A1 ( phfnn_332 ) , .A2 ( lfd_state_d1 ) , .Y ( N2 ) ) ;
AO221X1_HVT ctmi_1621 ( .A1 ( phfnn_334 ) , .A2 ( ctmn_1748 ) , 
    .A3 ( phfnn_334 ) , .A4 ( ctmn_1665 ) , .A5 ( ctmn_1669 ) , .Y ( N62 ) ) ;
INVX1_RVT phfnr_buf_1104 ( .A ( ctmn_1739 ) , .Y ( phfnn_334 ) ) ;
OAI22X1_HVT ctmi_1722 ( .A1 ( ctmn_1798 ) , .A2 ( ctmn_1757 ) , 
    .A3 ( ctmn_1729 ) , .A4 ( ctmn_1760 ) , .Y ( N42 ) ) ;
NAND2X0_RVT ctmi_1723 ( .A1 ( ctmn_1760 ) , .A2 ( ctmn_1729 ) , 
    .Y ( ctmn_1798 ) ) ;
AOI22X1_HVT ctmi_1724 ( .A1 ( write_ptr[2] ) , .A2 ( ctmn_1759 ) , 
    .A3 ( ctmn_1733 ) , .A4 ( ctmn_1757 ) , .Y ( N44 ) ) ;
AO21X1_HVT ctmi_1700 ( .A1 ( count[4] ) , .A2 ( phfnn_331 ) , 
    .A3 ( ctmn_1780 ) , .Y ( ctmn_1781 ) ) ;
INVX1_RVT phfnr_buf_1097 ( .A ( ctmn_1766 ) , .Y ( phfnn_327 ) ) ;
OA21X1_HVT ctmi_1702 ( .A1 ( phfnn_341 ) , .A2 ( ctmn_1679 ) , 
    .A3 ( ctmn_1771 ) , .Y ( ctmn_1784 ) ) ;
INVX0_RVT phfnr_buf_1098 ( .A ( ctmn_1785 ) , .Y ( phfnn_328 ) ) ;
INVX0_RVT phfnr_buf_1111 ( .A ( N166 ) , .Y ( phfnn_341 ) ) ;
AO221X1_HVT ctmi_1706 ( .A1 ( count[3] ) , .A2 ( ctmn_1785 ) , 
    .A3 ( count[3] ) , .A4 ( count[2] ) , .A5 ( ctmn_1786 ) , 
    .Y ( ctmn_1787 ) ) ;
OR2X1_HVT ctmi_1707 ( .A1 ( count[0] ) , .A2 ( count[1] ) , .Y ( ctmn_1785 ) ) ;
INVX0_RVT phfnr_buf_1099 ( .A ( ctmn_219 ) , .Y ( phfnn_329 ) ) ;
OA21X1_HVT ctmi_1709 ( .A1 ( phfnn_339 ) , .A2 ( ctmn_1687 ) , .A3 ( N166 ) , 
    .Y ( ctmn_1790 ) ) ;
NAND3X0_RVT ctmi_1710 ( .A1 ( ctmn_1695 ) , .A2 ( ctmn_1703 ) , 
    .A3 ( phfnn_337 ) , .Y ( ctmn_1788 ) ) ;
INVX0_RVT phfnr_buf_1109 ( .A ( ctmn_1788 ) , .Y ( phfnn_339 ) ) ;
MUX21X1_RVT ctmi_1713 ( .A1 ( phfnn_328 ) , .A2 ( ctmn_1785 ) , 
    .S0 ( count[2] ) , .Y ( ctmn_1792 ) ) ;
INVX2_RVT phfnr_buf_1100 ( .A ( ctmn_1638 ) , .Y ( phfnn_330 ) ) ;
OA21X1_HVT ctmi_1715 ( .A1 ( phfnn_338 ) , .A2 ( ctmn_1695 ) , 
    .A3 ( ctmn_1788 ) , .Y ( ctmn_1793 ) ) ;
AO22X1_HVT ctmi_1716 ( .A1 ( ctmn_1794 ) , .A2 ( ctmn_1769 ) , 
    .A3 ( ctmn_1795 ) , .A4 ( ctmn_1775 ) , .Y ( N68 ) ) ;
OA21X1_HVT ctmi_1717 ( .A1 ( ctmn_1703 ) , .A2 ( phfnn_337 ) , 
    .A3 ( ctmn_1767 ) , .Y ( ctmn_1794 ) ) ;
AO22X1_RVT ctmi_920 ( .A1 ( ctmn_1728 ) , .A2 ( ctmn_1729 ) , 
    .A3 ( write_ptr[4] ) , .A4 ( read_ptr[4] ) , .Y ( ctmn_219 ) ) ;
AO21X1_HVT ctmi_1718 ( .A1 ( count[0] ) , .A2 ( count[1] ) , 
    .A3 ( phfnn_328 ) , .Y ( ctmn_1795 ) ) ;
AO22X1_HVT ctmi_1719 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1796 ) , 
    .A3 ( ctmn_1797 ) , .A4 ( ctmn_1767 ) , .Y ( N69 ) ) ;
AND2X1_RVT A1283 ( .A1 ( ctmn_215 ) , .A2 ( ctmn_216 ) , .Y ( ctmn_217 ) ) ;
INVX0_RVT phfnr_buf_1101 ( .A ( ctmn_1786 ) , .Y ( phfnn_331 ) ) ;
AO221X1_RVT ctmi_1388 ( .A1 ( ctmn_1725 ) , .A2 ( ctmn_1725 ) , 
    .A3 ( ctmn_1654 ) , .A4 ( \memory[14] [0] ) , .A5 ( ctmn_1726 ) , 
    .Y ( ctmn_1727 ) ) ;
AND2X1_LVT A1357 ( .A1 ( ctmn_217 ) , .A2 ( ctmn_222 ) , .Y ( empty ) ) ;
AO22X1_HVT ctmi_1377 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [7] ) , 
    .A3 ( \memory[6] [7] ) , .A4 ( ctmn_1641 ) , .Y ( ctmn_424 ) ) ;
INVX1_RVT phfnr_buf_1107 ( .A ( ctmn_1797 ) , .Y ( phfnn_337 ) ) ;
OA21X1_HVT ctmi_1589 ( .A1 ( ctmn_1715 ) , .A2 ( ctmn_1719 ) , 
    .A3 ( ctmn_1671 ) , .Y ( N54 ) ) ;
OA21X1_HVT ctmi_1598 ( .A1 ( ctmn_1723 ) , .A2 ( ctmn_1727 ) , 
    .A3 ( ctmn_1671 ) , .Y ( N55 ) ) ;
AO221X1_HVT ctmi_1599 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [0] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [0] ) , .A5 ( ctmn_1722 ) , 
    .Y ( ctmn_1723 ) ) ;
AO221X1_HVT ctmi_1600 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [0] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [0] ) , .A5 ( ctmn_1721 ) , 
    .Y ( ctmn_1722 ) ) ;
AO221X1_HVT ctmi_1601 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [0] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [0] ) , .A5 ( ctmn_1720 ) , 
    .Y ( ctmn_1721 ) ) ;
AO22X1_HVT ctmi_1602 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [0] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [0] ) , .Y ( ctmn_1720 ) ) ;
AO221X1_RVT ctmi_1389 ( .A1 ( ctmn_1717 ) , .A2 ( ctmn_1717 ) , 
    .A3 ( ctmn_1654 ) , .A4 ( \memory[14] [1] ) , .A5 ( ctmn_1718 ) , 
    .Y ( ctmn_1719 ) ) ;
AO221X1_HVT ctmi_1604 ( .A1 ( ctmn_1641 ) , .A2 ( \memory[6] [0] ) , 
    .A3 ( ctmn_1635 ) , .A4 ( \memory[0] [0] ) , .A5 ( ctmn_1724 ) , 
    .Y ( ctmn_1725 ) ) ;
AO22X1_HVT ctmi_1605 ( .A1 ( ctmn_1636 ) , .A2 ( \memory[12] [0] ) , 
    .A3 ( phfnn_330 ) , .A4 ( \memory[15] [0] ) , .Y ( ctmn_1724 ) ) ;
AO222X1_RVT ctmi_1606 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [0] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [0] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [0] ) , .Y ( ctmn_1726 ) ) ;
NOR2X0_HVT ctmi_924 ( .A1 ( count[0] ) , .A2 ( ctmn_1661 ) , 
    .Y ( ctmn_1786 ) ) ;
MUX21X1_LVT ctmi_894 ( .A1 ( ctmn_1633 ) , .A2 ( read_ptr[0] ) , 
    .S0 ( write_ptr[0] ) , .Y ( ctmn_215 ) ) ;
INVX2_RVT phfnr_buf_1102 ( .A ( ctmn_1669 ) , .Y ( phfnn_332 ) ) ;
INVX0_RVT phfnr_buf_1103 ( .A ( ctmn_1780 ) , .Y ( phfnn_333 ) ) ;
AND3X1_RVT ctmi_902 ( .A1 ( ctmn_220 ) , .A2 ( phfnn_329 ) , 
    .A3 ( ctmn_221 ) , .Y ( ctmn_223 ) ) ;
OA22X1_RVT ctmi_895 ( .A1 ( ctmn_1634 ) , .A2 ( write_ptr[3] ) , 
    .A3 ( ctmn_1632 ) , .A4 ( write_ptr[1] ) , .Y ( ctmn_216 ) ) ;
INVX1_RVT A663 ( .A ( full ) , .Y ( ctmn_1750 ) ) ;
NOR2X0_HVT ctmi_926 ( .A1 ( count[4] ) , .A2 ( phfnn_331 ) , 
    .Y ( ctmn_1780 ) ) ;
AND3X1_LVT ctmi_896 ( .A1 ( ctmn_219 ) , .A2 ( ctmn_220 ) , .A3 ( ctmn_221 ) , 
    .Y ( ctmn_222 ) ) ;
INVX0_RVT phfnr_buf_1105 ( .A ( ctmn_1776 ) , .Y ( phfnn_335 ) ) ;
INVX1_RVT phfnr_buf_1106 ( .A ( ctmn_1778 ) , .Y ( phfnn_336 ) ) ;
OR2X1_RVT ctmi_899 ( .A1 ( read_ptr[3] ) , .A2 ( ctmn_1731 ) , 
    .Y ( ctmn_220 ) ) ;
NAND2X0_RVT ctmi_1619 ( .A1 ( ctmn_1671 ) , .A2 ( ctmn_1739 ) , .Y ( N47 ) ) ;
NAND2X2_HVT ctmi_1620 ( .A1 ( ls_39 ) , .A2 ( ctmn_1738 ) , .Y ( ctmn_1739 ) ) ;
AO222X1_RVT ctmi_1624 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [8] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [8] ) , .A5 ( phfnn_330 ) , 
    .A6 ( \memory[15] [8] ) , .Y ( ctmn_1741 ) ) ;
AO221X1_HVT ctmi_1626 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [8] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [8] ) , .A5 ( ctmn_1744 ) , 
    .Y ( ctmn_1745 ) ) ;
AO221X1_HVT ctmi_1627 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [8] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [8] ) , .A5 ( ctmn_1743 ) , 
    .Y ( ctmn_1744 ) ) ;
AO221X1_HVT ctmi_1628 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [8] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [8] ) , .A5 ( ctmn_1742 ) , 
    .Y ( ctmn_1743 ) ) ;
AO22X1_HVT ctmi_1629 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [8] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [8] ) , .Y ( ctmn_1742 ) ) ;
AO222X1_RVT ctmi_1630 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [8] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [8] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [8] ) , .Y ( ctmn_1746 ) ) ;
AND2X2_RVT ctmi_1632 ( .A1 ( phfnn_332 ) , .A2 ( ls_43 ) , .Y ( N3 ) ) ;
AND2X2_RVT ctmi_1633 ( .A1 ( phfnn_332 ) , .A2 ( ls_46 ) , .Y ( N4 ) ) ;
AND2X2_RVT ctmi_1634 ( .A1 ( phfnn_332 ) , .A2 ( ls_49 ) , .Y ( N5 ) ) ;
OA21X1_HVT ctmi_1643 ( .A1 ( ctmn_1753 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( phfnn_332 ) , .Y ( N45 ) ) ;
AND2X2_RVT ctmi_1635 ( .A1 ( phfnn_332 ) , .A2 ( ls_52 ) , .Y ( N6 ) ) ;
AND2X2_RVT ctmi_1636 ( .A1 ( phfnn_332 ) , .A2 ( ls_55 ) , .Y ( N7 ) ) ;
AND2X2_RVT ctmi_1637 ( .A1 ( phfnn_332 ) , .A2 ( ls_58 ) , .Y ( N8 ) ) ;
AND2X2_RVT ctmi_1638 ( .A1 ( phfnn_332 ) , .A2 ( ls_61 ) , .Y ( N9 ) ) ;
AND2X2_RVT ctmi_1639 ( .A1 ( phfnn_332 ) , .A2 ( ls_64 ) , .Y ( N10 ) ) ;
OA222X1_RVT ctmi_900 ( .A1 ( read_ptr[1] ) , .A2 ( ctmn_1734 ) , 
    .A3 ( write_ptr[2] ) , .A4 ( ctmn_1631 ) , .A5 ( read_ptr[2] ) , 
    .A6 ( ctmn_1733 ) , .Y ( ctmn_221 ) ) ;
NOR2X0_HVT ctmi_927 ( .A1 ( count[5] ) , .A2 ( phfnn_333 ) , 
    .Y ( ctmn_1776 ) ) ;
INVX1_RVT phfnr_buf_1108 ( .A ( ctmn_1769 ) , .Y ( phfnn_338 ) ) ;
AND2X1_RVT ctmi_1644 ( .A1 ( write_ptr[1] ) , .A2 ( ctmn_1752 ) , 
    .Y ( ctmn_1753 ) ) ;
NOR2X0_HVT ctmi_1645 ( .A1 ( ctmn_1751 ) , .A2 ( write_ptr[0] ) , 
    .Y ( ctmn_1752 ) ) ;
NAND2X0_RVT ctmi_1646 ( .A1 ( ls_72 ) , .A2 ( ctmn_1750 ) , .Y ( ctmn_1751 ) ) ;
AND4X1_RVT ctmi_1647 ( .A1 ( ctmn_1750 ) , .A2 ( ctmn_1734 ) , 
    .A3 ( write_ptr[0] ) , .A4 ( ls_72 ) , .Y ( ctmn_1754 ) ) ;
AND2X1_HVT ctmi_1648 ( .A1 ( phfnn_332 ) , .A2 ( ctmn_1752 ) , .Y ( N46 ) ) ;
AND2X1_HVT ctmi_1649 ( .A1 ( N41 ) , .A2 ( ctmn_1760 ) , .Y ( N1 ) ) ;
NAND2X0_RVT ctmi_1650 ( .A1 ( phfnn_332 ) , .A2 ( ctmn_1751 ) , .Y ( N41 ) ) ;
OA21X1_RVT ctmi_1651 ( .A1 ( ctmn_1757 ) , .A2 ( ctmn_1758 ) , 
    .A3 ( ctmn_1759 ) , .Y ( ctmn_1760 ) ) ;
NAND2X2_HVT ctmi_1652 ( .A1 ( phfnn_332 ) , .A2 ( ctmn_1756 ) , 
    .Y ( ctmn_1757 ) ) ;
NAND2X0_RVT ctmi_1675 ( .A1 ( phfnn_332 ) , .A2 ( ctmn_1739 ) , .Y ( N56 ) ) ;
AO21X1_HVT ctmi_1674 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N39 ) ) ;
OA221X1_HVT ctmi_1676 ( .A1 ( ctmn_1728 ) , .A2 ( ctmn_1638 ) , 
    .A3 ( read_ptr[4] ) , .A4 ( phfnn_330 ) , .A5 ( phfnn_332 ) , .Y ( N57 ) ) ;
AO21X1_HVT ctmi_1673 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N37 ) ) ;
AND4X1_RVT ctmi_1653 ( .A1 ( ctmn_1750 ) , .A2 ( write_ptr[0] ) , 
    .A3 ( write_ptr[1] ) , .A4 ( ls_72 ) , .Y ( ctmn_1756 ) ) ;
AND2X1_RVT ctmi_1654 ( .A1 ( write_ptr[3] ) , .A2 ( write_ptr[2] ) , 
    .Y ( ctmn_1758 ) ) ;
NOR2X0_HVT ctmi_1655 ( .A1 ( N45 ) , .A2 ( N46 ) , .Y ( ctmn_1759 ) ) ;
AO21X1_HVT ctmi_1656 ( .A1 ( ctmn_1758 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N11 ) ) ;
AO21X1_HVT ctmi_1657 ( .A1 ( ctmn_1758 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N13 ) ) ;
AO21X1_HVT ctmi_1658 ( .A1 ( ctmn_1761 ) , .A2 ( ctmn_1758 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N15 ) ) ;
AND2X1_RVT ctmi_1659 ( .A1 ( ctmn_1734 ) , .A2 ( ctmn_1752 ) , 
    .Y ( ctmn_1761 ) ) ;
AO21X1_HVT ctmi_1660 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N17 ) ) ;
AND2X1_HVT ctmi_1661 ( .A1 ( ctmn_1733 ) , .A2 ( write_ptr[3] ) , 
    .Y ( ctmn_1762 ) ) ;
AO21X1_HVT ctmi_1662 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N19 ) ) ;
OA221X1_HVT ctmi_1677 ( .A1 ( ctmn_1657 ) , .A2 ( ctmn_1638 ) , 
    .A3 ( ctmn_1657 ) , .A4 ( read_ptr[3] ) , .A5 ( phfnn_332 ) , .Y ( N58 ) ) ;
AO21X1_HVT ctmi_1663 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N21 ) ) ;
AO21X1_HVT ctmi_1664 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N23 ) ) ;
AO21X1_HVT ctmi_1665 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N25 ) ) ;
AND2X1_HVT ctmi_1666 ( .A1 ( ctmn_1731 ) , .A2 ( write_ptr[2] ) , 
    .Y ( ctmn_1763 ) ) ;
AO21X1_HVT ctmi_1667 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N27 ) ) ;
AO21X1_HVT ctmi_1668 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N29 ) ) ;
AO21X1_HVT ctmi_1669 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N31 ) ) ;
AO21X1_HVT ctmi_1670 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N33 ) ) ;
AND2X1_HVT ctmi_1671 ( .A1 ( ctmn_1731 ) , .A2 ( ctmn_1733 ) , 
    .Y ( ctmn_1764 ) ) ;
AO21X1_HVT ctmi_1672 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N35 ) ) ;
OA221X1_HVT ctmi_1678 ( .A1 ( phfnn_327 ) , .A2 ( ctmn_1631 ) , 
    .A3 ( ctmn_1766 ) , .A4 ( read_ptr[2] ) , .A5 ( phfnn_332 ) , .Y ( N59 ) ) ;
INVX0_RVT phfnr_buf_1110 ( .A ( ctmn_1771 ) , .Y ( phfnn_340 ) ) ;
AND2X1_RVT A1284 ( .A1 ( ctmn_217 ) , .A2 ( ctmn_223 ) , .Y ( full ) ) ;
AO221X1_RVT ctmi_1391 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [8] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [8] ) , .A5 ( ctmn_430 ) , 
    .Y ( ctmn_1748 ) ) ;
INVX0_RVT A1170 ( .A ( empty ) , .Y ( ctmn_1738 ) ) ;
AOI221X1_HVT ctmi_1683 ( .A1 ( ctmn_1731 ) , .A2 ( ctmn_1733 ) , 
    .A3 ( ctmn_1731 ) , .A4 ( ctmn_1757 ) , .A5 ( ctmn_1760 ) , .Y ( N43 ) ) ;
AO22X1_HVT ctmi_1684 ( .A1 ( ctmn_1768 ) , .A2 ( phfnn_340 ) , 
    .A3 ( ctmn_1773 ) , .A4 ( ctmn_1775 ) , .Y ( N63 ) ) ;
AND2X1_HVT ctmi_1685 ( .A1 ( phfnn_336 ) , .A2 ( ctmn_1767 ) , 
    .Y ( ctmn_1768 ) ) ;
AND3X1_RVT ctmi_1686 ( .A1 ( ctmn_1748 ) , .A2 ( phfnn_332 ) , 
    .A3 ( phfnn_334 ) , .Y ( ctmn_1767 ) ) ;
NAND4X1_HVT ctmi_1687 ( .A1 ( phfnn_338 ) , .A2 ( ctmn_1679 ) , 
    .A3 ( ctmn_1687 ) , .A4 ( ctmn_1695 ) , .Y ( ctmn_1771 ) ) ;
NAND2X0_RVT ctmi_1688 ( .A1 ( ctmn_1703 ) , .A2 ( phfnn_337 ) , 
    .Y ( ctmn_1769 ) ) ;
AO221X1_RVT ctmi_1378 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [6] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [6] ) , .A5 ( ctmn_425 ) , 
    .Y ( ctmn_1679 ) ) ;
OR3X1_HVT ctmi_1379 ( .A1 ( ctmn_1676 ) , .A2 ( ctmn_1677 ) , 
    .A3 ( ctmn_1672 ) , .Y ( ctmn_425 ) ) ;
AND2X1_HVT ctmi_1691 ( .A1 ( phfnn_335 ) , .A2 ( count[6] ) , 
    .Y ( ctmn_1773 ) ) ;
NOR4X1_RVT ctmi_1692 ( .A1 ( ctmn_1669 ) , .A2 ( ctmn_1739 ) , 
    .A3 ( ctmn_1748 ) , .A4 ( ctmn_1774 ) , .Y ( ctmn_1775 ) ) ;
NOR4X1_HVT ctmi_1693 ( .A1 ( ctmn_1661 ) , .A2 ( count[4] ) , 
    .A3 ( count[5] ) , .A4 ( count[6] ) , .Y ( ctmn_1774 ) ) ;
AO221X1_HVT ctmi_1694 ( .A1 ( ctmn_1768 ) , .A2 ( ctmn_1771 ) , 
    .A3 ( ctmn_1777 ) , .A4 ( ctmn_1775 ) , .A5 ( ctmn_1779 ) , .Y ( N64 ) ) ;
AO21X1_HVT ctmi_1695 ( .A1 ( count[5] ) , .A2 ( phfnn_333 ) , 
    .A3 ( ctmn_1776 ) , .Y ( ctmn_1777 ) ) ;
AO221X1_RVT ctmi_1380 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [5] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [5] ) , .A5 ( ctmn_426 ) , 
    .Y ( ctmn_1687 ) ) ;
AND3X1_RVT ctmi_1697 ( .A1 ( ctmn_1778 ) , .A2 ( ctmn_1767 ) , 
    .A3 ( phfnn_340 ) , .Y ( ctmn_1779 ) ) ;
OR3X1_HVT ctmi_1381 ( .A1 ( ctmn_1684 ) , .A2 ( ctmn_1685 ) , 
    .A3 ( ctmn_1680 ) , .Y ( ctmn_426 ) ) ;
SDFFX1_RVT \memory_reg[15][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [8] ) ) ;
AO221X1_RVT ctmi_1382 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [4] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [4] ) , .A5 ( ctmn_427 ) , 
    .Y ( ctmn_1695 ) ) ;
AO222X1_RVT ctmi_1504 ( .A1 ( \memory[0] [7] ) , .A2 ( ctmn_1635 ) , 
    .A3 ( \memory[12] [7] ) , .A4 ( ctmn_1636 ) , .A5 ( \memory[15] [7] ) , 
    .A6 ( phfnn_330 ) , .Y ( ctmn_1640 ) ) ;
AND4X1_RVT ctmi_1505 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( ctmn_1634 ) , .Y ( ctmn_1635 ) ) ;
OR3X1_HVT ctmi_1383 ( .A1 ( ctmn_1692 ) , .A2 ( ctmn_1693 ) , 
    .A3 ( ctmn_1688 ) , .Y ( ctmn_427 ) ) ;
AND2X1_HVT ctmi_931 ( .A1 ( read_ptr[1] ) , .A2 ( read_ptr[0] ) , 
    .Y ( ctmn_1766 ) ) ;
AO221X1_RVT ctmi_1384 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [3] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [3] ) , .A5 ( ctmn_428 ) , 
    .Y ( ctmn_1703 ) ) ;
OR3X1_HVT ctmi_1385 ( .A1 ( ctmn_1700 ) , .A2 ( ctmn_1701 ) , 
    .A3 ( ctmn_1696 ) , .Y ( ctmn_428 ) ) ;
AND4X1_RVT ctmi_1510 ( .A1 ( ctmn_1633 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[2] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1636 ) ) ;
NAND3X1_HVT ctmi_1511 ( .A1 ( ctmn_1637 ) , .A2 ( read_ptr[0] ) , 
    .A3 ( read_ptr[3] ) , .Y ( ctmn_1638 ) ) ;
AND2X1_HVT ctmi_1512 ( .A1 ( read_ptr[2] ) , .A2 ( read_ptr[1] ) , 
    .Y ( ctmn_1637 ) ) ;
NOR4X1_RVT ctmi_1386 ( .A1 ( ctmn_429 ) , .A2 ( ctmn_1708 ) , 
    .A3 ( ctmn_1709 ) , .A4 ( ctmn_1704 ) , .Y ( ctmn_1797 ) ) ;
AND3X1_RVT ctmi_1514 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1633 ) , 
    .A3 ( ctmn_1637 ) , .Y ( ctmn_1641 ) ) ;
AO22X1_HVT ctmi_1387 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [2] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [2] ) , .Y ( ctmn_429 ) ) ;
AO221X1_HVT ctmi_1516 ( .A1 ( \memory[10] [7] ) , .A2 ( ctmn_1642 ) , 
    .A3 ( \memory[5] [7] ) , .A4 ( ctmn_1643 ) , .A5 ( ctmn_1652 ) , 
    .Y ( ctmn_1653 ) ) ;
AND4X1_RVT ctmi_1517 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1633 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1642 ) ) ;
AND4X1_RVT ctmi_1518 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[2] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1643 ) ) ;
AO221X1_RVT ctmi_1519 ( .A1 ( \memory[2] [7] ) , .A2 ( ctmn_1644 ) , 
    .A3 ( \memory[9] [7] ) , .A4 ( ctmn_1645 ) , .A5 ( ctmn_1651 ) , 
    .Y ( ctmn_1652 ) ) ;
AND4X1_RVT ctmi_1520 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1634 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[1] ) , .Y ( ctmn_1644 ) ) ;
AND4X1_RVT ctmi_1521 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1645 ) ) ;
AO221X1_HVT ctmi_1522 ( .A1 ( \memory[11] [7] ) , .A2 ( ctmn_1646 ) , 
    .A3 ( \memory[8] [7] ) , .A4 ( ctmn_1647 ) , .A5 ( ctmn_1650 ) , 
    .Y ( ctmn_1651 ) ) ;
AND4X1_RVT ctmi_1523 ( .A1 ( ctmn_1631 ) , .A2 ( read_ptr[1] ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1646 ) ) ;
AND4X1_RVT ctmi_1524 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1647 ) ) ;
AO22X1_HVT ctmi_1525 ( .A1 ( \memory[1] [7] ) , .A2 ( ctmn_1648 ) , 
    .A3 ( \memory[13] [7] ) , .A4 ( ctmn_1649 ) , .Y ( ctmn_1650 ) ) ;
AND4X1_RVT ctmi_1526 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1634 ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1648 ) ) ;
AND4X1_RVT ctmi_1527 ( .A1 ( ctmn_1632 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1649 ) ) ;
AND3X1_RVT ctmi_1528 ( .A1 ( ctmn_1633 ) , .A2 ( ctmn_1637 ) , 
    .A3 ( read_ptr[3] ) , .Y ( ctmn_1654 ) ) ;
AO222X1_RVT ctmi_1529 ( .A1 ( \memory[3] [7] ) , .A2 ( ctmn_1655 ) , 
    .A3 ( \memory[4] [7] ) , .A4 ( ctmn_1656 ) , .A5 ( \memory[7] [7] ) , 
    .A6 ( ctmn_1657 ) , .Y ( ctmn_1658 ) ) ;
AND4X1_RVT ctmi_1530 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1634 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1655 ) ) ;
AND4X1_RVT ctmi_1531 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[2] ) , .Y ( ctmn_1656 ) ) ;
AND4X1_RVT ctmi_1532 ( .A1 ( ctmn_1634 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1657 ) ) ;
OA221X1_RVT ctmi_1533 ( .A1 ( ctmn_1665 ) , .A2 ( ctmn_1666 ) , 
    .A3 ( ctmn_1665 ) , .A4 ( ctmn_1667 ) , .A5 ( phfnn_332 ) , 
    .Y ( ctmn_1671 ) ) ;
OR2X1_HVT ctmi_1534 ( .A1 ( count[6] ) , .A2 ( phfnn_335 ) , 
    .Y ( ctmn_1665 ) ) ;
OA221X1_HVT ctmi_1390 ( .A1 ( phfnn_327 ) , .A2 ( phfnn_327 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .A5 ( phfnn_332 ) , 
    .Y ( N60 ) ) ;
OR3X1_HVT ctmi_1392 ( .A1 ( ctmn_1745 ) , .A2 ( ctmn_1746 ) , 
    .A3 ( ctmn_1741 ) , .Y ( ctmn_430 ) ) ;
OR3X1_HVT ctmi_1538 ( .A1 ( count[1] ) , .A2 ( count[3] ) , .A3 ( count[2] ) , 
    .Y ( ctmn_1661 ) ) ;
NOR4X1_HVT ctmi_1539 ( .A1 ( data_out[2] ) , .A2 ( data_out[1] ) , 
    .A3 ( data_out[0] ) , .A4 ( data_out[7] ) , .Y ( ctmn_1666 ) ) ;
NOR4X1_HVT ctmi_1540 ( .A1 ( data_out[6] ) , .A2 ( data_out[5] ) , 
    .A3 ( data_out[4] ) , .A4 ( data_out[3] ) , .Y ( ctmn_1667 ) ) ;
NAND2X4_HVT ctmi_1541 ( .A1 ( ls_36 ) , .A2 ( ctmn_1668 ) , .Y ( ctmn_1669 ) ) ;
INVX0_RVT ctmi_1542 ( .A ( ls_75 ) , .Y ( ctmn_1668 ) ) ;
AO222X1_RVT ctmi_1546 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [6] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [6] ) , .A5 ( phfnn_330 ) , 
    .A6 ( \memory[15] [6] ) , .Y ( ctmn_1672 ) ) ;
AO221X1_HVT ctmi_1548 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [6] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [6] ) , .A5 ( ctmn_1675 ) , 
    .Y ( ctmn_1676 ) ) ;
AO221X1_HVT ctmi_1549 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [6] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [6] ) , .A5 ( ctmn_1674 ) , 
    .Y ( ctmn_1675 ) ) ;
AO221X1_HVT ctmi_1550 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [6] ) , 
    .A3 ( \memory[8] [6] ) , .A4 ( ctmn_1647 ) , .A5 ( ctmn_1673 ) , 
    .Y ( ctmn_1674 ) ) ;
AO22X1_HVT ctmi_1551 ( .A1 ( \memory[1] [6] ) , .A2 ( ctmn_1648 ) , 
    .A3 ( \memory[13] [6] ) , .A4 ( ctmn_1649 ) , .Y ( ctmn_1673 ) ) ;
AO222X1_RVT ctmi_1552 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [6] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [6] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [6] ) , .Y ( ctmn_1677 ) ) ;
AO222X1_RVT ctmi_1555 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [5] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [5] ) , .A5 ( phfnn_330 ) , 
    .A6 ( \memory[15] [5] ) , .Y ( ctmn_1680 ) ) ;
AO221X1_HVT ctmi_1557 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [5] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [5] ) , .A5 ( ctmn_1683 ) , 
    .Y ( ctmn_1684 ) ) ;
AO221X1_RVT ctmi_1558 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [5] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [5] ) , .A5 ( ctmn_1682 ) , 
    .Y ( ctmn_1683 ) ) ;
AO221X1_HVT ctmi_1559 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [5] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [5] ) , .A5 ( ctmn_1681 ) , 
    .Y ( ctmn_1682 ) ) ;
AO22X1_HVT ctmi_1560 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [5] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [5] ) , .Y ( ctmn_1681 ) ) ;
AO222X1_RVT ctmi_1561 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [5] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [5] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [5] ) , .Y ( ctmn_1685 ) ) ;
AO222X1_RVT ctmi_1564 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [4] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [4] ) , .A5 ( phfnn_330 ) , 
    .A6 ( \memory[15] [4] ) , .Y ( ctmn_1688 ) ) ;
AO221X1_HVT ctmi_1566 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [4] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [4] ) , .A5 ( ctmn_1691 ) , 
    .Y ( ctmn_1692 ) ) ;
AO221X1_HVT ctmi_1567 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [4] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [4] ) , .A5 ( ctmn_1690 ) , 
    .Y ( ctmn_1691 ) ) ;
AO221X1_HVT ctmi_1568 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [4] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [4] ) , .A5 ( ctmn_1689 ) , 
    .Y ( ctmn_1690 ) ) ;
AO22X1_HVT ctmi_1569 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [4] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [4] ) , .Y ( ctmn_1689 ) ) ;
AO222X1_RVT ctmi_1570 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [4] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [4] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [4] ) , .Y ( ctmn_1693 ) ) ;
AO222X1_RVT ctmi_1573 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [3] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [3] ) , .A5 ( phfnn_330 ) , 
    .A6 ( \memory[15] [3] ) , .Y ( ctmn_1696 ) ) ;
AO221X1_HVT ctmi_1575 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [3] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [3] ) , .A5 ( ctmn_1699 ) , 
    .Y ( ctmn_1700 ) ) ;
AO221X1_HVT ctmi_1576 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [3] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [3] ) , .A5 ( ctmn_1698 ) , 
    .Y ( ctmn_1699 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_router_clock_UPF_LS ( 
    .A ( router_clock ) , .Y ( ls_33 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_resetn_UPF_LS ( .A ( resetn ) , 
    .Y ( ls_36 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_read_enb_UPF_LS ( .A ( read_enb ) , 
    .Y ( ls_39 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[7]_UPF_LS ( 
    .A ( data_in[7] ) , .Y ( ls_43 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[6]_UPF_LS ( 
    .A ( data_in[6] ) , .Y ( ls_46 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[5]_UPF_LS ( 
    .A ( data_in[5] ) , .Y ( ls_49 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[4]_UPF_LS ( 
    .A ( data_in[4] ) , .Y ( ls_52 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[3]_UPF_LS ( 
    .A ( data_in[3] ) , .Y ( ls_55 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[2]_UPF_LS ( 
    .A ( data_in[2] ) , .Y ( ls_58 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[1]_UPF_LS ( 
    .A ( data_in[1] ) , .Y ( ls_61 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[0]_UPF_LS ( 
    .A ( data_in[0] ) , .Y ( ls_64 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_lfd_state_UPF_LS ( .A ( lfd_state ) , 
    .Y ( ls_70 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_write_enb_UPF_LS ( .A ( write_enb ) , 
    .Y ( ls_72 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_soft_reset_UPF_LS ( 
    .A ( soft_reset ) , .Y ( ls_75 ) ) ;
AO221X1_HVT ctmi_1577 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [3] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [3] ) , .A5 ( ctmn_1697 ) , 
    .Y ( ctmn_1698 ) ) ;
AO22X1_HVT ctmi_1578 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [3] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [3] ) , .Y ( ctmn_1697 ) ) ;
CGLPPRX2_HVT clock_gate_count_reg ( .CLK ( ls_33 ) , .EN ( N62 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_count_reg ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( ls_33 ) , .EN ( N47 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_data_out_reg ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg ( .CLK ( ls_33 ) , .EN ( N39 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_1 ( .CLK ( ls_33 ) , .EN ( N19 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_1 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_2 ( .CLK ( ls_33 ) , .EN ( N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_2 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_3 ( .CLK ( ls_33 ) , .EN ( N15 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_3 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_4 ( .CLK ( ls_33 ) , .EN ( N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_4 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_5 ( .CLK ( ls_33 ) , .EN ( N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_5 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_6 ( .CLK ( ls_33 ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_6 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_7 ( .CLK ( ls_33 ) , .EN ( N37 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_7 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_8 ( .CLK ( ls_33 ) , .EN ( N35 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_8 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_9 ( .CLK ( ls_33 ) , .EN ( N33 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_9 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_10 ( .CLK ( ls_33 ) , .EN ( N31 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_10 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_11 ( .CLK ( ls_33 ) , .EN ( N29 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_11 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_12 ( .CLK ( ls_33 ) , .EN ( N27 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_12 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_13 ( .CLK ( ls_33 ) , .EN ( N25 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_13 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_14 ( .CLK ( ls_33 ) , .EN ( N23 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_14 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_15 ( .CLK ( ls_33 ) , .EN ( N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_memory_reg_15 ) ) ;
CGLPPRX2_HVT clock_gate_read_ptr_reg ( .CLK ( ls_33 ) , .EN ( N56 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_read_ptr_reg ) ) ;
CGLPPRX2_HVT clock_gate_write_ptr_reg ( .CLK ( ls_33 ) , .EN ( N41 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_33_clock_gate_write_ptr_reg ) ) ;
AO222X1_RVT ctmi_1579 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [3] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [3] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [3] ) , .Y ( ctmn_1701 ) ) ;
AO222X1_RVT ctmi_1582 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [2] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [2] ) , .A5 ( phfnn_330 ) , 
    .A6 ( \memory[15] [2] ) , .Y ( ctmn_1704 ) ) ;
AO221X1_HVT ctmi_1584 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [2] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [2] ) , .A5 ( ctmn_1707 ) , 
    .Y ( ctmn_1708 ) ) ;
AO221X1_HVT ctmi_1585 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [2] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [2] ) , .A5 ( ctmn_1706 ) , 
    .Y ( ctmn_1707 ) ) ;
AO221X1_HVT ctmi_1586 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [2] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [2] ) , .A5 ( ctmn_1705 ) , 
    .Y ( ctmn_1706 ) ) ;
AO22X1_HVT ctmi_1587 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [2] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [2] ) , .Y ( ctmn_1705 ) ) ;
AO222X1_RVT ctmi_1588 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [2] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [2] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [2] ) , .Y ( ctmn_1709 ) ) ;
AO221X1_HVT ctmi_1590 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [1] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [1] ) , .A5 ( ctmn_1714 ) , 
    .Y ( ctmn_1715 ) ) ;
AO221X1_HVT ctmi_1591 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [1] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [1] ) , .A5 ( ctmn_1713 ) , 
    .Y ( ctmn_1714 ) ) ;
AO221X1_HVT ctmi_1592 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [1] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [1] ) , .A5 ( ctmn_1712 ) , 
    .Y ( ctmn_1713 ) ) ;
AO22X1_HVT ctmi_1593 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [1] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [1] ) , .Y ( ctmn_1712 ) ) ;
AO221X1_HVT ctmi_1595 ( .A1 ( ctmn_1641 ) , .A2 ( \memory[6] [1] ) , 
    .A3 ( ctmn_1635 ) , .A4 ( \memory[0] [1] ) , .A5 ( ctmn_1716 ) , 
    .Y ( ctmn_1717 ) ) ;
AO22X1_HVT ctmi_1596 ( .A1 ( ctmn_1636 ) , .A2 ( \memory[12] [1] ) , 
    .A3 ( phfnn_330 ) , .A4 ( \memory[15] [1] ) , .Y ( ctmn_1716 ) ) ;
AO222X1_RVT ctmi_1597 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [1] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [1] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [1] ) , .Y ( ctmn_1718 ) ) ;
SDFFX1_RVT \memory_reg[15][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_33_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [7] ) ) ;
endmodule


module router_fifo ( router_clock , resetn , soft_reset , write_enb , 
    read_enb , lfd_state , data_in , data_out , empty , full ) ;
input  router_clock ;
input  resetn ;
input  soft_reset ;
input  write_enb ;
input  read_enb ;
input  lfd_state ;
input  [7:0] data_in ;
output [7:0] data_out ;
output empty ;
output full ;

wire [4:0] write_ptr ;
wire [4:0] read_ptr ;
wire [8:0] \memory[15] ;
wire [8:0] \memory[14] ;
wire [8:0] \memory[13] ;
wire [8:0] \memory[12] ;
wire [8:0] \memory[11] ;
wire [8:0] \memory[10] ;
wire [8:0] \memory[9] ;
wire [8:0] \memory[8] ;
wire [8:0] \memory[7] ;
wire [8:0] \memory[6] ;
wire [8:0] \memory[5] ;
wire [8:0] \memory[4] ;
wire [8:0] \memory[3] ;
wire [8:0] \memory[2] ;
wire [8:0] \memory[1] ;
wire [8:0] \memory[0] ;
wire [6:0] count ;

AO22X1_HVT ctmi_1699 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1781 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1784 ) , .Y ( N65 ) ) ;
SDFFX1_RVT \write_ptr_reg[4] ( .D ( N42 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_write_ptr_reg ) , .Q ( write_ptr[4] ) , 
    .QN ( ctmn_1729 ) ) ;
AO22X1_HVT ctmi_1712 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1792 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1793 ) , .Y ( N67 ) ) ;
AND2X1_RVT A1245 ( .A1 ( ctmn_212 ) , .A2 ( ctmn_213 ) , .Y ( ctmn_214 ) ) ;
SDFFX1_RVT \memory_reg[15][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [6] ) ) ;
SDFFX1_RVT \memory_reg[15][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [5] ) ) ;
SDFFX1_RVT \memory_reg[15][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [4] ) ) ;
SDFFX1_RVT \memory_reg[15][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [3] ) ) ;
SDFFX1_RVT \memory_reg[15][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [2] ) ) ;
SDFFX1_RVT \memory_reg[15][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [1] ) ) ;
SDFFX1_RVT \memory_reg[15][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [0] ) ) ;
SDFFX1_RVT \memory_reg[14][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [8] ) ) ;
SDFFX1_RVT \memory_reg[14][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [7] ) ) ;
SDFFX1_RVT \memory_reg[14][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [6] ) ) ;
SDFFX1_RVT \memory_reg[14][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [5] ) ) ;
SDFFX1_RVT \memory_reg[14][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [4] ) ) ;
SDFFX1_RVT \memory_reg[14][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [3] ) ) ;
SDFFX1_RVT \memory_reg[14][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [2] ) ) ;
SDFFX1_RVT \memory_reg[14][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [1] ) ) ;
SDFFX1_RVT \memory_reg[14][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_5 ) , .Q ( \memory[14] [0] ) ) ;
SDFFX1_RVT \memory_reg[13][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [8] ) ) ;
SDFFX1_RVT \memory_reg[13][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [7] ) ) ;
SDFFX1_RVT \memory_reg[13][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [6] ) ) ;
SDFFX1_RVT \memory_reg[13][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [5] ) ) ;
SDFFX1_RVT \memory_reg[13][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [4] ) ) ;
SDFFX1_RVT \memory_reg[13][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [3] ) ) ;
SDFFX1_RVT \memory_reg[13][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [2] ) ) ;
SDFFX1_RVT \memory_reg[13][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [1] ) ) ;
SDFFX1_RVT \memory_reg[13][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_4 ) , .Q ( \memory[13] [0] ) ) ;
SDFFX1_RVT \memory_reg[12][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [8] ) ) ;
SDFFX1_RVT \memory_reg[12][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [7] ) ) ;
SDFFX1_RVT \memory_reg[12][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [6] ) ) ;
SDFFX1_RVT \memory_reg[12][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [5] ) ) ;
SDFFX1_RVT \memory_reg[12][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [4] ) ) ;
SDFFX1_RVT \memory_reg[12][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [3] ) ) ;
SDFFX1_RVT \memory_reg[12][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [2] ) ) ;
SDFFX1_RVT \memory_reg[12][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [1] ) ) ;
SDFFX1_RVT \memory_reg[12][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_3 ) , .Q ( \memory[12] [0] ) ) ;
SDFFX1_RVT \memory_reg[11][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [8] ) ) ;
SDFFX1_RVT \memory_reg[11][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [7] ) ) ;
SDFFX1_RVT \memory_reg[11][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [6] ) ) ;
SDFFX1_RVT \memory_reg[11][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [5] ) ) ;
SDFFX1_RVT \memory_reg[11][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [4] ) ) ;
SDFFX1_RVT \memory_reg[11][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [3] ) ) ;
SDFFX1_RVT \memory_reg[11][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [2] ) ) ;
SDFFX1_RVT \memory_reg[11][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [1] ) ) ;
SDFFX1_RVT \memory_reg[11][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_2 ) , .Q ( \memory[11] [0] ) ) ;
SDFFX1_RVT \memory_reg[10][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [8] ) ) ;
SDFFX1_RVT \memory_reg[10][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [7] ) ) ;
SDFFX1_RVT \memory_reg[10][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [6] ) ) ;
SDFFX1_RVT \memory_reg[10][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [5] ) ) ;
SDFFX1_RVT \memory_reg[10][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [4] ) ) ;
SDFFX1_RVT \memory_reg[10][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [3] ) ) ;
SDFFX1_RVT \memory_reg[10][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [2] ) ) ;
SDFFX1_RVT \memory_reg[10][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [1] ) ) ;
SDFFX1_RVT \memory_reg[10][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_1 ) , .Q ( \memory[10] [0] ) ) ;
SDFFX1_RVT \memory_reg[9][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [8] ) ) ;
SDFFX1_RVT \memory_reg[9][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [7] ) ) ;
SDFFX1_RVT \memory_reg[9][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [6] ) ) ;
SDFFX1_RVT \memory_reg[9][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [5] ) ) ;
SDFFX1_RVT \memory_reg[9][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [4] ) ) ;
SDFFX1_RVT \memory_reg[9][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [3] ) ) ;
SDFFX1_RVT \memory_reg[9][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [2] ) ) ;
SDFFX1_RVT \memory_reg[9][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [1] ) ) ;
SDFFX1_RVT \memory_reg[9][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_15 ) , .Q ( \memory[9] [0] ) ) ;
SDFFX1_RVT \memory_reg[8][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [8] ) ) ;
SDFFX1_RVT \memory_reg[8][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [7] ) ) ;
SDFFX1_RVT \memory_reg[8][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [6] ) ) ;
SDFFX1_RVT \memory_reg[8][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [5] ) ) ;
SDFFX1_RVT \memory_reg[8][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [4] ) ) ;
SDFFX1_RVT \memory_reg[8][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [3] ) ) ;
SDFFX1_RVT \memory_reg[8][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [2] ) ) ;
SDFFX1_RVT \memory_reg[8][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [1] ) ) ;
SDFFX1_RVT \memory_reg[8][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_14 ) , .Q ( \memory[8] [0] ) ) ;
SDFFX1_RVT \memory_reg[7][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [8] ) ) ;
SDFFX1_RVT \memory_reg[7][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [7] ) ) ;
SDFFX1_RVT \memory_reg[7][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [6] ) ) ;
SDFFX1_RVT \memory_reg[7][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [5] ) ) ;
SDFFX1_RVT \memory_reg[7][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [4] ) ) ;
SDFFX1_RVT \memory_reg[7][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [3] ) ) ;
SDFFX1_RVT \memory_reg[7][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [2] ) ) ;
SDFFX1_RVT \memory_reg[7][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [1] ) ) ;
SDFFX1_RVT \memory_reg[7][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_13 ) , .Q ( \memory[7] [0] ) ) ;
SDFFX1_RVT \memory_reg[6][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [8] ) ) ;
SDFFX1_RVT \memory_reg[6][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [7] ) ) ;
SDFFX1_RVT \memory_reg[6][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [6] ) ) ;
SDFFX1_RVT \memory_reg[6][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [5] ) ) ;
SDFFX1_RVT \memory_reg[6][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [4] ) ) ;
SDFFX1_RVT \memory_reg[6][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [3] ) ) ;
SDFFX1_RVT \memory_reg[6][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [2] ) ) ;
SDFFX1_RVT \memory_reg[6][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [1] ) ) ;
SDFFX1_RVT \memory_reg[6][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_12 ) , .Q ( \memory[6] [0] ) ) ;
SDFFX1_RVT \memory_reg[5][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [8] ) ) ;
SDFFX1_RVT \memory_reg[5][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [7] ) ) ;
SDFFX1_RVT \memory_reg[5][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [6] ) ) ;
SDFFX1_RVT \memory_reg[5][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [5] ) ) ;
SDFFX1_RVT \memory_reg[5][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [4] ) ) ;
SDFFX1_RVT \memory_reg[5][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [3] ) ) ;
SDFFX1_RVT \memory_reg[5][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [2] ) ) ;
SDFFX1_RVT \memory_reg[5][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [1] ) ) ;
SDFFX1_RVT \memory_reg[5][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_11 ) , .Q ( \memory[5] [0] ) ) ;
SDFFX1_RVT \memory_reg[4][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [8] ) ) ;
SDFFX1_RVT \memory_reg[4][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [7] ) ) ;
SDFFX1_RVT \memory_reg[4][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [6] ) ) ;
SDFFX1_RVT \memory_reg[4][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [5] ) ) ;
SDFFX1_RVT \memory_reg[4][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [4] ) ) ;
SDFFX1_RVT \memory_reg[4][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [3] ) ) ;
SDFFX1_RVT \memory_reg[4][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [2] ) ) ;
SDFFX1_RVT \memory_reg[4][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [1] ) ) ;
SDFFX1_RVT \memory_reg[4][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_10 ) , .Q ( \memory[4] [0] ) ) ;
SDFFX1_RVT \memory_reg[3][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [8] ) ) ;
SDFFX1_RVT \memory_reg[3][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [7] ) ) ;
SDFFX1_RVT \memory_reg[3][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [6] ) ) ;
SDFFX1_RVT \memory_reg[3][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [5] ) ) ;
SDFFX1_RVT \memory_reg[3][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [4] ) ) ;
SDFFX1_RVT \memory_reg[3][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [3] ) ) ;
SDFFX1_RVT \memory_reg[3][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [2] ) ) ;
SDFFX1_RVT \memory_reg[3][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [1] ) ) ;
SDFFX1_RVT \memory_reg[3][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_9 ) , .Q ( \memory[3] [0] ) ) ;
SDFFX1_RVT \memory_reg[2][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [8] ) ) ;
SDFFX1_RVT \memory_reg[2][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [7] ) ) ;
SDFFX1_RVT \memory_reg[2][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [6] ) ) ;
SDFFX1_RVT \memory_reg[2][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [5] ) ) ;
SDFFX1_RVT \memory_reg[2][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [4] ) ) ;
SDFFX1_RVT \memory_reg[2][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [3] ) ) ;
SDFFX1_RVT \memory_reg[2][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [2] ) ) ;
SDFFX1_RVT \memory_reg[2][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [1] ) ) ;
SDFFX1_RVT \memory_reg[2][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_8 ) , .Q ( \memory[2] [0] ) ) ;
SDFFX1_RVT \memory_reg[1][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [8] ) ) ;
SDFFX1_RVT \memory_reg[1][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [7] ) ) ;
SDFFX1_RVT \memory_reg[1][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [6] ) ) ;
SDFFX1_RVT \memory_reg[1][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [5] ) ) ;
SDFFX1_RVT \memory_reg[1][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [4] ) ) ;
SDFFX1_RVT \memory_reg[1][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [3] ) ) ;
SDFFX1_RVT \memory_reg[1][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [2] ) ) ;
SDFFX1_RVT \memory_reg[1][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [1] ) ) ;
SDFFX1_RVT \memory_reg[1][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_7 ) , .Q ( \memory[1] [0] ) ) ;
SDFFX1_RVT \memory_reg[0][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [8] ) ) ;
SDFFX1_RVT \memory_reg[0][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [7] ) ) ;
SDFFX1_RVT \memory_reg[0][6] ( .D ( N4 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [6] ) ) ;
SDFFX1_RVT \memory_reg[0][5] ( .D ( N5 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [5] ) ) ;
SDFFX1_RVT \memory_reg[0][4] ( .D ( N6 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [4] ) ) ;
SDFFX1_RVT \memory_reg[0][3] ( .D ( N7 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [3] ) ) ;
SDFFX1_RVT \memory_reg[0][2] ( .D ( N8 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [2] ) ) ;
SDFFX1_RVT \memory_reg[0][1] ( .D ( N9 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [1] ) ) ;
SDFFX1_RVT \memory_reg[0][0] ( .D ( N10 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg ) , .Q ( \memory[0] [0] ) ) ;
NOR4X1_RVT ctmi_1359 ( .A1 ( ctmn_417 ) , .A2 ( ctmn_1653 ) , 
    .A3 ( ctmn_1658 ) , .A4 ( ctmn_1640 ) , .Y ( ctmn_1778 ) ) ;
AO22X1_HVT ctmi_1705 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1787 ) , 
    .A3 ( ctmn_1767 ) , .A4 ( ctmn_1790 ) , .Y ( N66 ) ) ;
SDFFX1_RVT \write_ptr_reg[2] ( .D ( N44 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_write_ptr_reg ) , .Q ( write_ptr[2] ) , 
    .QN ( ctmn_1733 ) ) ;
SDFFX1_RVT \write_ptr_reg[1] ( .D ( N45 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_write_ptr_reg ) , .Q ( write_ptr[1] ) , 
    .QN ( ctmn_1734 ) ) ;
SDFFSSRX1_RVT \data_out_reg[7] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( phfnn_321 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[7] ) ) ;
SDFFSSRX1_RVT \data_out_reg[6] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1679 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[6] ) ) ;
SDFFX1_RVT \write_ptr_reg[0] ( .D ( N46 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_write_ptr_reg ) , .Q ( write_ptr[0] ) ) ;
SDFFSSRX1_RVT \data_out_reg[5] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1687 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[5] ) ) ;
SDFFSSRX1_RVT \data_out_reg[4] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1695 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[4] ) ) ;
SDFFSSRX1_RVT \data_out_reg[3] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_1703 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[3] ) ) ;
SDFFSSRX1_RVT \data_out_reg[2] ( .RSTB ( ctmn_1671 ) , .SETB ( 1'b1 ) , 
    .D ( phfnn_322 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[2] ) ) ;
SDFFX1_RVT \read_ptr_reg[4] ( .D ( N57 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_read_ptr_reg ) , .Q ( read_ptr[4] ) , 
    .QN ( ctmn_1728 ) ) ;
SDFFX1_RVT \data_out_reg[0] ( .D ( N55 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[0] ) ) ;
SDFFX1_RVT \read_ptr_reg[3] ( .D ( N58 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_read_ptr_reg ) , .Q ( read_ptr[3] ) , 
    .QN ( ctmn_1634 ) ) ;
SDFFX1_RVT \data_out_reg[1] ( .D ( N54 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_data_out_reg ) , .Q ( data_out[1] ) ) ;
SDFFX1_RVT \read_ptr_reg[2] ( .D ( N59 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_read_ptr_reg ) , .Q ( read_ptr[2] ) , 
    .QN ( ctmn_1631 ) ) ;
SDFFX1_RVT \read_ptr_reg[1] ( .D ( N60 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_read_ptr_reg ) , .Q ( read_ptr[1] ) , 
    .QN ( ctmn_1632 ) ) ;
SDFFSSRX1_RVT \read_ptr_reg[0] ( .RSTB ( 1'b1 ) , .SETB ( ctmn_1633 ) , 
    .D ( ctmn_1669 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_read_ptr_reg ) , .Q ( ctmn_1633 ) , 
    .QN ( read_ptr[0] ) ) ;
SDFFX1_RVT \count_reg[0] ( .D ( N69 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[0] ) , 
    .QN ( ctmn_1796 ) ) ;
SDFFX1_RVT \count_reg[5] ( .D ( N64 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[5] ) ) ;
SDFFX1_RVT \count_reg[4] ( .D ( N65 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[4] ) ) ;
SDFFX1_RVT \count_reg[3] ( .D ( N66 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[3] ) ) ;
SDFFX1_RVT \count_reg[2] ( .D ( N67 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[2] ) ) ;
SDFFX1_RVT \count_reg[1] ( .D ( N68 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[1] ) ) ;
SDFFX1_RVT lfd_state_d1_reg ( .D ( ls_71 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34 ) , .Q ( lfd_state_d1 ) ) ;
SDFFX1_RVT \count_reg[6] ( .D ( N63 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_count_reg ) , .Q ( count[6] ) ) ;
SDFFX1_RVT \write_ptr_reg[3] ( .D ( N43 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_write_ptr_reg ) , .Q ( write_ptr[3] ) , 
    .QN ( ctmn_1731 ) ) ;
AND2X2_RVT ctmi_1631 ( .A1 ( phfnn_317 ) , .A2 ( lfd_state_d1 ) , .Y ( N2 ) ) ;
AO221X1_HVT ctmi_1621 ( .A1 ( phfnn_319 ) , .A2 ( ctmn_1748 ) , 
    .A3 ( phfnn_319 ) , .A4 ( ctmn_1665 ) , .A5 ( ctmn_1669 ) , .Y ( N62 ) ) ;
INVX1_RVT phfnr_buf_1089 ( .A ( ctmn_1739 ) , .Y ( phfnn_319 ) ) ;
OAI22X1_HVT ctmi_1722 ( .A1 ( ctmn_1798 ) , .A2 ( ctmn_1757 ) , 
    .A3 ( ctmn_1729 ) , .A4 ( ctmn_1760 ) , .Y ( N42 ) ) ;
NAND2X0_RVT ctmi_1723 ( .A1 ( ctmn_1760 ) , .A2 ( ctmn_1729 ) , 
    .Y ( ctmn_1798 ) ) ;
AOI22X1_HVT ctmi_1724 ( .A1 ( write_ptr[2] ) , .A2 ( ctmn_1759 ) , 
    .A3 ( ctmn_1733 ) , .A4 ( ctmn_1757 ) , .Y ( N44 ) ) ;
AO21X1_HVT ctmi_1700 ( .A1 ( count[4] ) , .A2 ( phfnn_316 ) , 
    .A3 ( ctmn_1780 ) , .Y ( ctmn_1781 ) ) ;
INVX1_RVT phfnr_buf_1082 ( .A ( ctmn_1766 ) , .Y ( phfnn_312 ) ) ;
OA21X1_HVT ctmi_1702 ( .A1 ( phfnn_326 ) , .A2 ( ctmn_1679 ) , 
    .A3 ( ctmn_1771 ) , .Y ( ctmn_1784 ) ) ;
NAND3X0_RVT ctmi_1703 ( .A1 ( phfnn_323 ) , .A2 ( ctmn_1687 ) , 
    .A3 ( ctmn_1695 ) , .Y ( ctmn_1782 ) ) ;
INVX0_RVT phfnr_buf_1096 ( .A ( ctmn_1782 ) , .Y ( phfnn_326 ) ) ;
AO221X1_HVT ctmi_1706 ( .A1 ( count[3] ) , .A2 ( ctmn_1785 ) , 
    .A3 ( count[3] ) , .A4 ( count[2] ) , .A5 ( ctmn_1786 ) , 
    .Y ( ctmn_1787 ) ) ;
OR2X1_HVT ctmi_1707 ( .A1 ( count[0] ) , .A2 ( count[1] ) , .Y ( ctmn_1785 ) ) ;
INVX0_RVT phfnr_buf_1083 ( .A ( ctmn_1785 ) , .Y ( phfnn_313 ) ) ;
OA21X1_HVT ctmi_1709 ( .A1 ( phfnn_324 ) , .A2 ( ctmn_1687 ) , 
    .A3 ( ctmn_1782 ) , .Y ( ctmn_1790 ) ) ;
NAND3X0_RVT ctmi_1710 ( .A1 ( ctmn_1695 ) , .A2 ( ctmn_1703 ) , 
    .A3 ( phfnn_322 ) , .Y ( ctmn_1788 ) ) ;
INVX0_RVT phfnr_buf_1094 ( .A ( ctmn_1788 ) , .Y ( phfnn_324 ) ) ;
MUX21X1_RVT ctmi_1713 ( .A1 ( phfnn_313 ) , .A2 ( ctmn_1785 ) , 
    .S0 ( count[2] ) , .Y ( ctmn_1792 ) ) ;
INVX0_RVT phfnr_buf_1084 ( .A ( ctmn_209 ) , .Y ( phfnn_314 ) ) ;
OA21X1_HVT ctmi_1715 ( .A1 ( phfnn_323 ) , .A2 ( ctmn_1695 ) , 
    .A3 ( ctmn_1788 ) , .Y ( ctmn_1793 ) ) ;
AO22X1_HVT ctmi_1716 ( .A1 ( ctmn_1794 ) , .A2 ( ctmn_1769 ) , 
    .A3 ( ctmn_1795 ) , .A4 ( ctmn_1775 ) , .Y ( N68 ) ) ;
OA21X1_HVT ctmi_1717 ( .A1 ( ctmn_1703 ) , .A2 ( phfnn_322 ) , 
    .A3 ( ctmn_1767 ) , .Y ( ctmn_1794 ) ) ;
AO22X1_RVT ctmi_904 ( .A1 ( write_ptr[4] ) , .A2 ( read_ptr[4] ) , 
    .A3 ( ctmn_1729 ) , .A4 ( ctmn_1728 ) , .Y ( ctmn_209 ) ) ;
AO21X1_HVT ctmi_1718 ( .A1 ( count[0] ) , .A2 ( count[1] ) , 
    .A3 ( phfnn_313 ) , .Y ( ctmn_1795 ) ) ;
AO22X1_HVT ctmi_1719 ( .A1 ( ctmn_1775 ) , .A2 ( ctmn_1796 ) , 
    .A3 ( ctmn_1797 ) , .A4 ( ctmn_1767 ) , .Y ( N69 ) ) ;
INVX2_RVT phfnr_buf_1085 ( .A ( ctmn_1638 ) , .Y ( phfnn_315 ) ) ;
INVX0_RVT phfnr_buf_1086 ( .A ( ctmn_1786 ) , .Y ( phfnn_316 ) ) ;
INVX1_RVT A598 ( .A ( full ) , .Y ( ctmn_1750 ) ) ;
AND2X1_RVT A1246 ( .A1 ( ctmn_210 ) , .A2 ( phfnn_314 ) , .Y ( N385 ) ) ;
MUX21X1_RVT ctmi_883 ( .A1 ( ctmn_1633 ) , .A2 ( read_ptr[0] ) , 
    .S0 ( write_ptr[0] ) , .Y ( ctmn_207 ) ) ;
AND2X1_RVT ctmi_884 ( .A1 ( ctmn_209 ) , .A2 ( ctmn_210 ) , .Y ( ctmn_211 ) ) ;
OA21X1_HVT ctmi_1589 ( .A1 ( ctmn_1715 ) , .A2 ( ctmn_1719 ) , 
    .A3 ( ctmn_1671 ) , .Y ( N54 ) ) ;
OA21X1_HVT ctmi_1598 ( .A1 ( ctmn_1723 ) , .A2 ( ctmn_1727 ) , 
    .A3 ( ctmn_1671 ) , .Y ( N55 ) ) ;
AO221X1_RVT ctmi_1599 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [0] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [0] ) , .A5 ( ctmn_1722 ) , 
    .Y ( ctmn_1723 ) ) ;
AO221X1_HVT ctmi_1600 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [0] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [0] ) , .A5 ( ctmn_1721 ) , 
    .Y ( ctmn_1722 ) ) ;
AO221X1_HVT ctmi_1601 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [0] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [0] ) , .A5 ( ctmn_1720 ) , 
    .Y ( ctmn_1721 ) ) ;
AO22X1_HVT ctmi_1602 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [0] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [0] ) , .Y ( ctmn_1720 ) ) ;
AO221X1_HVT ctmi_1372 ( .A1 ( ctmn_1717 ) , .A2 ( ctmn_1717 ) , 
    .A3 ( ctmn_1654 ) , .A4 ( \memory[14] [1] ) , .A5 ( ctmn_1718 ) , 
    .Y ( ctmn_1719 ) ) ;
AO221X1_HVT ctmi_1604 ( .A1 ( ctmn_1641 ) , .A2 ( \memory[6] [0] ) , 
    .A3 ( ctmn_1635 ) , .A4 ( \memory[0] [0] ) , .A5 ( ctmn_1724 ) , 
    .Y ( ctmn_1725 ) ) ;
AO22X1_HVT ctmi_1605 ( .A1 ( ctmn_1636 ) , .A2 ( \memory[12] [0] ) , 
    .A3 ( phfnn_315 ) , .A4 ( \memory[15] [0] ) , .Y ( ctmn_1724 ) ) ;
AO222X1_RVT ctmi_1606 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [0] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [0] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [0] ) , .Y ( ctmn_1726 ) ) ;
INVX2_RVT phfnr_buf_1087 ( .A ( ctmn_1669 ) , .Y ( phfnn_317 ) ) ;
INVX0_RVT phfnr_buf_1088 ( .A ( ctmn_1780 ) , .Y ( phfnn_318 ) ) ;
AO221X1_HVT ctmi_1371 ( .A1 ( ctmn_1725 ) , .A2 ( ctmn_1725 ) , 
    .A3 ( ctmn_1654 ) , .A4 ( \memory[14] [0] ) , .A5 ( ctmn_1726 ) , 
    .Y ( ctmn_1727 ) ) ;
OA22X1_RVT ctmi_887 ( .A1 ( write_ptr[1] ) , .A2 ( ctmn_1632 ) , 
    .A3 ( write_ptr[3] ) , .A4 ( ctmn_1634 ) , .Y ( ctmn_210 ) ) ;
AND3X1_RVT A1247 ( .A1 ( ctmn_214 ) , .A2 ( N385 ) , .A3 ( ctmn_207 ) , 
    .Y ( full ) ) ;
OA22X1_RVT ctmi_889 ( .A1 ( ctmn_1733 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( ctmn_1631 ) , .A4 ( write_ptr[2] ) , .Y ( ctmn_212 ) ) ;
OA22X1_RVT ctmi_890 ( .A1 ( ctmn_1734 ) , .A2 ( read_ptr[1] ) , 
    .A3 ( read_ptr[3] ) , .A4 ( ctmn_1731 ) , .Y ( ctmn_213 ) ) ;
INVX1_RVT phfnr_buf_1092 ( .A ( ctmn_1797 ) , .Y ( phfnn_322 ) ) ;
NOR2X0_HVT ctmi_908 ( .A1 ( count[0] ) , .A2 ( ctmn_1661 ) , 
    .Y ( ctmn_1786 ) ) ;
INVX1_RVT phfnr_buf_1090 ( .A ( ctmn_1776 ) , .Y ( phfnn_320 ) ) ;
INVX1_RVT phfnr_buf_1091 ( .A ( ctmn_1778 ) , .Y ( phfnn_321 ) ) ;
NOR2X0_HVT ctmi_910 ( .A1 ( count[4] ) , .A2 ( phfnn_316 ) , 
    .Y ( ctmn_1780 ) ) ;
NAND2X0_RVT ctmi_1619 ( .A1 ( ctmn_1671 ) , .A2 ( ctmn_1739 ) , .Y ( N47 ) ) ;
NAND2X2_HVT ctmi_1620 ( .A1 ( ls_38 ) , .A2 ( ctmn_1738 ) , .Y ( ctmn_1739 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!0 () ;
AO222X1_RVT ctmi_1624 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [8] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [8] ) , .A5 ( phfnn_315 ) , 
    .A6 ( \memory[15] [8] ) , .Y ( ctmn_1741 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!1 () ;
AO221X1_HVT ctmi_1626 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [8] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [8] ) , .A5 ( ctmn_1744 ) , 
    .Y ( ctmn_1745 ) ) ;
AO221X1_HVT ctmi_1627 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [8] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [8] ) , .A5 ( ctmn_1743 ) , 
    .Y ( ctmn_1744 ) ) ;
AO221X1_HVT ctmi_1628 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [8] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [8] ) , .A5 ( ctmn_1742 ) , 
    .Y ( ctmn_1743 ) ) ;
AO22X1_HVT ctmi_1629 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [8] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [8] ) , .Y ( ctmn_1742 ) ) ;
AO222X1_RVT ctmi_1630 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [8] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [8] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [8] ) , .Y ( ctmn_1746 ) ) ;
AND2X2_RVT ctmi_1632 ( .A1 ( phfnn_317 ) , .A2 ( ls_44 ) , .Y ( N3 ) ) ;
AND2X2_RVT ctmi_1633 ( .A1 ( phfnn_317 ) , .A2 ( ls_47 ) , .Y ( N4 ) ) ;
AND2X2_RVT ctmi_1634 ( .A1 ( phfnn_317 ) , .A2 ( ls_50 ) , .Y ( N5 ) ) ;
OA21X1_HVT ctmi_1643 ( .A1 ( ctmn_1753 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( phfnn_317 ) , .Y ( N45 ) ) ;
AND2X2_RVT ctmi_1635 ( .A1 ( phfnn_317 ) , .A2 ( ls_53 ) , .Y ( N6 ) ) ;
AND2X2_RVT ctmi_1636 ( .A1 ( phfnn_317 ) , .A2 ( ls_56 ) , .Y ( N7 ) ) ;
AND2X2_RVT ctmi_1637 ( .A1 ( phfnn_317 ) , .A2 ( ls_59 ) , .Y ( N8 ) ) ;
AND2X2_RVT ctmi_1638 ( .A1 ( phfnn_317 ) , .A2 ( ls_62 ) , .Y ( N9 ) ) ;
AND2X2_RVT ctmi_1639 ( .A1 ( phfnn_317 ) , .A2 ( ls_65 ) , .Y ( N10 ) ) ;
INVX1_RVT phfnr_buf_1093 ( .A ( ctmn_1769 ) , .Y ( phfnn_323 ) ) ;
NOR2X0_HVT ctmi_912 ( .A1 ( count[5] ) , .A2 ( phfnn_318 ) , 
    .Y ( ctmn_1776 ) ) ;
INVX0_RVT phfnr_buf_1095 ( .A ( ctmn_1771 ) , .Y ( phfnn_325 ) ) ;
AND2X1_RVT ctmi_1644 ( .A1 ( write_ptr[1] ) , .A2 ( ctmn_1752 ) , 
    .Y ( ctmn_1753 ) ) ;
NOR2X0_HVT ctmi_1645 ( .A1 ( ctmn_1751 ) , .A2 ( write_ptr[0] ) , 
    .Y ( ctmn_1752 ) ) ;
NAND2X0_RVT ctmi_1646 ( .A1 ( ls_41 ) , .A2 ( ctmn_1750 ) , .Y ( ctmn_1751 ) ) ;
AND4X1_RVT ctmi_1647 ( .A1 ( ctmn_1750 ) , .A2 ( ctmn_1734 ) , 
    .A3 ( write_ptr[0] ) , .A4 ( ls_41 ) , .Y ( ctmn_1754 ) ) ;
AND2X1_HVT ctmi_1648 ( .A1 ( phfnn_317 ) , .A2 ( ctmn_1752 ) , .Y ( N46 ) ) ;
AND2X1_HVT ctmi_1649 ( .A1 ( N41 ) , .A2 ( ctmn_1760 ) , .Y ( N1 ) ) ;
NAND2X0_RVT ctmi_1650 ( .A1 ( phfnn_317 ) , .A2 ( ctmn_1751 ) , .Y ( N41 ) ) ;
OA21X1_RVT ctmi_1651 ( .A1 ( ctmn_1757 ) , .A2 ( ctmn_1758 ) , 
    .A3 ( ctmn_1759 ) , .Y ( ctmn_1760 ) ) ;
NAND2X2_HVT ctmi_1652 ( .A1 ( phfnn_317 ) , .A2 ( ctmn_1756 ) , 
    .Y ( ctmn_1757 ) ) ;
NAND2X0_RVT ctmi_1675 ( .A1 ( phfnn_317 ) , .A2 ( ctmn_1739 ) , .Y ( N56 ) ) ;
AO21X1_HVT ctmi_1674 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N39 ) ) ;
OA221X1_HVT ctmi_1676 ( .A1 ( ctmn_1728 ) , .A2 ( ctmn_1638 ) , 
    .A3 ( read_ptr[4] ) , .A4 ( phfnn_315 ) , .A5 ( phfnn_317 ) , .Y ( N57 ) ) ;
AO21X1_HVT ctmi_1673 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N37 ) ) ;
AND4X1_RVT ctmi_1653 ( .A1 ( ctmn_1750 ) , .A2 ( write_ptr[0] ) , 
    .A3 ( write_ptr[1] ) , .A4 ( ls_41 ) , .Y ( ctmn_1756 ) ) ;
AND2X1_HVT ctmi_1654 ( .A1 ( write_ptr[3] ) , .A2 ( write_ptr[2] ) , 
    .Y ( ctmn_1758 ) ) ;
NOR2X0_HVT ctmi_1655 ( .A1 ( N45 ) , .A2 ( N46 ) , .Y ( ctmn_1759 ) ) ;
AO21X1_HVT ctmi_1656 ( .A1 ( ctmn_1758 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N11 ) ) ;
AO21X1_HVT ctmi_1657 ( .A1 ( ctmn_1758 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N13 ) ) ;
AO21X1_HVT ctmi_1658 ( .A1 ( ctmn_1761 ) , .A2 ( ctmn_1758 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N15 ) ) ;
AND2X1_HVT ctmi_1659 ( .A1 ( ctmn_1734 ) , .A2 ( ctmn_1752 ) , 
    .Y ( ctmn_1761 ) ) ;
AO21X1_HVT ctmi_1660 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N17 ) ) ;
AND2X1_HVT ctmi_1661 ( .A1 ( ctmn_1733 ) , .A2 ( write_ptr[3] ) , 
    .Y ( ctmn_1762 ) ) ;
AO21X1_HVT ctmi_1662 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N19 ) ) ;
OA221X1_HVT ctmi_1677 ( .A1 ( ctmn_1657 ) , .A2 ( ctmn_1638 ) , 
    .A3 ( ctmn_1657 ) , .A4 ( read_ptr[3] ) , .A5 ( phfnn_317 ) , .Y ( N58 ) ) ;
AO21X1_HVT ctmi_1663 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N21 ) ) ;
AO21X1_HVT ctmi_1664 ( .A1 ( ctmn_1762 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N23 ) ) ;
AO21X1_HVT ctmi_1665 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N25 ) ) ;
AND2X1_RVT ctmi_1666 ( .A1 ( ctmn_1731 ) , .A2 ( write_ptr[2] ) , 
    .Y ( ctmn_1763 ) ) ;
AO21X1_HVT ctmi_1667 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N27 ) ) ;
AO21X1_HVT ctmi_1668 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1754 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N29 ) ) ;
AO21X1_HVT ctmi_1669 ( .A1 ( ctmn_1763 ) , .A2 ( ctmn_1761 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N31 ) ) ;
AO21X1_HVT ctmi_1670 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1756 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N33 ) ) ;
AND2X1_HVT ctmi_1671 ( .A1 ( ctmn_1731 ) , .A2 ( ctmn_1733 ) , 
    .Y ( ctmn_1764 ) ) ;
AO21X1_HVT ctmi_1672 ( .A1 ( ctmn_1764 ) , .A2 ( ctmn_1753 ) , 
    .A3 ( ctmn_1669 ) , .Y ( N35 ) ) ;
OA221X1_HVT ctmi_1678 ( .A1 ( phfnn_312 ) , .A2 ( ctmn_1631 ) , 
    .A3 ( ctmn_1766 ) , .A4 ( read_ptr[2] ) , .A5 ( phfnn_317 ) , .Y ( N59 ) ) ;
AO22X1_HVT ctmi_1360 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [7] ) , 
    .A3 ( \memory[6] [7] ) , .A4 ( ctmn_1641 ) , .Y ( ctmn_417 ) ) ;
AND3X1_LVT A1185 ( .A1 ( ctmn_214 ) , .A2 ( ctmn_207 ) , .A3 ( ctmn_211 ) , 
    .Y ( empty ) ) ;
AO221X1_RVT ctmi_1374 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [8] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [8] ) , .A5 ( ctmn_423 ) , 
    .Y ( ctmn_1748 ) ) ;
INVX0_RVT A1186 ( .A ( empty ) , .Y ( ctmn_1738 ) ) ;
AOI221X1_HVT ctmi_1683 ( .A1 ( ctmn_1731 ) , .A2 ( ctmn_1733 ) , 
    .A3 ( ctmn_1731 ) , .A4 ( ctmn_1757 ) , .A5 ( ctmn_1760 ) , .Y ( N43 ) ) ;
AO22X1_HVT ctmi_1684 ( .A1 ( ctmn_1768 ) , .A2 ( phfnn_325 ) , 
    .A3 ( ctmn_1773 ) , .A4 ( ctmn_1775 ) , .Y ( N63 ) ) ;
AND2X1_HVT ctmi_1685 ( .A1 ( phfnn_321 ) , .A2 ( ctmn_1767 ) , 
    .Y ( ctmn_1768 ) ) ;
AND3X1_RVT ctmi_1686 ( .A1 ( ctmn_1748 ) , .A2 ( phfnn_317 ) , 
    .A3 ( phfnn_319 ) , .Y ( ctmn_1767 ) ) ;
NAND4X1_HVT ctmi_1687 ( .A1 ( phfnn_323 ) , .A2 ( ctmn_1679 ) , 
    .A3 ( ctmn_1687 ) , .A4 ( ctmn_1695 ) , .Y ( ctmn_1771 ) ) ;
NAND2X0_RVT ctmi_1688 ( .A1 ( ctmn_1703 ) , .A2 ( phfnn_322 ) , 
    .Y ( ctmn_1769 ) ) ;
AO221X1_RVT ctmi_1361 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [6] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [6] ) , .A5 ( ctmn_418 ) , 
    .Y ( ctmn_1679 ) ) ;
OR3X1_HVT ctmi_1362 ( .A1 ( ctmn_1676 ) , .A2 ( ctmn_1677 ) , 
    .A3 ( ctmn_1672 ) , .Y ( ctmn_418 ) ) ;
AND2X1_HVT ctmi_1691 ( .A1 ( phfnn_320 ) , .A2 ( count[6] ) , 
    .Y ( ctmn_1773 ) ) ;
NOR4X1_RVT ctmi_1692 ( .A1 ( ctmn_1669 ) , .A2 ( ctmn_1739 ) , 
    .A3 ( ctmn_1748 ) , .A4 ( ctmn_1774 ) , .Y ( ctmn_1775 ) ) ;
NOR4X1_HVT ctmi_1693 ( .A1 ( ctmn_1661 ) , .A2 ( count[4] ) , 
    .A3 ( count[5] ) , .A4 ( count[6] ) , .Y ( ctmn_1774 ) ) ;
AO221X1_HVT ctmi_1694 ( .A1 ( ctmn_1768 ) , .A2 ( ctmn_1771 ) , 
    .A3 ( ctmn_1777 ) , .A4 ( ctmn_1775 ) , .A5 ( ctmn_1779 ) , .Y ( N64 ) ) ;
AO21X1_HVT ctmi_1695 ( .A1 ( count[5] ) , .A2 ( phfnn_318 ) , 
    .A3 ( ctmn_1776 ) , .Y ( ctmn_1777 ) ) ;
AO221X1_RVT ctmi_1363 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [5] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [5] ) , .A5 ( ctmn_419 ) , 
    .Y ( ctmn_1687 ) ) ;
AND3X1_RVT ctmi_1697 ( .A1 ( ctmn_1778 ) , .A2 ( ctmn_1767 ) , 
    .A3 ( phfnn_325 ) , .Y ( ctmn_1779 ) ) ;
OR3X1_HVT ctmi_1364 ( .A1 ( ctmn_1684 ) , .A2 ( ctmn_1685 ) , 
    .A3 ( ctmn_1680 ) , .Y ( ctmn_419 ) ) ;
SDFFX1_RVT \memory_reg[15][8] ( .D ( N2 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [8] ) ) ;
AO221X1_RVT ctmi_1365 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [4] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [4] ) , .A5 ( ctmn_420 ) , 
    .Y ( ctmn_1695 ) ) ;
AO222X1_RVT ctmi_1504 ( .A1 ( \memory[0] [7] ) , .A2 ( ctmn_1635 ) , 
    .A3 ( \memory[12] [7] ) , .A4 ( ctmn_1636 ) , .A5 ( \memory[15] [7] ) , 
    .A6 ( phfnn_315 ) , .Y ( ctmn_1640 ) ) ;
AND4X1_RVT ctmi_1505 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( ctmn_1634 ) , .Y ( ctmn_1635 ) ) ;
AND2X1_HVT ctmi_915 ( .A1 ( read_ptr[1] ) , .A2 ( read_ptr[0] ) , 
    .Y ( ctmn_1766 ) ) ;
OR3X1_HVT ctmi_1366 ( .A1 ( ctmn_1692 ) , .A2 ( ctmn_1693 ) , 
    .A3 ( ctmn_1688 ) , .Y ( ctmn_420 ) ) ;
AO221X1_RVT ctmi_1367 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [3] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [3] ) , .A5 ( ctmn_421 ) , 
    .Y ( ctmn_1703 ) ) ;
OR3X1_HVT ctmi_1368 ( .A1 ( ctmn_1700 ) , .A2 ( ctmn_1701 ) , 
    .A3 ( ctmn_1696 ) , .Y ( ctmn_421 ) ) ;
AND4X1_RVT ctmi_1510 ( .A1 ( ctmn_1633 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[2] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1636 ) ) ;
NAND3X1_HVT ctmi_1511 ( .A1 ( ctmn_1637 ) , .A2 ( read_ptr[0] ) , 
    .A3 ( read_ptr[3] ) , .Y ( ctmn_1638 ) ) ;
AND2X1_HVT ctmi_1512 ( .A1 ( read_ptr[2] ) , .A2 ( read_ptr[1] ) , 
    .Y ( ctmn_1637 ) ) ;
NOR4X1_HVT ctmi_1369 ( .A1 ( ctmn_422 ) , .A2 ( ctmn_1708 ) , 
    .A3 ( ctmn_1709 ) , .A4 ( ctmn_1704 ) , .Y ( ctmn_1797 ) ) ;
AND3X1_RVT ctmi_1514 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1633 ) , 
    .A3 ( ctmn_1637 ) , .Y ( ctmn_1641 ) ) ;
AO22X1_HVT ctmi_1370 ( .A1 ( ctmn_1654 ) , .A2 ( \memory[14] [2] ) , 
    .A3 ( ctmn_1641 ) , .A4 ( \memory[6] [2] ) , .Y ( ctmn_422 ) ) ;
AO221X1_RVT ctmi_1516 ( .A1 ( \memory[10] [7] ) , .A2 ( ctmn_1642 ) , 
    .A3 ( \memory[5] [7] ) , .A4 ( ctmn_1643 ) , .A5 ( ctmn_1652 ) , 
    .Y ( ctmn_1653 ) ) ;
AND4X1_RVT ctmi_1517 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1633 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1642 ) ) ;
AND4X1_RVT ctmi_1518 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[2] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1643 ) ) ;
AO221X1_HVT ctmi_1519 ( .A1 ( \memory[2] [7] ) , .A2 ( ctmn_1644 ) , 
    .A3 ( \memory[9] [7] ) , .A4 ( ctmn_1645 ) , .A5 ( ctmn_1651 ) , 
    .Y ( ctmn_1652 ) ) ;
AND4X1_RVT ctmi_1520 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1634 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[1] ) , .Y ( ctmn_1644 ) ) ;
AND4X1_RVT ctmi_1521 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1645 ) ) ;
AO221X1_HVT ctmi_1522 ( .A1 ( \memory[11] [7] ) , .A2 ( ctmn_1646 ) , 
    .A3 ( \memory[8] [7] ) , .A4 ( ctmn_1647 ) , .A5 ( ctmn_1650 ) , 
    .Y ( ctmn_1651 ) ) ;
AND4X1_RVT ctmi_1523 ( .A1 ( ctmn_1631 ) , .A2 ( read_ptr[1] ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1646 ) ) ;
AND4X1_RVT ctmi_1524 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1647 ) ) ;
AO22X1_HVT ctmi_1525 ( .A1 ( \memory[1] [7] ) , .A2 ( ctmn_1648 ) , 
    .A3 ( \memory[13] [7] ) , .A4 ( ctmn_1649 ) , .Y ( ctmn_1650 ) ) ;
AND4X1_RVT ctmi_1526 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1634 ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1648 ) ) ;
AND4X1_RVT ctmi_1527 ( .A1 ( ctmn_1632 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( read_ptr[0] ) , .A4 ( read_ptr[3] ) , .Y ( ctmn_1649 ) ) ;
AND3X1_RVT ctmi_1528 ( .A1 ( ctmn_1633 ) , .A2 ( ctmn_1637 ) , 
    .A3 ( read_ptr[3] ) , .Y ( ctmn_1654 ) ) ;
AO222X1_RVT ctmi_1529 ( .A1 ( \memory[3] [7] ) , .A2 ( ctmn_1655 ) , 
    .A3 ( \memory[4] [7] ) , .A4 ( ctmn_1656 ) , .A5 ( \memory[7] [7] ) , 
    .A6 ( ctmn_1657 ) , .Y ( ctmn_1658 ) ) ;
AND4X1_RVT ctmi_1530 ( .A1 ( ctmn_1631 ) , .A2 ( ctmn_1634 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1655 ) ) ;
AND4X1_RVT ctmi_1531 ( .A1 ( ctmn_1634 ) , .A2 ( ctmn_1632 ) , 
    .A3 ( ctmn_1633 ) , .A4 ( read_ptr[2] ) , .Y ( ctmn_1656 ) ) ;
AND4X1_RVT ctmi_1532 ( .A1 ( ctmn_1634 ) , .A2 ( read_ptr[2] ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .Y ( ctmn_1657 ) ) ;
OA221X1_RVT ctmi_1533 ( .A1 ( ctmn_1665 ) , .A2 ( ctmn_1666 ) , 
    .A3 ( ctmn_1665 ) , .A4 ( ctmn_1667 ) , .A5 ( phfnn_317 ) , 
    .Y ( ctmn_1671 ) ) ;
OR2X1_HVT ctmi_1534 ( .A1 ( count[6] ) , .A2 ( phfnn_320 ) , 
    .Y ( ctmn_1665 ) ) ;
OA221X1_HVT ctmi_1373 ( .A1 ( phfnn_312 ) , .A2 ( phfnn_312 ) , 
    .A3 ( read_ptr[1] ) , .A4 ( read_ptr[0] ) , .A5 ( phfnn_317 ) , 
    .Y ( N60 ) ) ;
OR3X1_HVT ctmi_1375 ( .A1 ( ctmn_1745 ) , .A2 ( ctmn_1746 ) , 
    .A3 ( ctmn_1741 ) , .Y ( ctmn_423 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!2 () ;
OR3X1_HVT ctmi_1538 ( .A1 ( count[1] ) , .A2 ( count[3] ) , .A3 ( count[2] ) , 
    .Y ( ctmn_1661 ) ) ;
NOR4X1_HVT ctmi_1539 ( .A1 ( data_out[2] ) , .A2 ( data_out[1] ) , 
    .A3 ( data_out[0] ) , .A4 ( data_out[7] ) , .Y ( ctmn_1666 ) ) ;
NOR4X1_HVT ctmi_1540 ( .A1 ( data_out[6] ) , .A2 ( data_out[5] ) , 
    .A3 ( data_out[4] ) , .A4 ( data_out[3] ) , .Y ( ctmn_1667 ) ) ;
NAND2X4_HVT ctmi_1541 ( .A1 ( ls_37 ) , .A2 ( ctmn_1668 ) , .Y ( ctmn_1669 ) ) ;
INVX0_RVT ctmi_1542 ( .A ( ls_68 ) , .Y ( ctmn_1668 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!3 () ;
DCAP_HVT \boundarycell!DCAP_HVT!4 () ;
AO222X1_RVT ctmi_1546 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [6] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [6] ) , .A5 ( phfnn_315 ) , 
    .A6 ( \memory[15] [6] ) , .Y ( ctmn_1672 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!5 () ;
AO221X1_RVT ctmi_1548 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [6] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [6] ) , .A5 ( ctmn_1675 ) , 
    .Y ( ctmn_1676 ) ) ;
AO221X1_HVT ctmi_1549 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [6] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [6] ) , .A5 ( ctmn_1674 ) , 
    .Y ( ctmn_1675 ) ) ;
AO221X1_HVT ctmi_1550 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [6] ) , 
    .A3 ( \memory[8] [6] ) , .A4 ( ctmn_1647 ) , .A5 ( ctmn_1673 ) , 
    .Y ( ctmn_1674 ) ) ;
AO22X1_HVT ctmi_1551 ( .A1 ( \memory[1] [6] ) , .A2 ( ctmn_1648 ) , 
    .A3 ( \memory[13] [6] ) , .A4 ( ctmn_1649 ) , .Y ( ctmn_1673 ) ) ;
AO222X1_RVT ctmi_1552 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [6] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [6] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [6] ) , .Y ( ctmn_1677 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!6 () ;
AO222X1_RVT ctmi_1555 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [5] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [5] ) , .A5 ( phfnn_315 ) , 
    .A6 ( \memory[15] [5] ) , .Y ( ctmn_1680 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!7 () ;
AO221X1_RVT ctmi_1557 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [5] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [5] ) , .A5 ( ctmn_1683 ) , 
    .Y ( ctmn_1684 ) ) ;
AO221X1_HVT ctmi_1558 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [5] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [5] ) , .A5 ( ctmn_1682 ) , 
    .Y ( ctmn_1683 ) ) ;
AO221X1_HVT ctmi_1559 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [5] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [5] ) , .A5 ( ctmn_1681 ) , 
    .Y ( ctmn_1682 ) ) ;
AO22X1_HVT ctmi_1560 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [5] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [5] ) , .Y ( ctmn_1681 ) ) ;
AO222X1_RVT ctmi_1561 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [5] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [5] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [5] ) , .Y ( ctmn_1685 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!8 () ;
AO222X1_RVT ctmi_1564 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [4] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [4] ) , .A5 ( phfnn_315 ) , 
    .A6 ( \memory[15] [4] ) , .Y ( ctmn_1688 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!9 () ;
AO221X1_HVT ctmi_1566 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [4] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [4] ) , .A5 ( ctmn_1691 ) , 
    .Y ( ctmn_1692 ) ) ;
AO221X1_HVT ctmi_1567 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [4] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [4] ) , .A5 ( ctmn_1690 ) , 
    .Y ( ctmn_1691 ) ) ;
AO221X1_HVT ctmi_1568 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [4] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [4] ) , .A5 ( ctmn_1689 ) , 
    .Y ( ctmn_1690 ) ) ;
AO22X1_HVT ctmi_1569 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [4] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [4] ) , .Y ( ctmn_1689 ) ) ;
AO222X1_RVT ctmi_1570 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [4] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [4] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [4] ) , .Y ( ctmn_1693 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!10 () ;
AO222X1_RVT ctmi_1573 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [3] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [3] ) , .A5 ( phfnn_315 ) , 
    .A6 ( \memory[15] [3] ) , .Y ( ctmn_1696 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!11 () ;
AO221X1_RVT ctmi_1575 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [3] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [3] ) , .A5 ( ctmn_1699 ) , 
    .Y ( ctmn_1700 ) ) ;
AO221X1_HVT ctmi_1576 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [3] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [3] ) , .A5 ( ctmn_1698 ) , 
    .Y ( ctmn_1699 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_router_clock_UPF_LS ( 
    .A ( router_clock ) , .Y ( ls_34 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_resetn_UPF_LS ( .A ( resetn ) , 
    .Y ( ls_37 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_read_enb_UPF_LS ( .A ( read_enb ) , 
    .Y ( ls_38 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_write_enb_UPF_LS ( .A ( write_enb ) , 
    .Y ( ls_41 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[7]_UPF_LS ( 
    .A ( data_in[7] ) , .Y ( ls_44 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[6]_UPF_LS ( 
    .A ( data_in[6] ) , .Y ( ls_47 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[5]_UPF_LS ( 
    .A ( data_in[5] ) , .Y ( ls_50 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[4]_UPF_LS ( 
    .A ( data_in[4] ) , .Y ( ls_53 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[3]_UPF_LS ( 
    .A ( data_in[3] ) , .Y ( ls_56 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[2]_UPF_LS ( 
    .A ( data_in[2] ) , .Y ( ls_59 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[1]_UPF_LS ( 
    .A ( data_in[1] ) , .Y ( ls_62 ) ) ;
LSDNSSX1_HVT \snps_fifo__fifo_ls_in_snps_data_in[0]_UPF_LS ( 
    .A ( data_in[0] ) , .Y ( ls_65 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_soft_reset_UPF_LS ( 
    .A ( soft_reset ) , .Y ( ls_68 ) ) ;
LSDNSSX1_HVT snps_fifo__fifo_ls_in_snps_lfd_state_UPF_LS ( .A ( lfd_state ) , 
    .Y ( ls_71 ) ) ;
AO221X1_HVT ctmi_1577 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [3] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [3] ) , .A5 ( ctmn_1697 ) , 
    .Y ( ctmn_1698 ) ) ;
AO22X1_HVT ctmi_1578 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [3] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [3] ) , .Y ( ctmn_1697 ) ) ;
CGLPPRX2_HVT clock_gate_count_reg ( .CLK ( ls_34 ) , .EN ( N62 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_count_reg ) ) ;
CGLPPRX2_HVT clock_gate_data_out_reg ( .CLK ( ls_34 ) , .EN ( N47 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_data_out_reg ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg ( .CLK ( ls_34 ) , .EN ( N39 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_1 ( .CLK ( ls_34 ) , .EN ( N19 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_1 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_2 ( .CLK ( ls_34 ) , .EN ( N17 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_2 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_3 ( .CLK ( ls_34 ) , .EN ( N15 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_3 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_4 ( .CLK ( ls_34 ) , .EN ( N13 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_4 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_5 ( .CLK ( ls_34 ) , .EN ( N11 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_5 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_6 ( .CLK ( ls_34 ) , .EN ( N1 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_6 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_7 ( .CLK ( ls_34 ) , .EN ( N37 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_7 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_8 ( .CLK ( ls_34 ) , .EN ( N35 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_8 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_9 ( .CLK ( ls_34 ) , .EN ( N33 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_9 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_10 ( .CLK ( ls_34 ) , .EN ( N31 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_10 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_11 ( .CLK ( ls_34 ) , .EN ( N29 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_11 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_12 ( .CLK ( ls_34 ) , .EN ( N27 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_12 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_13 ( .CLK ( ls_34 ) , .EN ( N25 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_13 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_14 ( .CLK ( ls_34 ) , .EN ( N23 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_14 ) ) ;
CGLPPRX2_HVT clock_gate_memory_reg_15 ( .CLK ( ls_34 ) , .EN ( N21 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_memory_reg_15 ) ) ;
CGLPPRX2_HVT clock_gate_read_ptr_reg ( .CLK ( ls_34 ) , .EN ( N56 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_read_ptr_reg ) ) ;
CGLPPRX2_HVT clock_gate_write_ptr_reg ( .CLK ( ls_34 ) , .EN ( N41 ) , 
    .SE ( 1'b0 ) , .GCLK ( ls_34_clock_gate_write_ptr_reg ) ) ;
AO222X1_RVT ctmi_1579 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [3] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [3] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [3] ) , .Y ( ctmn_1701 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!12 () ;
AO222X1_RVT ctmi_1582 ( .A1 ( ctmn_1635 ) , .A2 ( \memory[0] [2] ) , 
    .A3 ( ctmn_1636 ) , .A4 ( \memory[12] [2] ) , .A5 ( phfnn_315 ) , 
    .A6 ( \memory[15] [2] ) , .Y ( ctmn_1704 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!13 () ;
AO221X1_RVT ctmi_1584 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [2] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [2] ) , .A5 ( ctmn_1707 ) , 
    .Y ( ctmn_1708 ) ) ;
AO221X1_HVT ctmi_1585 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [2] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [2] ) , .A5 ( ctmn_1706 ) , 
    .Y ( ctmn_1707 ) ) ;
AO221X1_RVT ctmi_1586 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [2] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [2] ) , .A5 ( ctmn_1705 ) , 
    .Y ( ctmn_1706 ) ) ;
AO22X1_HVT ctmi_1587 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [2] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [2] ) , .Y ( ctmn_1705 ) ) ;
AO222X1_RVT ctmi_1588 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [2] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [2] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [2] ) , .Y ( ctmn_1709 ) ) ;
AO221X1_RVT ctmi_1590 ( .A1 ( ctmn_1642 ) , .A2 ( \memory[10] [1] ) , 
    .A3 ( ctmn_1643 ) , .A4 ( \memory[5] [1] ) , .A5 ( ctmn_1714 ) , 
    .Y ( ctmn_1715 ) ) ;
AO221X1_HVT ctmi_1591 ( .A1 ( ctmn_1644 ) , .A2 ( \memory[2] [1] ) , 
    .A3 ( ctmn_1645 ) , .A4 ( \memory[9] [1] ) , .A5 ( ctmn_1713 ) , 
    .Y ( ctmn_1714 ) ) ;
AO221X1_RVT ctmi_1592 ( .A1 ( ctmn_1646 ) , .A2 ( \memory[11] [1] ) , 
    .A3 ( ctmn_1647 ) , .A4 ( \memory[8] [1] ) , .A5 ( ctmn_1712 ) , 
    .Y ( ctmn_1713 ) ) ;
AO22X1_HVT ctmi_1593 ( .A1 ( ctmn_1648 ) , .A2 ( \memory[1] [1] ) , 
    .A3 ( ctmn_1649 ) , .A4 ( \memory[13] [1] ) , .Y ( ctmn_1712 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!14 () ;
AO221X1_HVT ctmi_1595 ( .A1 ( ctmn_1641 ) , .A2 ( \memory[6] [1] ) , 
    .A3 ( ctmn_1635 ) , .A4 ( \memory[0] [1] ) , .A5 ( ctmn_1716 ) , 
    .Y ( ctmn_1717 ) ) ;
AO22X1_HVT ctmi_1596 ( .A1 ( ctmn_1636 ) , .A2 ( \memory[12] [1] ) , 
    .A3 ( phfnn_315 ) , .A4 ( \memory[15] [1] ) , .Y ( ctmn_1716 ) ) ;
AO222X1_RVT ctmi_1597 ( .A1 ( ctmn_1655 ) , .A2 ( \memory[3] [1] ) , 
    .A3 ( ctmn_1656 ) , .A4 ( \memory[4] [1] ) , .A5 ( ctmn_1657 ) , 
    .A6 ( \memory[7] [1] ) , .Y ( ctmn_1718 ) ) ;
SDFFX1_RVT \memory_reg[15][7] ( .D ( N3 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( ls_34_clock_gate_memory_reg_6 ) , .Q ( \memory[15] [7] ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!15 () ;
DCAP_HVT \boundarycell!DCAP_HVT!16 () ;
DCAP_HVT \boundarycell!DCAP_HVT!17 () ;
DCAP_HVT \boundarycell!DCAP_HVT!18 () ;
DCAP_HVT \boundarycell!DCAP_HVT!19 () ;
DCAP_HVT \boundarycell!DCAP_HVT!20 () ;
DCAP_HVT \boundarycell!DCAP_HVT!21 () ;
DCAP_HVT \boundarycell!DCAP_HVT!22 () ;
DCAP_HVT \boundarycell!DCAP_HVT!23 () ;
DCAP_HVT \boundarycell!DCAP_HVT!24 () ;
DCAP_HVT \boundarycell!DCAP_HVT!25 () ;
DCAP_HVT \boundarycell!DCAP_HVT!26 () ;
DCAP_HVT \boundarycell!DCAP_HVT!27 () ;
DCAP_HVT \boundarycell!DCAP_HVT!28 () ;
DCAP_HVT \boundarycell!DCAP_HVT!29 () ;
DCAP_HVT \boundarycell!DCAP_HVT!30 () ;
DCAP_HVT \boundarycell!DCAP_HVT!31 () ;
DCAP_HVT \boundarycell!DCAP_HVT!32 () ;
DCAP_HVT \boundarycell!DCAP_HVT!33 () ;
DCAP_HVT \boundarycell!DCAP_HVT!34 () ;
DCAP_HVT \boundarycell!DCAP_HVT!35 () ;
DCAP_HVT \boundarycell!DCAP_HVT!36 () ;
DCAP_HVT \boundarycell!DCAP_HVT!37 () ;
DCAP_HVT \boundarycell!DCAP_HVT!38 () ;
DCAP_HVT \boundarycell!DCAP_HVT!39 () ;
DCAP_HVT \boundarycell!DCAP_HVT!40 () ;
DCAP_HVT \boundarycell!DCAP_HVT!41 () ;
DCAP_HVT \boundarycell!DCAP_HVT!42 () ;
DCAP_HVT \boundarycell!DCAP_HVT!43 () ;
DCAP_HVT \boundarycell!DCAP_HVT!44 () ;
DCAP_HVT \boundarycell!DCAP_HVT!45 () ;
DCAP_HVT \boundarycell!DCAP_HVT!46 () ;
DCAP_HVT \boundarycell!DCAP_HVT!47 () ;
DCAP_HVT \boundarycell!DCAP_HVT!48 () ;
DCAP_HVT \boundarycell!DCAP_HVT!49 () ;
DCAP_HVT \boundarycell!DCAP_HVT!50 () ;
DCAP_HVT \boundarycell!DCAP_HVT!51 () ;
DCAP_HVT \boundarycell!DCAP_HVT!52 () ;
DCAP_HVT \boundarycell!DCAP_HVT!53 () ;
DCAP_HVT \boundarycell!DCAP_HVT!54 () ;
DCAP_HVT \boundarycell!DCAP_HVT!55 () ;
DCAP_HVT \boundarycell!DCAP_HVT!56 () ;
DCAP_HVT \boundarycell!DCAP_HVT!57 () ;
DCAP_HVT \boundarycell!DCAP_HVT!58 () ;
DCAP_HVT \boundarycell!DCAP_HVT!59 () ;
DCAP_HVT \boundarycell!DCAP_HVT!60 () ;
DCAP_HVT \boundarycell!DCAP_HVT!61 () ;
DCAP_HVT \boundarycell!DCAP_HVT!62 () ;
DCAP_HVT \boundarycell!DCAP_HVT!63 () ;
DCAP_HVT \boundarycell!DCAP_HVT!64 () ;
DCAP_HVT \boundarycell!DCAP_HVT!65 () ;
DCAP_HVT \boundarycell!DCAP_HVT!66 () ;
DCAP_HVT \boundarycell!DCAP_HVT!67 () ;
DCAP_HVT \boundarycell!DCAP_HVT!68 () ;
DCAP_HVT \boundarycell!DCAP_HVT!69 () ;
DCAP_HVT \boundarycell!DCAP_HVT!70 () ;
DCAP_HVT \boundarycell!DCAP_HVT!71 () ;
DCAP_HVT \boundarycell!DCAP_HVT!72 () ;
DCAP_HVT \boundarycell!DCAP_HVT!73 () ;
DCAP_HVT \boundarycell!DCAP_HVT!74 () ;
DCAP_HVT \boundarycell!DCAP_HVT!75 () ;
DCAP_HVT \boundarycell!DCAP_HVT!76 () ;
DCAP_HVT \boundarycell!DCAP_HVT!77 () ;
DCAP_HVT \boundarycell!DCAP_HVT!78 () ;
DCAP_HVT \boundarycell!DCAP_HVT!79 () ;
DCAP_HVT \boundarycell!DCAP_HVT!80 () ;
DCAP_HVT \boundarycell!DCAP_HVT!81 () ;
DCAP_HVT \boundarycell!DCAP_HVT!82 () ;
DCAP_HVT \boundarycell!DCAP_HVT!83 () ;
DCAP_HVT \boundarycell!DCAP_HVT!84 () ;
DCAP_HVT \boundarycell!DCAP_HVT!85 () ;
DCAP_HVT \boundarycell!DCAP_HVT!86 () ;
DCAP_HVT \boundarycell!DCAP_HVT!87 () ;
DCAP_HVT \boundarycell!DCAP_HVT!88 () ;
DCAP_HVT \boundarycell!DCAP_HVT!89 () ;
DCAP_HVT \boundarycell!DCAP_HVT!90 () ;
DCAP_HVT \boundarycell!DCAP_HVT!91 () ;
DCAP_HVT \boundarycell!DCAP_HVT!92 () ;
DCAP_HVT \boundarycell!DCAP_HVT!93 () ;
DCAP_HVT \boundarycell!DCAP_HVT!94 () ;
DCAP_HVT \boundarycell!DCAP_HVT!95 () ;
DCAP_HVT \boundarycell!DCAP_HVT!96 () ;
DCAP_HVT \boundarycell!DCAP_HVT!97 () ;
DCAP_HVT \boundarycell!DCAP_HVT!98 () ;
DCAP_HVT \boundarycell!DCAP_HVT!99 () ;
DCAP_HVT \boundarycell!DCAP_HVT!100 () ;
DCAP_HVT \boundarycell!DCAP_HVT!101 () ;
DCAP_HVT \boundarycell!DCAP_HVT!102 () ;
DCAP_HVT \boundarycell!DCAP_HVT!103 () ;
DCAP_HVT \boundarycell!DCAP_HVT!104 () ;
DCAP_HVT \boundarycell!DCAP_HVT!105 () ;
DCAP_HVT \boundarycell!DCAP_HVT!106 () ;
DCAP_HVT \boundarycell!DCAP_HVT!107 () ;
DCAP_HVT \boundarycell!DCAP_HVT!108 () ;
DCAP_HVT \boundarycell!DCAP_HVT!109 () ;
DCAP_HVT \boundarycell!DCAP_HVT!110 () ;
DCAP_HVT \boundarycell!DCAP_HVT!111 () ;
DCAP_HVT \boundarycell!DCAP_HVT!112 () ;
DCAP_HVT \boundarycell!DCAP_HVT!113 () ;
DCAP_HVT \boundarycell!DCAP_HVT!114 () ;
DCAP_HVT \boundarycell!DCAP_HVT!115 () ;
DCAP_HVT \boundarycell!DCAP_HVT!116 () ;
DCAP_HVT \boundarycell!DCAP_HVT!117 () ;
DCAP_HVT \boundarycell!DCAP_HVT!118 () ;
DCAP_HVT \boundarycell!DCAP_HVT!119 () ;
DCAP_HVT \boundarycell!DCAP_HVT!120 () ;
DCAP_HVT \boundarycell!DCAP_HVT!121 () ;
DCAP_HVT \boundarycell!DCAP_HVT!122 () ;
DCAP_HVT \boundarycell!DCAP_HVT!123 () ;
DCAP_HVT \boundarycell!DCAP_HVT!124 () ;
DCAP_HVT \boundarycell!DCAP_HVT!125 () ;
DCAP_HVT \boundarycell!DCAP_HVT!126 () ;
DCAP_HVT \boundarycell!DCAP_HVT!127 () ;
DCAP_HVT \boundarycell!DCAP_HVT!128 () ;
DCAP_HVT \boundarycell!DCAP_HVT!129 () ;
DCAP_HVT \boundarycell!DCAP_HVT!130 () ;
DCAP_HVT \boundarycell!DCAP_HVT!131 () ;
DCAP_HVT \boundarycell!DCAP_HVT!132 () ;
DCAP_HVT \boundarycell!DCAP_HVT!133 () ;
DCAP_HVT \boundarycell!DCAP_HVT!134 () ;
DCAP_HVT \boundarycell!DCAP_HVT!135 () ;
DCAP_HVT \boundarycell!DCAP_HVT!136 () ;
DCAP_HVT \boundarycell!DCAP_HVT!137 () ;
DCAP_HVT \boundarycell!DCAP_HVT!138 () ;
DCAP_HVT \boundarycell!DCAP_HVT!139 () ;
DCAP_HVT \boundarycell!DCAP_HVT!140 () ;
DCAP_HVT \boundarycell!DCAP_HVT!141 () ;
DCAP_HVT \boundarycell!DCAP_HVT!142 () ;
DCAP_HVT \boundarycell!DCAP_HVT!143 () ;
DCAP_HVT \boundarycell!DCAP_HVT!144 () ;
DCAP_HVT \boundarycell!DCAP_HVT!166 () ;
DCAP_HVT \boundarycell!DCAP_HVT!168 () ;
DCAP_HVT \boundarycell!DCAP_HVT!170 () ;
DCAP_HVT \boundarycell!DCAP_HVT!172 () ;
DCAP_HVT \boundarycell!DCAP_HVT!174 () ;
DCAP_HVT \boundarycell!DCAP_HVT!176 () ;
DCAP_HVT \boundarycell!DCAP_HVT!178 () ;
DCAP_HVT \boundarycell!DCAP_HVT!180 () ;
DCAP_HVT \boundarycell!DCAP_HVT!182 () ;
DCAP_HVT \boundarycell!DCAP_HVT!184 () ;
DCAP_HVT \boundarycell!DCAP_HVT!186 () ;
DCAP_HVT \boundarycell!DCAP_HVT!188 () ;
DCAP_HVT \boundarycell!DCAP_HVT!190 () ;
DCAP_HVT \boundarycell!DCAP_HVT!192 () ;
DCAP_HVT \boundarycell!DCAP_HVT!194 () ;
DCAP_HVT \boundarycell!DCAP_HVT!196 () ;
DCAP_HVT \boundarycell!DCAP_HVT!198 () ;
DCAP_HVT \boundarycell!DCAP_HVT!200 () ;
DCAP_HVT \boundarycell!DCAP_HVT!202 () ;
DCAP_HVT \boundarycell!DCAP_HVT!204 () ;
DCAP_HVT \boundarycell!DCAP_HVT!206 () ;
DCAP_HVT \boundarycell!DCAP_HVT!208 () ;
DCAP_HVT \boundarycell!DCAP_HVT!210 () ;
DCAP_HVT \boundarycell!DCAP_HVT!212 () ;
DCAP_HVT \boundarycell!DCAP_HVT!214 () ;
DCAP_HVT \boundarycell!DCAP_HVT!216 () ;
DCAP_HVT \boundarycell!DCAP_HVT!218 () ;
DCAP_HVT \boundarycell!DCAP_HVT!220 () ;
DCAP_HVT \boundarycell!DCAP_HVT!222 () ;
DCAP_HVT \boundarycell!DCAP_HVT!224 () ;
DCAP_HVT \boundarycell!DCAP_HVT!226 () ;
DCAP_HVT \boundarycell!DCAP_HVT!228 () ;
DCAP_HVT \boundarycell!DCAP_HVT!230 () ;
DCAP_HVT \boundarycell!DCAP_HVT!232 () ;
DCAP_HVT \boundarycell!DCAP_HVT!234 () ;
DCAP_HVT \boundarycell!DCAP_HVT!236 () ;
DCAP_HVT \boundarycell!DCAP_HVT!238 () ;
DCAP_HVT \boundarycell!DCAP_HVT!240 () ;
DCAP_HVT \boundarycell!DCAP_HVT!242 () ;
DCAP_HVT \boundarycell!DCAP_HVT!244 () ;
DCAP_HVT \boundarycell!DCAP_HVT!246 () ;
DCAP_HVT \boundarycell!DCAP_HVT!248 () ;
DCAP_HVT \boundarycell!DCAP_HVT!250 () ;
DCAP_HVT \boundarycell!DCAP_HVT!252 () ;
DCAP_HVT \boundarycell!DCAP_HVT!254 () ;
DCAP_HVT \boundarycell!DCAP_HVT!256 () ;
DCAP_HVT \boundarycell!DCAP_HVT!258 () ;
DCAP_HVT \boundarycell!DCAP_HVT!260 () ;
DCAP_HVT \boundarycell!DCAP_HVT!262 () ;
DCAP_HVT \boundarycell!DCAP_HVT!264 () ;
DCAP_HVT \boundarycell!DCAP_HVT!266 () ;
DCAP_HVT \boundarycell!DCAP_HVT!268 () ;
DCAP_HVT \boundarycell!DCAP_HVT!270 () ;
DCAP_HVT \boundarycell!DCAP_HVT!272 () ;
endmodule


module router_top ( router_clock , resetn , pkt_valid , data_in , read_enb_0 , 
    read_enb_1 , read_enb_2 , data_out_0 , data_out_1 , data_out_2 , 
    vld_out_0 , vld_out_1 , vld_out_2 , busy , err ) ;
input  router_clock ;
input  resetn ;
input  pkt_valid ;
input  [7:0] data_in ;
input  read_enb_0 ;
input  read_enb_1 ;
input  read_enb_2 ;
output [7:0] data_out_0 ;
output [7:0] data_out_1 ;
output [7:0] data_out_2 ;
output vld_out_0 ;
output vld_out_1 ;
output vld_out_2 ;
output busy ;
output err ;

wire [2:0] write_enb ;
wire [7:0] dout ;
wire ls_8 ;
wire ls_9 ;
wire ls_10 ;
wire ls_11 ;
wire ls_12 ;
wire ls_13 ;
wire ls_14 ;
wire ls_15 ;
wire ls_16 ;
wire ls_17 ;
wire ls_18 ;
wire ls_19 ;
wire ls_20 ;
wire ls_21 ;
wire ls_22 ;
wire ls_23 ;
wire ls_24 ;
wire ls_25 ;
wire ls_26 ;
wire ls_27 ;
wire ls_28 ;
wire ls_29 ;
wire ls_30 ;
wire ls_31 ;
wire [0:0] \FSM/data_in_temp ;
wire [2:0] \FSM/pre_state ;
wire [1:1] \SYNCH/addr ;
wire [4:0] \SYNCH/count_read_0 ;
wire [4:0] \SYNCH/count_read_1 ;
wire [4:0] \SYNCH/count_read_2 ;
wire [7:0] \REG/full_state_byte ;
wire [7:0] \REG/first_byte ;
wire [7:0] \REG/parity ;
wire [7:0] \REG/pkt_parity ;

assign data_out_0[7] = ls_8 ;
assign data_out_0[6] = ls_9 ;
assign data_out_0[5] = ls_10 ;
assign data_out_0[4] = ls_11 ;
assign data_out_0[3] = ls_12 ;
assign data_out_0[2] = ls_13 ;
assign data_out_0[1] = ls_14 ;
assign data_out_0[0] = ls_15 ;
assign data_out_1[7] = ls_16 ;
assign data_out_1[6] = ls_17 ;
assign data_out_1[5] = ls_18 ;
assign data_out_1[4] = ls_19 ;
assign data_out_1[3] = ls_20 ;
assign data_out_1[2] = ls_21 ;
assign data_out_1[1] = ls_22 ;
assign data_out_1[0] = ls_23 ;
assign data_out_2[7] = ls_24 ;
assign data_out_2[6] = ls_25 ;
assign data_out_2[5] = ls_26 ;
assign data_out_2[4] = ls_27 ;
assign data_out_2[3] = ls_28 ;
assign data_out_2[2] = ls_29 ;
assign data_out_2[1] = ls_30 ;
assign data_out_2[0] = ls_31 ;

router_fifo FIFO_0 ( .router_clock ( router_clock ) , .resetn ( resetn ) , 
    .soft_reset ( soft_reset_0 ) , .write_enb ( write_enb[0] ) , 
    .read_enb ( read_enb_0 ) , .lfd_state ( lfd_state ) , .data_in ( dout ) ,
    .data_out ( { \hvoHier_data_out_0[7] , \hvoHier_data_out_0[6] , 
        \hvoHier_data_out_0[5] , \hvoHier_data_out_0[4] , 
        \hvoHier_data_out_0[3] , \hvoHier_data_out_0[2] , 
        \hvoHier_data_out_0[1] , \hvoHier_data_out_0[0] } ) ,
    .empty ( empty_0 ) , .full ( full_0 ) ) ;
router_fifo_1 FIFO_1 ( .router_clock ( router_clock ) , .resetn ( resetn ) , 
    .soft_reset ( soft_reset_1 ) , .write_enb ( write_enb[1] ) , 
    .read_enb ( read_enb_1 ) , .lfd_state ( lfd_state ) , .data_in ( dout ) ,
    .data_out ( { \hvoHier_data_out_1[7] , \hvoHier_data_out_1[6] , 
        \hvoHier_data_out_1[5] , \hvoHier_data_out_1[4] , 
        \hvoHier_data_out_1[3] , \hvoHier_data_out_1[2] , 
        \hvoHier_data_out_1[1] , \hvoHier_data_out_1[0] } ) ,
    .empty ( empty_1 ) , .full ( full_1 ) ) ;
router_fifo_0 FIFO_2 ( .router_clock ( router_clock ) , .resetn ( resetn ) , 
    .soft_reset ( soft_reset_2 ) , .write_enb ( write_enb[2] ) , 
    .read_enb ( read_enb_2 ) , .lfd_state ( lfd_state ) , .data_in ( dout ) ,
    .data_out ( { \hvoHier_data_out_2[7] , \hvoHier_data_out_2[6] , 
        \hvoHier_data_out_2[5] , \hvoHier_data_out_2[4] , 
        \hvoHier_data_out_2[3] , \hvoHier_data_out_2[2] , 
        \hvoHier_data_out_2[1] , \hvoHier_data_out_2[0] } ) ,
    .empty ( empty_2 ) , .full ( full_2 ) ) ;
SDFFX1_RVT \SYNCH/count_read_0_reg[2] ( .D ( \SYNCH/N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_0_reg ) , 
    .Q ( \SYNCH/count_read_0 [2] ) , .QN ( ctmn_629 ) ) ;
OR2X1_HVT ctmi_820 ( .A1 ( parity_done ) , .A2 ( ctmn_567 ) , 
    .Y ( ctmn_568 ) ) ;
SDFFSSRX2_HVT \SYNCH/soft_reset_0_reg ( .RSTB ( 1'b1 ) , .SETB ( ctmn_602 ) , 
    .D ( ctmn_603 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .QN ( soft_reset_0 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[7]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[7] ) , .Y ( ls_8 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[6]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[6] ) , .Y ( ls_9 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[5]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[5] ) , .Y ( ls_10 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[4]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[4] ) , .Y ( ls_11 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[3]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[3] ) , .Y ( ls_12 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[2]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[2] ) , .Y ( ls_13 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[1]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[1] ) , .Y ( ls_14 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_0[0]_UPF_LS ( 
    .A ( \hvoHier_data_out_0[0] ) , .Y ( ls_15 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[7]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[7] ) , .Y ( ls_16 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[6]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[6] ) , .Y ( ls_17 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[5]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[5] ) , .Y ( ls_18 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[4]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[4] ) , .Y ( ls_19 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[3]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[3] ) , .Y ( ls_20 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[2]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[2] ) , .Y ( ls_21 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[1]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[1] ) , .Y ( ls_22 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_1[0]_UPF_LS ( 
    .A ( \hvoHier_data_out_1[0] ) , .Y ( ls_23 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[7]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[7] ) , .Y ( ls_24 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[6]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[6] ) , .Y ( ls_25 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[5]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[5] ) , .Y ( ls_26 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[4]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[4] ) , .Y ( ls_27 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[3]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[3] ) , .Y ( ls_28 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[2]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[2] ) , .Y ( ls_29 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[1]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[1] ) , .Y ( ls_30 ) ) ;
LSUPX1_HVT \snps_fifo__fifo_ls_out_snps_data_out_2[0]_UPF_LS ( 
    .A ( \hvoHier_data_out_2[0] ) , .Y ( ls_31 ) ) ;
LSUPX1_HVT snps_fifo__fifo_ls_out_snps_empty_0_UPF_LS ( .A ( empty_0 ) , 
    .Y ( ls_66 ) ) ;
LSUPX1_HVT snps_fifo__fifo_ls_out_snps_full_0_UPF_LS ( .A ( full_0 ) , 
    .Y ( ls_67 ) ) ;
LSUPX1_HVT snps_fifo__fifo_ls_out_snps_empty_1_UPF_LS ( .A ( empty_1 ) , 
    .Y ( ls_73 ) ) ;
LSUPX1_HVT snps_fifo__fifo_ls_out_snps_full_1_UPF_LS ( .A ( full_1 ) , 
    .Y ( ls_74 ) ) ;
LSUPX1_HVT snps_fifo__fifo_ls_out_snps_empty_2_UPF_LS ( .A ( empty_2 ) , 
    .Y ( ls_77 ) ) ;
LSUPX1_HVT snps_fifo__fifo_ls_out_snps_full_2_UPF_LS ( .A ( full_2 ) , 
    .Y ( ls_78 ) ) ;
SDFFX1_RVT \FSM/pre_state_reg[2] ( .D ( \FSM/N0 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( router_clock ) , .Q ( \FSM/pre_state [2] ) , 
    .QN ( ctmn_546 ) ) ;
SDFFSSRX2_HVT \FSM/pre_state_reg[1] ( .RSTB ( 1'b1 ) , .SETB ( ctmn_596 ) , 
    .D ( phfnn_310 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .Q ( ctmn_547 ) , .QN ( \FSM/pre_state [1] ) ) ;
SDFFX1_RVT \SYNCH/count_read_0_reg[4] ( .D ( \SYNCH/N7 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_0_reg ) , 
    .Q ( \SYNCH/count_read_0 [4] ) , .QN ( ctmn_627 ) ) ;
SDFFX1_RVT \FSM/pre_state_reg[0] ( .D ( \FSM/N2 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( router_clock ) , .Q ( \FSM/pre_state [0] ) , 
    .QN ( ctmn_552 ) ) ;
NAND4X0_RVT ctmi_832 ( .A1 ( ctmn_572 ) , .A2 ( ctmn_573 ) , 
    .A3 ( ctmn_574 ) , .A4 ( ctmn_575 ) , .Y ( ctmn_576 ) ) ;
MUX21X1_RVT ctmi_937 ( .A1 ( ctmn_649 ) , .A2 ( ctmn_650 ) , 
    .S0 ( \REG/parity [7] ) , .Y ( \REG/N32 ) ) ;
AO221X1_HVT ctmi_923 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [6] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [6] ) , .A5 ( ctmn_640 ) , 
    .Y ( \REG/N15 ) ) ;
SDFFX1_RVT \SYNCH/addr_reg[1] ( .D ( SEQMAP_NET_123 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \SYNCH/addr [1] ) , .QN ( ctmn_555 ) ) ;
SDFFX1_RVT \SYNCH/count_read_0_reg[3] ( .D ( \SYNCH/N8 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_0_reg ) , 
    .Q ( \SYNCH/count_read_0 [3] ) ) ;
SDFFSSRX2_HVT \SYNCH/soft_reset_1_reg ( .RSTB ( 1'b1 ) , .SETB ( ctmn_608 ) , 
    .D ( ctmn_609 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .QN ( soft_reset_1 ) ) ;
AO21X1_HVT ctmi_938 ( .A1 ( \REG/first_byte [7] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_639 ) , .Y ( ctmn_649 ) ) ;
AND2X1_HVT ctmi_924 ( .A1 ( phfnn_295 ) , .A2 ( data_in[6] ) , 
    .Y ( ctmn_640 ) ) ;
AO22X1_HVT ctmi_963 ( .A1 ( ctmn_553 ) , .A2 ( \SYNCH/addr [1] ) , 
    .A3 ( phfnn_308 ) , .A4 ( data_in[1] ) , .Y ( SEQMAP_NET_123 ) ) ;
MUX21X1_RVT ctmi_942 ( .A1 ( ctmn_651 ) , .A2 ( ctmn_652 ) , 
    .S0 ( \REG/parity [6] ) , .Y ( \REG/N33 ) ) ;
AO221X1_HVT ctmi_925 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [5] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [5] ) , .A5 ( ctmn_641 ) , 
    .Y ( \REG/N16 ) ) ;
AND2X1_HVT ctmi_781 ( .A1 ( resetn ) , .A2 ( data_in[7] ) , .Y ( \REG/N5 ) ) ;
AND2X1_HVT ctmi_926 ( .A1 ( phfnn_295 ) , .A2 ( data_in[5] ) , 
    .Y ( ctmn_641 ) ) ;
AO221X1_HVT ctmi_927 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [4] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [4] ) , .A5 ( ctmn_642 ) , 
    .Y ( \REG/N17 ) ) ;
MUX21X1_RVT ctmi_945 ( .A1 ( ctmn_653 ) , .A2 ( ctmn_654 ) , 
    .S0 ( \REG/parity [5] ) , .Y ( \REG/N34 ) ) ;
AND2X1_HVT ctmi_928 ( .A1 ( phfnn_295 ) , .A2 ( data_in[4] ) , 
    .Y ( ctmn_642 ) ) ;
AO221X1_HVT ctmi_929 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [3] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [3] ) , .A5 ( ctmn_643 ) , 
    .Y ( \REG/N18 ) ) ;
AND2X1_HVT ctmi_930 ( .A1 ( phfnn_295 ) , .A2 ( data_in[3] ) , 
    .Y ( ctmn_643 ) ) ;
MUX21X1_RVT ctmi_948 ( .A1 ( ctmn_655 ) , .A2 ( ctmn_656 ) , 
    .S0 ( \REG/parity [4] ) , .Y ( \REG/N35 ) ) ;
AO221X1_HVT ctmi_931 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [2] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [2] ) , .A5 ( ctmn_644 ) , 
    .Y ( \REG/N19 ) ) ;
AND2X1_HVT ctmi_932 ( .A1 ( phfnn_295 ) , .A2 ( data_in[2] ) , 
    .Y ( ctmn_644 ) ) ;
AO221X1_HVT ctmi_933 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [1] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [1] ) , .A5 ( ctmn_645 ) , 
    .Y ( \REG/N20 ) ) ;
MUX21X1_RVT ctmi_951 ( .A1 ( ctmn_657 ) , .A2 ( ctmn_658 ) , 
    .S0 ( \REG/parity [3] ) , .Y ( \REG/N36 ) ) ;
AND2X1_HVT ctmi_934 ( .A1 ( phfnn_295 ) , .A2 ( data_in[1] ) , 
    .Y ( ctmn_645 ) ) ;
AO221X1_HVT ctmi_935 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [0] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [0] ) , .A5 ( ctmn_646 ) , 
    .Y ( \REG/N21 ) ) ;
AND2X1_HVT ctmi_936 ( .A1 ( phfnn_295 ) , .A2 ( data_in[0] ) , 
    .Y ( ctmn_646 ) ) ;
MUX21X1_RVT ctmi_954 ( .A1 ( ctmn_659 ) , .A2 ( ctmn_660 ) , 
    .S0 ( \REG/parity [2] ) , .Y ( \REG/N37 ) ) ;
NAND2X2_HVT ctmi_939 ( .A1 ( resetn ) , .A2 ( \FSM/pre_state [0] ) , 
    .Y ( ctmn_647 ) ) ;
INVX2_RVT phfnr_buf_1066 ( .A ( ctmn_647 ) , .Y ( phfnn_296 ) ) ;
OAI22X1_HVT ctmi_941 ( .A1 ( \REG/first_byte [7] ) , .A2 ( ctmn_647 ) , 
    .A3 ( ctmn_637 ) , .A4 ( data_in[7] ) , .Y ( ctmn_650 ) ) ;
MUX21X1_RVT ctmi_957 ( .A1 ( ctmn_661 ) , .A2 ( ctmn_662 ) , 
    .S0 ( \REG/parity [1] ) , .Y ( \REG/N38 ) ) ;
AO21X1_HVT ctmi_943 ( .A1 ( \REG/first_byte [6] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_640 ) , .Y ( ctmn_651 ) ) ;
OAI22X1_HVT ctmi_944 ( .A1 ( data_in[6] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [6] ) , .Y ( ctmn_652 ) ) ;
AO21X1_HVT ctmi_946 ( .A1 ( \REG/first_byte [5] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_641 ) , .Y ( ctmn_653 ) ) ;
MUX21X1_RVT ctmi_960 ( .A1 ( ctmn_663 ) , .A2 ( ctmn_664 ) , 
    .S0 ( \REG/parity [0] ) , .Y ( \REG/N39 ) ) ;
OAI22X1_HVT ctmi_947 ( .A1 ( data_in[5] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [5] ) , .Y ( ctmn_654 ) ) ;
AO21X1_HVT ctmi_949 ( .A1 ( \REG/first_byte [4] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_642 ) , .Y ( ctmn_655 ) ) ;
OAI22X1_HVT ctmi_950 ( .A1 ( data_in[4] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [4] ) , .Y ( ctmn_656 ) ) ;
INVX0_RVT phfnr_buf_1078 ( .A ( ctmn_553 ) , .Y ( phfnn_308 ) ) ;
AO21X1_HVT ctmi_952 ( .A1 ( \REG/first_byte [3] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_643 ) , .Y ( ctmn_657 ) ) ;
AND2X1_HVT ctmi_782 ( .A1 ( resetn ) , .A2 ( data_in[6] ) , .Y ( \REG/N6 ) ) ;
AND2X1_RVT ctmi_783 ( .A1 ( resetn ) , .A2 ( data_in[5] ) , .Y ( \REG/N7 ) ) ;
AND2X1_RVT ctmi_784 ( .A1 ( resetn ) , .A2 ( data_in[4] ) , .Y ( \REG/N8 ) ) ;
AND2X1_RVT ctmi_785 ( .A1 ( resetn ) , .A2 ( data_in[3] ) , .Y ( \REG/N9 ) ) ;
AND2X1_RVT ctmi_786 ( .A1 ( resetn ) , .A2 ( data_in[2] ) , .Y ( \REG/N10 ) ) ;
AND2X1_RVT ctmi_787 ( .A1 ( resetn ) , .A2 ( data_in[1] ) , .Y ( \REG/N11 ) ) ;
AND2X1_HVT ctmi_788 ( .A1 ( resetn ) , .A2 ( data_in[0] ) , .Y ( \REG/N12 ) ) ;
NAND2X0_RVT ctmi_789 ( .A1 ( resetn ) , .A2 ( phfnn_311 ) , .Y ( \REG/N22 ) ) ;
SDFFX1_RVT \SYNCH/count_read_1_reg[0] ( .D ( clkgt_enable_net_112 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .QN ( \SYNCH/count_read_1 [0] ) ) ;
INVX0_RVT A1248 ( .A ( ctmn_593 ) , .Y ( N386 ) ) ;
AND4X1_RVT ctmi_865 ( .A1 ( \SYNCH/count_read_0 [0] ) , 
    .A2 ( \SYNCH/count_read_0 [2] ) , .A3 ( \SYNCH/count_read_0 [3] ) , 
    .A4 ( ctmn_601 ) , .Y ( ctmn_602 ) ) ;
AND2X1_HVT A675 ( .A1 ( N90 ) , .A2 ( N89 ) , .Y ( N130 ) ) ;
AND2X1_HVT A1271 ( .A1 ( ctmn_173 ) , .A2 ( ctmn_194 ) , .Y ( N395 ) ) ;
AND2X1_HVT ctmi_866 ( .A1 ( phfnn_301 ) , .A2 ( \SYNCH/count_read_0 [4] ) , 
    .Y ( ctmn_601 ) ) ;
OR2X2_HVT A1231 ( .A1 ( ctmn_582 ) , .A2 ( read_enb_0 ) , .Y ( N383 ) ) ;
OR2X1_HVT A594 ( .A1 ( ctmn_569 ) , .A2 ( ctmn_568 ) , .Y ( N89 ) ) ;
INVX1_RVT phfnr_buf_1063 ( .A ( pkt_valid ) , .Y ( phfnn_293 ) ) ;
AND4X1_RVT ctmi_871 ( .A1 ( \SYNCH/count_read_1 [2] ) , 
    .A2 ( \SYNCH/count_read_1 [3] ) , .A3 ( \SYNCH/count_read_1 [0] ) , 
    .A4 ( phfnn_307 ) , .Y ( ctmn_608 ) ) ;
NAND2X0_RVT ctmi_872 ( .A1 ( \SYNCH/count_read_1 [4] ) , .A2 ( ctmn_605 ) , 
    .Y ( ctmn_606 ) ) ;
NAND3X0_RVT ctmi_873 ( .A1 ( \SYNCH/count_read_1 [2] ) , 
    .A2 ( \SYNCH/count_read_1 [3] ) , .A3 ( \SYNCH/count_read_1 [1] ) , 
    .Y ( ctmn_605 ) ) ;
NAND3X0_LVT A1164 ( .A1 ( resetn ) , .A2 ( N366 ) , .A3 ( N363 ) , 
    .Y ( \REG/N4 ) ) ;
INVX0_RVT phfnr_buf_1064 ( .A ( N97 ) , .Y ( phfnn_294 ) ) ;
INVX1_RVT ctmi_1411 ( .A ( data_in[1] ) , .Y ( N103 ) ) ;
NAND2X0_RVT ctmi_807 ( .A1 ( \FSM/pre_state [0] ) , .A2 ( ctmn_547 ) , 
    .Y ( ctmn_565 ) ) ;
OR2X1_HVT A613 ( .A1 ( data_in[0] ) , .A2 ( data_in[1] ) , .Y ( N97 ) ) ;
INVX0_HVT phfnr_buf_1077 ( .A ( ctmn_606 ) , .Y ( phfnn_307 ) ) ;
OR2X1_HVT A1179 ( .A1 ( read_enb_2 ) , .A2 ( ctmn_582 ) , .Y ( N373 ) ) ;
AND2X1_HVT ctmi_809 ( .A1 ( ctmn_548 ) , .A2 ( resetn ) , .Y ( \REG/N1 ) ) ;
AND2X1_HVT A601 ( .A1 ( resetn ) , .A2 ( ctmn_553 ) , .Y ( N90 ) ) ;
INVX1_RVT phfnr_buf_1081 ( .A ( N108 ) , .Y ( phfnn_311 ) ) ;
INVX2_RVT phfnr_buf_1065 ( .A ( ctmn_637 ) , .Y ( phfnn_295 ) ) ;
INVX2_RVT phfnr_buf_1067 ( .A ( N109 ) , .Y ( phfnn_297 ) ) ;
OA21X1_HVT A616 ( .A1 ( phfnn_311 ) , .A2 ( N97 ) , .A3 ( N99 ) , 
    .Y ( N100 ) ) ;
NOR2X0_RVT ctmi_802 ( .A1 ( ctmn_603 ) , .A2 ( ctmn_602 ) , .Y ( ctmn_618 ) ) ;
INVX1_RVT phfnr_buf_1068 ( .A ( ctmn_548 ) , .Y ( phfnn_298 ) ) ;
INVX1_RVT phfnr_buf_1069 ( .A ( N98 ) , .Y ( phfnn_299 ) ) ;
INVX2_RVT phfnr_buf_1070 ( .A ( N104 ) , .Y ( phfnn_300 ) ) ;
INVX1_RVT phfnr_buf_1071 ( .A ( ctmn_628 ) , .Y ( phfnn_301 ) ) ;
OA21X1_HVT A622 ( .A1 ( phfnn_311 ) , .A2 ( N103 ) , .A3 ( N105 ) , 
    .Y ( N106 ) ) ;
OA21X1_RVT A1272 ( .A1 ( N109 ) , .A2 ( ls_73 ) , .A3 ( N395 ) , .Y ( N390 ) ) ;
INVX0_RVT phfnr_buf_1072 ( .A ( ctmn_631 ) , .Y ( phfnn_302 ) ) ;
INVX0_RVT phfnr_buf_1073 ( .A ( ctmn_624 ) , .Y ( phfnn_303 ) ) ;
AND4X1_RVT ctmi_880 ( .A1 ( \SYNCH/count_read_2 [0] ) , 
    .A2 ( \SYNCH/count_read_2 [2] ) , .A3 ( \SYNCH/count_read_2 [3] ) , 
    .A4 ( ctmn_614 ) , .Y ( ctmn_615 ) ) ;
AND2X1_HVT ctmi_823 ( .A1 ( ctmn_571 ) , .A2 ( phfnn_300 ) , 
    .Y ( write_enb[2] ) ) ;
NAND2X2_HVT ctmi_824 ( .A1 ( ctmn_562 ) , .A2 ( ctmn_567 ) , .Y ( ctmn_571 ) ) ;
INVX0_RVT phfnr_buf_1074 ( .A ( N103 ) , .Y ( phfnn_304 ) ) ;
INVX1_RVT phfnr_buf_1075 ( .A ( ctmn_170 ) , .Y ( phfnn_305 ) ) ;
INVX0_RVT phfnr_buf_1076 ( .A ( \REG/N1 ) , .Y ( phfnn_306 ) ) ;
AND2X1_RVT ctmi_769 ( .A1 ( ctmn_173 ) , .A2 ( ctmn_178 ) , .Y ( \FSM/N0 ) ) ;
AND2X1_HVT ctmi_828 ( .A1 ( ctmn_571 ) , .A2 ( phfnn_297 ) , 
    .Y ( write_enb[1] ) ) ;
AOI221X1_HVT ctmi_1410 ( .A1 ( phfnn_293 ) , .A2 ( phfnn_293 ) , 
    .A3 ( data_in[1] ) , .A4 ( data_in[0] ) , .A5 ( ctmn_553 ) , .Y ( N108 ) ) ;
AO22X1_HVT ctmi_965 ( .A1 ( ctmn_553 ) , .A2 ( \FSM/data_in_temp [0] ) , 
    .A3 ( phfnn_308 ) , .A4 ( data_in[0] ) , .Y ( SEQMAP_NET_127 ) ) ;
OAI22X1_HVT ctmi_953 ( .A1 ( data_in[3] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [3] ) , .Y ( ctmn_658 ) ) ;
AO21X1_HVT ctmi_955 ( .A1 ( \REG/first_byte [2] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_644 ) , .Y ( ctmn_659 ) ) ;
OAI22X1_HVT ctmi_956 ( .A1 ( data_in[2] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [2] ) , .Y ( ctmn_660 ) ) ;
AO21X1_HVT ctmi_958 ( .A1 ( \REG/first_byte [1] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_645 ) , .Y ( ctmn_661 ) ) ;
OAI22X1_HVT ctmi_959 ( .A1 ( data_in[1] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [1] ) , .Y ( ctmn_662 ) ) ;
AO21X1_HVT ctmi_961 ( .A1 ( \REG/first_byte [0] ) , .A2 ( phfnn_296 ) , 
    .A3 ( ctmn_646 ) , .Y ( ctmn_663 ) ) ;
OAI22X1_HVT ctmi_962 ( .A1 ( data_in[0] ) , .A2 ( ctmn_637 ) , 
    .A3 ( ctmn_647 ) , .A4 ( \REG/first_byte [0] ) , .Y ( ctmn_664 ) ) ;
SDFFSSRX2_HVT \SYNCH/soft_reset_2_reg ( .RSTB ( 1'b1 ) , .SETB ( ctmn_615 ) , 
    .D ( ctmn_611 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .QN ( soft_reset_2 ) ) ;
SDFFX1_RVT \SYNCH/count_read_2_reg[4] ( .D ( \SYNCH/N19 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_2_reg ) , 
    .Q ( \SYNCH/count_read_2 [4] ) , .QN ( ctmn_623 ) ) ;
SDFFX1_RVT \SYNCH/count_read_2_reg[2] ( .D ( \SYNCH/N21 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_2_reg ) , 
    .Q ( \SYNCH/count_read_2 [2] ) , .QN ( ctmn_625 ) ) ;
SDFFSSRX2_HVT \SYNCH/count_read_2_reg[1] ( .RSTB ( ctmn_622 ) , 
    .SETB ( 1'b1 ) , .D ( ctmn_621 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_SYNCH/count_read_2_reg ) , 
    .Q ( \SYNCH/count_read_2 [1] ) , .QN ( ctmn_621 ) ) ;
SDFFX1_RVT \SYNCH/count_read_2_reg[0] ( .D ( clkgt_enable_net_116 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .QN ( \SYNCH/count_read_2 [0] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[7] ( .RSTB ( \REG/N5 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [7] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[6] ( .RSTB ( \REG/N6 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [6] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[5] ( .RSTB ( \REG/N7 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [5] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[4] ( .RSTB ( \REG/N8 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [4] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[3] ( .RSTB ( \REG/N9 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [3] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[2] ( .RSTB ( \REG/N10 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [2] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[1] ( .RSTB ( \REG/N11 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [1] ) ) ;
SDFFSSRX2_HVT \REG/pkt_parity_reg[0] ( .RSTB ( \REG/N12 ) , .SETB ( 1'b1 ) , 
    .D ( ctmn_548 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( \REG/pkt_parity [0] ) ) ;
SDFFX1_RVT \REG/low_pkt_valid_reg ( .D ( SEQMAP_NET_159 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( router_clock ) , .Q ( low_pkt_valid ) , 
    .QN ( ctmn_569 ) ) ;
SDFFX1_RVT \FSM/data_in_temp_reg[0] ( .D ( SEQMAP_NET_127 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \FSM/data_in_temp [0] ) , .QN ( ctmn_557 ) ) ;
XNOR2X1_HVT ctmi_833 ( .A1 ( \REG/parity [4] ) , .A2 ( \REG/pkt_parity [4] ) , 
    .Y ( ctmn_572 ) ) ;
XNOR2X1_HVT ctmi_834 ( .A1 ( \REG/parity [1] ) , .A2 ( \REG/pkt_parity [1] ) , 
    .Y ( ctmn_573 ) ) ;
OAI22X1_HVT ctmi_842 ( .A1 ( ctmn_582 ) , .A2 ( ctmn_584 ) , 
    .A3 ( phfnn_305 ) , .A4 ( \REG/N31 ) , .Y ( SEQMAP_NET_159 ) ) ;
OR3X1_RVT A1180 ( .A1 ( ls_77 ) , .A2 ( \SYNCH/count_read_2 [0] ) , 
    .A3 ( N373 ) , .Y ( clkgt_enable_net_116 ) ) ;
INVX1_RVT phfnr_buf_1080 ( .A ( ctmn_173 ) , .Y ( phfnn_310 ) ) ;
AND2X1_RVT A1165 ( .A1 ( N366 ) , .A2 ( N363 ) , .Y ( ctmn_172 ) ) ;
OA221X1_HVT ctmi_1412 ( .A1 ( resetn ) , .A2 ( resetn ) , .A3 ( ctmn_576 ) , 
    .A4 ( ctmn_581 ) , .A5 ( parity_done ) , .Y ( \REG/N50 ) ) ;
NAND2X0_LVT A1319 ( .A1 ( phfnn_300 ) , .A2 ( ls_78 ) , .Y ( N362 ) ) ;
AND2X1_HVT ctmi_881 ( .A1 ( phfnn_303 ) , .A2 ( \SYNCH/count_read_2 [4] ) , 
    .Y ( ctmn_614 ) ) ;
NOR3X0_RVT ctmi_808 ( .A1 ( ctmn_609 ) , .A2 ( \SYNCH/count_read_1 [1] ) , 
    .A3 ( ctmn_608 ) , .Y ( clkgt_nextstate_net_114 ) ) ;
OA22X1_RVT A1166 ( .A1 ( ls_77 ) , .A2 ( N106 ) , .A3 ( ls_66 ) , 
    .A4 ( N100 ) , .Y ( N370 ) ) ;
OR3X1_RVT A1232 ( .A1 ( ls_66 ) , .A2 ( \SYNCH/count_read_0 [0] ) , 
    .A3 ( N383 ) , .Y ( clkgt_enable_net_108 ) ) ;
NAND4X0_LVT A1167 ( .A1 ( N370 ) , .A2 ( ctmn_174 ) , .A3 ( N115 ) , 
    .A4 ( ctmn_179 ) , .Y ( ctmn_596 ) ) ;
AOI21X1_HVT A627 ( .A1 ( N108 ) , .A2 ( data_in[0] ) , .A3 ( N110 ) , 
    .Y ( N111 ) ) ;
AND2X1_RVT A1320 ( .A1 ( N362 ) , .A2 ( N364 ) , .Y ( N367 ) ) ;
AND2X1_RVT ctmi_812 ( .A1 ( ctmn_181 ) , .A2 ( ctmn_622 ) , 
    .Y ( \SYNCH/N19 ) ) ;
AO21X1_HVT ctmi_813 ( .A1 ( ctmn_624 ) , .A2 ( ctmn_623 ) , .A3 ( ctmn_614 ) , 
    .Y ( ctmn_181 ) ) ;
INVX4_RVT ctmi_814 ( .A ( ls_66 ) , .Y ( vld_out_0 ) ) ;
AND2X1_HVT A759 ( .A1 ( ctmn_571 ) , .A2 ( phfnn_299 ) , .Y ( write_enb[0] ) ) ;
AND2X1_RVT ctmi_815 ( .A1 ( ctmn_182 ) , .A2 ( ctmn_618 ) , .Y ( \SYNCH/N8 ) ) ;
SDFFSSRX2_HVT \SYNCH/count_read_0_reg[1] ( .RSTB ( ctmn_618 ) , 
    .SETB ( 1'b1 ) , .D ( ctmn_617 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_SYNCH/count_read_0_reg ) , 
    .Q ( \SYNCH/count_read_0 [1] ) , .QN ( ctmn_617 ) ) ;
SDFFX1_RVT \SYNCH/count_read_1_reg[4] ( .D ( \SYNCH/N13 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_1_reg ) , 
    .Q ( \SYNCH/count_read_1 [4] ) ) ;
SDFFX1_RVT \SYNCH/count_read_1_reg[3] ( .D ( \SYNCH/N14 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_1_reg ) , 
    .Q ( \SYNCH/count_read_1 [3] ) ) ;
SDFFX1_RVT \SYNCH/count_read_2_reg[3] ( .D ( \SYNCH/N20 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_2_reg ) , 
    .Q ( \SYNCH/count_read_2 [3] ) ) ;
SDFFX1_RVT \SYNCH/count_read_1_reg[2] ( .D ( \SYNCH/N15 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_SYNCH/count_read_1_reg ) , 
    .Q ( \SYNCH/count_read_1 [2] ) ) ;
SDFFX1_RVT \SYNCH/count_read_1_reg[1] ( .D ( clkgt_nextstate_net_114 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_SYNCH/count_read_1_reg ) , 
    .Q ( \SYNCH/count_read_1 [1] ) ) ;
SDFFX1_RVT \SYNCH/count_read_0_reg[0] ( .D ( clkgt_enable_net_108 ) , 
    .SI ( 1'b0 ) , .SE ( 1'b0 ) , .CLK ( router_clock ) , 
    .QN ( \SYNCH/count_read_0 [0] ) ) ;
OA21X1_HVT ctmi_816 ( .A1 ( ctmn_634 ) , .A2 ( \SYNCH/count_read_0 [3] ) , 
    .A3 ( phfnn_301 ) , .Y ( ctmn_182 ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[7] ( .D ( \REG/N5 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [7] ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[6] ( .D ( \REG/N6 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [6] ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[5] ( .D ( \REG/N7 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [5] ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[4] ( .D ( \REG/N8 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [4] ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[3] ( .D ( \REG/N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [3] ) ) ;
AND4X1_RVT ctmi_968 ( .A1 ( \SYNCH/count_read_0 [0] ) , 
    .A2 ( \SYNCH/count_read_0 [2] ) , .A3 ( \SYNCH/count_read_0 [1] ) , 
    .A4 ( \SYNCH/count_read_0 [3] ) , .Y ( ctmn_628 ) ) ;
AND2X1_RVT A1168 ( .A1 ( N370 ) , .A2 ( ctmn_174 ) , .Y ( ctmn_175 ) ) ;
NAND3X0_LVT A1321 ( .A1 ( N367 ) , .A2 ( ctmn_170 ) , .A3 ( N365 ) , 
    .Y ( ctmn_179 ) ) ;
INVX4_RVT A1137 ( .A ( ls_77 ) , .Y ( vld_out_2 ) ) ;
AND2X1_RVT ctmi_817 ( .A1 ( ctmn_183 ) , .A2 ( ctmn_184 ) , 
    .Y ( \SYNCH/N14 ) ) ;
OA21X1_HVT ctmi_818 ( .A1 ( phfnn_302 ) , .A2 ( \SYNCH/count_read_1 [3] ) , 
    .A3 ( ctmn_605 ) , .Y ( ctmn_183 ) ) ;
AO221X1_HVT ctmi_917 ( .A1 ( ctmn_635 ) , .A2 ( \REG/first_byte [7] ) , 
    .A3 ( ctmn_636 ) , .A4 ( \REG/full_state_byte [7] ) , .A5 ( ctmn_639 ) , 
    .Y ( \REG/N14 ) ) ;
AND2X2_HVT ctmi_918 ( .A1 ( phfnn_298 ) , .A2 ( resetn ) , .Y ( ctmn_635 ) ) ;
AND2X2_HVT ctmi_919 ( .A1 ( \FSM/pre_state [2] ) , .A2 ( resetn ) , 
    .Y ( ctmn_636 ) ) ;
AND2X1_HVT ctmi_920 ( .A1 ( data_in[7] ) , .A2 ( phfnn_295 ) , 
    .Y ( ctmn_639 ) ) ;
NAND2X2_HVT ctmi_921 ( .A1 ( \FSM/pre_state [1] ) , .A2 ( resetn ) , 
    .Y ( ctmn_637 ) ) ;
NOR2X1_RVT ctmi_819 ( .A1 ( ctmn_609 ) , .A2 ( ctmn_608 ) , .Y ( ctmn_184 ) ) ;
AND2X1_RVT ctmi_822 ( .A1 ( ctmn_185 ) , .A2 ( ctmn_184 ) , 
    .Y ( \SYNCH/N15 ) ) ;
AND3X1_RVT ctmi_916 ( .A1 ( \SYNCH/count_read_0 [0] ) , 
    .A2 ( \SYNCH/count_read_0 [2] ) , .A3 ( \SYNCH/count_read_0 [1] ) , 
    .Y ( ctmn_634 ) ) ;
NAND2X0_RVT A1322 ( .A1 ( N139 ) , .A2 ( ctmn_179 ) , .Y ( \REG/N13 ) ) ;
NAND3X0_RVT A1323 ( .A1 ( N367 ) , .A2 ( N365 ) , .A3 ( N368 ) , 
    .Y ( ctmn_180 ) ) ;
OA21X1_HVT ctmi_825 ( .A1 ( \SYNCH/count_read_1 [1] ) , 
    .A2 ( \SYNCH/count_read_1 [2] ) , .A3 ( ctmn_631 ) , .Y ( ctmn_185 ) ) ;
NAND2X0_RVT ctmi_911 ( .A1 ( \SYNCH/count_read_1 [2] ) , 
    .A2 ( \SYNCH/count_read_1 [1] ) , .Y ( ctmn_631 ) ) ;
AO21X1_RVT A1150 ( .A1 ( N364 ) , .A2 ( N365 ) , .A3 ( phfnn_305 ) , 
    .Y ( N366 ) ) ;
AND2X1_RVT ctmi_826 ( .A1 ( ctmn_186 ) , .A2 ( ctmn_622 ) , 
    .Y ( \SYNCH/N21 ) ) ;
OA22X1_HVT ctmi_827 ( .A1 ( ctmn_625 ) , .A2 ( ctmn_621 ) , 
    .A3 ( \SYNCH/count_read_2 [2] ) , .A4 ( \SYNCH/count_read_2 [1] ) , 
    .Y ( ctmn_186 ) ) ;
NAND2X0_RVT A1324 ( .A1 ( N130 ) , .A2 ( ctmn_180 ) , .Y ( \REG/N0 ) ) ;
AND2X1_RVT ctmi_846 ( .A1 ( ctmn_187 ) , .A2 ( ctmn_184 ) , 
    .Y ( \SYNCH/N13 ) ) ;
AND2X1_RVT ctmi_848 ( .A1 ( ctmn_188 ) , .A2 ( ctmn_618 ) , .Y ( \SYNCH/N7 ) ) ;
AO21X1_HVT ctmi_849 ( .A1 ( ctmn_628 ) , .A2 ( ctmn_627 ) , .A3 ( ctmn_601 ) , 
    .Y ( ctmn_188 ) ) ;
NAND2X0_LVT A1326 ( .A1 ( ls_74 ) , .A2 ( phfnn_297 ) , .Y ( N364 ) ) ;
AND2X1_RVT ctmi_852 ( .A1 ( ctmn_189 ) , .A2 ( ctmn_618 ) , .Y ( \SYNCH/N9 ) ) ;
AND2X1_RVT ctmi_858 ( .A1 ( ctmn_190 ) , .A2 ( ctmn_622 ) , 
    .Y ( \SYNCH/N20 ) ) ;
CGLPPRX2_HVT \clock_gate_SYNCH/count_read_0_reg ( .CLK ( router_clock ) , 
    .EN ( clkgt_enable_net_108 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_SYNCH/count_read_0_reg ) ) ;
AOI221X2_HVT ctmi_970 ( .A1 ( soft_reset_0 ) , .A2 ( phfnn_299 ) , 
    .A3 ( soft_reset_2 ) , .A4 ( phfnn_300 ) , .A5 ( ctmn_594 ) , 
    .Y ( ctmn_173 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!145 () ;
AND3X1_RVT ctmi_909 ( .A1 ( \SYNCH/count_read_2 [0] ) , 
    .A2 ( \SYNCH/count_read_2 [2] ) , .A3 ( \SYNCH/count_read_2 [1] ) , 
    .Y ( ctmn_630 ) ) ;
INVX2_RVT ctmi_843 ( .A ( resetn ) , .Y ( ctmn_582 ) ) ;
SDFFX2_RVT \REG/err_reg ( .D ( \REG/N50 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( router_clock ) , .Q ( err ) ) ;
SDFFX1_RVT \REG/dout_reg[7] ( .D ( \REG/N14 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[7] ) ) ;
SDFFX1_RVT \REG/dout_reg[6] ( .D ( \REG/N15 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[6] ) ) ;
SDFFX1_RVT \REG/dout_reg[5] ( .D ( \REG/N16 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[5] ) ) ;
SDFFX1_RVT \REG/dout_reg[4] ( .D ( \REG/N17 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[4] ) ) ;
SDFFX1_RVT \REG/dout_reg[3] ( .D ( \REG/N18 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[3] ) ) ;
SDFFX1_RVT \REG/dout_reg[2] ( .D ( \REG/N19 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[2] ) ) ;
SDFFX1_RVT \REG/dout_reg[1] ( .D ( \REG/N20 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[1] ) ) ;
SDFFX1_RVT \REG/dout_reg[0] ( .D ( \REG/N21 ) , .SI ( 1'b0 ) , .SE ( 1'b0 ) , 
    .CLK ( \router_clock_clock_gate_REG/dout_reg ) , .Q ( dout[0] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[7] ( .D ( \REG/N5 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [7] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[6] ( .D ( \REG/N6 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [6] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[5] ( .D ( \REG/N7 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [5] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[4] ( .D ( \REG/N8 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [4] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[3] ( .D ( \REG/N9 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [3] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[2] ( .D ( \REG/N10 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [2] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[1] ( .D ( \REG/N11 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [1] ) ) ;
SDFFX1_RVT \REG/first_byte_reg[0] ( .D ( \REG/N12 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/first_byte_reg ) , 
    .Q ( \REG/first_byte [0] ) ) ;
SDFFX1_RVT \REG/parity_reg[7] ( .D ( \REG/N32 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [7] ) ) ;
SDFFX1_RVT \REG/parity_reg[6] ( .D ( \REG/N33 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [6] ) ) ;
SDFFX1_RVT \REG/parity_reg[5] ( .D ( \REG/N34 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [5] ) ) ;
SDFFX1_RVT \REG/parity_reg[4] ( .D ( \REG/N35 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [4] ) ) ;
SDFFX1_RVT \REG/parity_reg[3] ( .D ( \REG/N36 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [3] ) ) ;
SDFFX1_RVT \REG/parity_reg[2] ( .D ( \REG/N37 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [2] ) ) ;
SDFFX1_RVT \REG/parity_reg[1] ( .D ( \REG/N38 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [1] ) ) ;
SDFFX1_RVT \REG/parity_reg[0] ( .D ( \REG/N39 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/parity_reg ) , 
    .Q ( \REG/parity [0] ) ) ;
SDFFX1_RVT \REG/parity_done_reg ( .D ( \REG/N1 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) , 
    .Q ( parity_done ) ) ;
NAND3X0_RVT ctmi_821 ( .A1 ( \FSM/pre_state [2] ) , 
    .A2 ( \FSM/pre_state [0] ) , .A3 ( ctmn_547 ) , .Y ( ctmn_567 ) ) ;
AND2X1_HVT A637 ( .A1 ( ctmn_550 ) , .A2 ( ctmn_568 ) , .Y ( N115 ) ) ;
XNOR2X1_HVT ctmi_835 ( .A1 ( \REG/parity [0] ) , .A2 ( \REG/pkt_parity [0] ) , 
    .Y ( ctmn_574 ) ) ;
XNOR2X1_HVT ctmi_836 ( .A1 ( \REG/parity [2] ) , .A2 ( \REG/pkt_parity [2] ) , 
    .Y ( ctmn_575 ) ) ;
NAND4X0_RVT ctmi_837 ( .A1 ( ctmn_577 ) , .A2 ( ctmn_578 ) , 
    .A3 ( ctmn_579 ) , .A4 ( ctmn_580 ) , .Y ( ctmn_581 ) ) ;
XNOR2X1_HVT ctmi_838 ( .A1 ( \REG/parity [3] ) , .A2 ( \REG/pkt_parity [3] ) , 
    .Y ( ctmn_577 ) ) ;
XNOR2X1_HVT ctmi_839 ( .A1 ( \REG/parity [7] ) , .A2 ( \REG/pkt_parity [7] ) , 
    .Y ( ctmn_578 ) ) ;
XNOR2X1_HVT ctmi_840 ( .A1 ( \REG/pkt_parity [6] ) , .A2 ( \REG/parity [6] ) , 
    .Y ( ctmn_579 ) ) ;
NAND2X0_RVT ctmi_844 ( .A1 ( low_pkt_valid ) , .A2 ( ctmn_583 ) , 
    .Y ( ctmn_584 ) ) ;
NAND3X0_RVT ctmi_845 ( .A1 ( \FSM/pre_state [2] ) , 
    .A2 ( \FSM/pre_state [1] ) , .A3 ( \FSM/pre_state [0] ) , 
    .Y ( ctmn_583 ) ) ;
NAND3X0_RVT ctmi_771 ( .A1 ( ctmn_175 ) , .A2 ( ctmn_177 ) , 
    .A3 ( ctmn_172 ) , .Y ( ctmn_178 ) ) ;
OR2X2_HVT A1234 ( .A1 ( ctmn_582 ) , .A2 ( read_enb_1 ) , .Y ( N384 ) ) ;
NAND2X0_RVT ctmi_971 ( .A1 ( ctmn_555 ) , .A2 ( ctmn_557 ) , .Y ( N98 ) ) ;
OR3X1_RVT A1235 ( .A1 ( ls_73 ) , .A2 ( \SYNCH/count_read_1 [0] ) , 
    .A3 ( N384 ) , .Y ( clkgt_enable_net_112 ) ) ;
OR2X1_HVT ctmi_854 ( .A1 ( ctmn_552 ) , .A2 ( ctmn_562 ) , .Y ( ctmn_590 ) ) ;
NAND3X0_RVT ctmi_855 ( .A1 ( \FSM/pre_state [2] ) , .A2 ( ctmn_547 ) , 
    .A3 ( ctmn_552 ) , .Y ( ctmn_593 ) ) ;
AND2X1_HVT A1157 ( .A1 ( ctmn_170 ) , .A2 ( phfnn_293 ) , .Y ( N368 ) ) ;
XNOR2X1_HVT ctmi_841 ( .A1 ( \REG/parity [5] ) , .A2 ( \REG/pkt_parity [5] ) , 
    .Y ( ctmn_580 ) ) ;
AO21X1_HVT ctmi_857 ( .A1 ( phfnn_297 ) , .A2 ( soft_reset_1 ) , 
    .A3 ( ctmn_582 ) , .Y ( ctmn_594 ) ) ;
NAND2X0_RVT ctmi_775 ( .A1 ( phfnn_298 ) , .A2 ( \FSM/pre_state [0] ) , 
    .Y ( ctmn_550 ) ) ;
NAND2X2_HVT ctmi_776 ( .A1 ( ctmn_546 ) , .A2 ( ctmn_547 ) , .Y ( ctmn_548 ) ) ;
AND2X1_HVT A761 ( .A1 ( N89 ) , .A2 ( ctmn_590 ) , .Y ( N169 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!146 () ;
OA22X1_RVT A1262 ( .A1 ( ls_77 ) , .A2 ( N104 ) , .A3 ( ls_66 ) , 
    .A4 ( N98 ) , .Y ( N391 ) ) ;
INVX0_RVT ctmi_780 ( .A ( ctmn_550 ) , .Y ( lfd_state ) ) ;
AND2X1_HVT A1263 ( .A1 ( ctmn_173 ) , .A2 ( N386 ) , .Y ( N392 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!147 () ;
NAND2X0_RVT ctmi_792 ( .A1 ( phfnn_298 ) , .A2 ( ctmn_552 ) , 
    .Y ( ctmn_553 ) ) ;
NAND2X2_HVT ctmi_973 ( .A1 ( ctmn_557 ) , .A2 ( \SYNCH/addr [1] ) , 
    .Y ( N104 ) ) ;
INVX0_RVT A1264 ( .A ( N169 ) , .Y ( N393 ) ) ;
OR2X1_RVT A1175 ( .A1 ( phfnn_305 ) , .A2 ( N362 ) , .Y ( N363 ) ) ;
NAND2X2_HVT ctmi_975 ( .A1 ( ctmn_555 ) , .A2 ( \FSM/data_in_temp [0] ) , 
    .Y ( N109 ) ) ;
OA21X1_RVT A1178 ( .A1 ( ls_73 ) , .A2 ( N111 ) , .A3 ( ctmn_590 ) , 
    .Y ( ctmn_174 ) ) ;
AND2X1_HVT A690 ( .A1 ( resetn ) , .A2 ( ctmn_565 ) , .Y ( N139 ) ) ;
NAND2X0_RVT A1329 ( .A1 ( ctmn_192 ) , .A2 ( ctmn_197 ) , .Y ( \FSM/N2 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!148 () ;
AND2X1_HVT A1265 ( .A1 ( N393 ) , .A2 ( ctmn_173 ) , .Y ( N394 ) ) ;
NAND2X0_RVT ctmi_804 ( .A1 ( \FSM/pre_state [1] ) , .A2 ( ctmn_546 ) , 
    .Y ( ctmn_562 ) ) ;
CGLPPRX2_HVT \clock_gate_SYNCH/count_read_1_reg ( .CLK ( router_clock ) , 
    .EN ( clkgt_enable_net_112 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_SYNCH/count_read_1_reg ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[1] ( .D ( \REG/N11 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [1] ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[0] ( .D ( \REG/N12 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [0] ) ) ;
OA21X1_RVT ctmi_774 ( .A1 ( ctmn_583 ) , .A2 ( ctmn_176 ) , .A3 ( ctmn_593 ) , 
    .Y ( ctmn_177 ) ) ;
CGLPPRX2_HVT \clock_gate_SYNCH/count_read_2_reg ( .CLK ( router_clock ) , 
    .EN ( clkgt_enable_net_116 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_SYNCH/count_read_2_reg ) ) ;
SDFFX1_RVT \REG/full_state_byte_reg[2] ( .D ( \REG/N10 ) , .SI ( 1'b0 ) , 
    .SE ( 1'b0 ) , .CLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) , 
    .Q ( \REG/full_state_byte [2] ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!149 () ;
OAI21X1_HVT ctmi_847 ( .A1 ( ctmn_605 ) , .A2 ( \SYNCH/count_read_1 [4] ) , 
    .A3 ( ctmn_606 ) , .Y ( ctmn_187 ) ) ;
OA22X1_HVT ctmi_853 ( .A1 ( ctmn_629 ) , .A2 ( ctmn_617 ) , 
    .A3 ( \SYNCH/count_read_0 [2] ) , .A4 ( \SYNCH/count_read_0 [1] ) , 
    .Y ( ctmn_189 ) ) ;
OA21X1_HVT ctmi_859 ( .A1 ( ctmn_630 ) , .A2 ( \SYNCH/count_read_2 [3] ) , 
    .A3 ( phfnn_303 ) , .Y ( ctmn_190 ) ) ;
OA22X1_RVT ctmi_861 ( .A1 ( ctmn_180 ) , .A2 ( phfnn_310 ) , .A3 ( N132 ) , 
    .A4 ( ctmn_191 ) , .Y ( ctmn_192 ) ) ;
AOI222X1_RVT ctmi_862 ( .A1 ( ls_66 ) , .A2 ( phfnn_294 ) , .A3 ( ls_73 ) , 
    .A4 ( data_in[0] ) , .A5 ( phfnn_304 ) , .A6 ( ls_77 ) , .Y ( ctmn_191 ) ) ;
AOI221X1_RVT A1266 ( .A1 ( N390 ) , .A2 ( N391 ) , .A3 ( N392 ) , 
    .A4 ( ctmn_176 ) , .A5 ( N394 ) , .Y ( ctmn_197 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!150 () ;
DCAP_HVT \boundarycell!DCAP_HVT!151 () ;
DCAP_HVT \boundarycell!DCAP_HVT!152 () ;
NAND2X0_LVT A1276 ( .A1 ( ls_67 ) , .A2 ( phfnn_299 ) , .Y ( N365 ) ) ;
AND2X1_RVT A1241 ( .A1 ( N365 ) , .A2 ( N367 ) , .Y ( ctmn_176 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!153 () ;
DCAP_HVT \boundarycell!DCAP_HVT!154 () ;
NOR2X2_HVT ctmi_979 ( .A1 ( \FSM/pre_state [0] ) , .A2 ( ctmn_562 ) , 
    .Y ( ctmn_170 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!155 () ;
AND2X1_HVT ctmi_981 ( .A1 ( ctmn_546 ) , .A2 ( ctmn_552 ) , .Y ( ctmn_224 ) ) ;
INVX2_RVT ctmi_982 ( .A ( ctmn_224 ) , .Y ( busy ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!156 () ;
DCAP_HVT \boundarycell!DCAP_HVT!157 () ;
AND4X1_RVT ctmi_985 ( .A1 ( \SYNCH/count_read_2 [0] ) , 
    .A2 ( \SYNCH/count_read_2 [2] ) , .A3 ( \SYNCH/count_read_2 [1] ) , 
    .A4 ( \SYNCH/count_read_2 [3] ) , .Y ( ctmn_624 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!158 () ;
AO21X1_HVT ctmi_987 ( .A1 ( pkt_valid ) , .A2 ( ctmn_170 ) , 
    .A3 ( phfnn_306 ) , .Y ( \REG/N31 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!159 () ;
NAND2X0_RVT ctmi_989 ( .A1 ( ctmn_194 ) , .A2 ( phfnn_299 ) , .Y ( N99 ) ) ;
AND3X1_RVT ctmi_990 ( .A1 ( \FSM/pre_state [2] ) , 
    .A2 ( \FSM/pre_state [1] ) , .A3 ( ctmn_552 ) , .Y ( ctmn_194 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!160 () ;
DCAP_HVT \boundarycell!DCAP_HVT!161 () ;
NAND2X0_RVT ctmi_993 ( .A1 ( ctmn_194 ) , .A2 ( phfnn_300 ) , .Y ( N105 ) ) ;
AND2X1_HVT ctmi_994 ( .A1 ( phfnn_297 ) , .A2 ( ctmn_194 ) , .Y ( N110 ) ) ;
NAND2X0_RVT ctmi_995 ( .A1 ( ctmn_173 ) , .A2 ( N108 ) , .Y ( N132 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!162 () ;
OR2X2_RVT A1355 ( .A1 ( ls_66 ) , .A2 ( N383 ) , .Y ( ctmn_603 ) ) ;
OR2X2_RVT A1356 ( .A1 ( ls_73 ) , .A2 ( N384 ) , .Y ( ctmn_609 ) ) ;
OR2X2_RVT A1358 ( .A1 ( ls_77 ) , .A2 ( N373 ) , .Y ( ctmn_611 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!163 () ;
NOR2X0_RVT A1313 ( .A1 ( ctmn_611 ) , .A2 ( ctmn_615 ) , .Y ( ctmn_622 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!164 () ;
INVX4_RVT A1317 ( .A ( ls_73 ) , .Y ( vld_out_1 ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!165 () ;
DCAP_HVT \boundarycell!DCAP_HVT!167 () ;
DCAP_HVT \boundarycell!DCAP_HVT!169 () ;
DCAP_HVT \boundarycell!DCAP_HVT!171 () ;
DCAP_HVT \boundarycell!DCAP_HVT!173 () ;
DCAP_HVT \boundarycell!DCAP_HVT!175 () ;
DCAP_HVT \boundarycell!DCAP_HVT!177 () ;
CGLPPRX2_HVT \clock_gate_REG/parity_reg ( .CLK ( router_clock ) , 
    .EN ( \REG/N31 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_REG/parity_reg ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!179 () ;
DCAP_HVT \boundarycell!DCAP_HVT!181 () ;
DCAP_HVT \boundarycell!DCAP_HVT!183 () ;
DCAP_HVT \boundarycell!DCAP_HVT!185 () ;
DCAP_HVT \boundarycell!DCAP_HVT!187 () ;
DCAP_HVT \boundarycell!DCAP_HVT!189 () ;
DCAP_HVT \boundarycell!DCAP_HVT!191 () ;
DCAP_HVT \boundarycell!DCAP_HVT!193 () ;
DCAP_HVT \boundarycell!DCAP_HVT!195 () ;
DCAP_HVT \boundarycell!DCAP_HVT!197 () ;
DCAP_HVT \boundarycell!DCAP_HVT!199 () ;
DCAP_HVT \boundarycell!DCAP_HVT!201 () ;
DCAP_HVT \boundarycell!DCAP_HVT!203 () ;
DCAP_HVT \boundarycell!DCAP_HVT!205 () ;
DCAP_HVT \boundarycell!DCAP_HVT!207 () ;
DCAP_HVT \boundarycell!DCAP_HVT!209 () ;
DCAP_HVT \boundarycell!DCAP_HVT!211 () ;
DCAP_HVT \boundarycell!DCAP_HVT!213 () ;
DCAP_HVT \boundarycell!DCAP_HVT!215 () ;
DCAP_HVT \boundarycell!DCAP_HVT!217 () ;
DCAP_HVT \boundarycell!DCAP_HVT!219 () ;
DCAP_HVT \boundarycell!DCAP_HVT!221 () ;
DCAP_HVT \boundarycell!DCAP_HVT!223 () ;
DCAP_HVT \boundarycell!DCAP_HVT!225 () ;
DCAP_HVT \boundarycell!DCAP_HVT!227 () ;
DCAP_HVT \boundarycell!DCAP_HVT!229 () ;
DCAP_HVT \boundarycell!DCAP_HVT!231 () ;
DCAP_HVT \boundarycell!DCAP_HVT!233 () ;
DCAP_HVT \boundarycell!DCAP_HVT!235 () ;
DCAP_HVT \boundarycell!DCAP_HVT!237 () ;
DCAP_HVT \boundarycell!DCAP_HVT!239 () ;
DCAP_HVT \boundarycell!DCAP_HVT!241 () ;
DCAP_HVT \boundarycell!DCAP_HVT!243 () ;
DCAP_HVT \boundarycell!DCAP_HVT!245 () ;
DCAP_HVT \boundarycell!DCAP_HVT!247 () ;
DCAP_HVT \boundarycell!DCAP_HVT!249 () ;
DCAP_HVT \boundarycell!DCAP_HVT!251 () ;
DCAP_HVT \boundarycell!DCAP_HVT!253 () ;
DCAP_HVT \boundarycell!DCAP_HVT!255 () ;
DCAP_HVT \boundarycell!DCAP_HVT!257 () ;
DCAP_HVT \boundarycell!DCAP_HVT!259 () ;
DCAP_HVT \boundarycell!DCAP_HVT!261 () ;
DCAP_HVT \boundarycell!DCAP_HVT!263 () ;
DCAP_HVT \boundarycell!DCAP_HVT!265 () ;
DCAP_HVT \boundarycell!DCAP_HVT!267 () ;
DCAP_HVT \boundarycell!DCAP_HVT!269 () ;
DCAP_HVT \boundarycell!DCAP_HVT!271 () ;
DCAP_HVT \boundarycell!DCAP_HVT!273 () ;
DCAP_HVT \boundarycell!DCAP_HVT!274 () ;
DCAP_HVT \boundarycell!DCAP_HVT!275 () ;
DCAP_HVT \boundarycell!DCAP_HVT!276 () ;
DCAP_HVT \boundarycell!DCAP_HVT!277 () ;
DCAP_HVT \boundarycell!DCAP_HVT!278 () ;
DCAP_HVT \boundarycell!DCAP_HVT!279 () ;
DCAP_HVT \boundarycell!DCAP_HVT!280 () ;
DCAP_HVT \boundarycell!DCAP_HVT!281 () ;
DCAP_HVT \boundarycell!DCAP_HVT!282 () ;
DCAP_HVT \boundarycell!DCAP_HVT!283 () ;
DCAP_HVT \boundarycell!DCAP_HVT!284 () ;
DCAP_HVT \boundarycell!DCAP_HVT!285 () ;
DCAP_HVT \boundarycell!DCAP_HVT!286 () ;
DCAP_HVT \boundarycell!DCAP_HVT!287 () ;
DCAP_HVT \boundarycell!DCAP_HVT!288 () ;
DCAP_HVT \boundarycell!DCAP_HVT!289 () ;
DCAP_HVT \boundarycell!DCAP_HVT!290 () ;
DCAP_HVT \boundarycell!DCAP_HVT!291 () ;
DCAP_HVT \boundarycell!DCAP_HVT!292 () ;
DCAP_HVT \boundarycell!DCAP_HVT!293 () ;
DCAP_HVT \boundarycell!DCAP_HVT!294 () ;
DCAP_HVT \boundarycell!DCAP_HVT!295 () ;
DCAP_HVT \boundarycell!DCAP_HVT!296 () ;
DCAP_HVT \boundarycell!DCAP_HVT!297 () ;
DCAP_HVT \boundarycell!DCAP_HVT!298 () ;
DCAP_HVT \boundarycell!DCAP_HVT!299 () ;
DCAP_HVT \boundarycell!DCAP_HVT!300 () ;
DCAP_HVT \boundarycell!DCAP_HVT!301 () ;
DCAP_HVT \boundarycell!DCAP_HVT!302 () ;
DCAP_HVT \boundarycell!DCAP_HVT!303 () ;
DCAP_HVT \boundarycell!DCAP_HVT!304 () ;
DCAP_HVT \boundarycell!DCAP_HVT!305 () ;
DCAP_HVT \boundarycell!DCAP_HVT!306 () ;
DCAP_HVT \boundarycell!DCAP_HVT!307 () ;
DCAP_HVT \boundarycell!DCAP_HVT!308 () ;
DCAP_HVT \boundarycell!DCAP_HVT!309 () ;
DCAP_HVT \boundarycell!DCAP_HVT!310 () ;
DCAP_HVT \boundarycell!DCAP_HVT!311 () ;
CGLPPRX2_HVT \clock_gate_REG/dout_reg ( .CLK ( router_clock ) , 
    .EN ( \REG/N13 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_REG/dout_reg ) ) ;
CGLPPRX2_HVT \clock_gate_REG/first_byte_reg ( .CLK ( router_clock ) , 
    .EN ( \REG/N22 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_REG/first_byte_reg ) ) ;
CGLPPRX2_HVT \clock_gate_REG/full_state_byte_reg ( .CLK ( router_clock ) , 
    .EN ( \REG/N4 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_REG/full_state_byte_reg ) ) ;
CGLPPRX2_HVT \clock_gate_REG/pkt_parity_reg ( .CLK ( router_clock ) , 
    .EN ( \REG/N0 ) , .SE ( 1'b0 ) , 
    .GCLK ( \router_clock_clock_gate_REG/pkt_parity_reg ) ) ;
DCAP_HVT \boundarycell!DCAP_HVT!312 () ;
DCAP_HVT \boundarycell!DCAP_HVT!313 () ;
DCAP_HVT \boundarycell!DCAP_HVT!314 () ;
DCAP_HVT \boundarycell!DCAP_HVT!315 () ;
DCAP_HVT \boundarycell!DCAP_HVT!316 () ;
DCAP_HVT \boundarycell!DCAP_HVT!317 () ;
DCAP_HVT \boundarycell!DCAP_HVT!318 () ;
DCAP_HVT \boundarycell!DCAP_HVT!319 () ;
DCAP_HVT \boundarycell!DCAP_HVT!320 () ;
DCAP_HVT \boundarycell!DCAP_HVT!321 () ;
DCAP_HVT \boundarycell!DCAP_HVT!322 () ;
DCAP_HVT \boundarycell!DCAP_HVT!323 () ;
DCAP_HVT \boundarycell!DCAP_HVT!324 () ;
DCAP_HVT \boundarycell!DCAP_HVT!325 () ;
DCAP_HVT \boundarycell!DCAP_HVT!326 () ;
DCAP_HVT \boundarycell!DCAP_HVT!327 () ;
DCAP_HVT \boundarycell!DCAP_HVT!328 () ;
DCAP_HVT \boundarycell!DCAP_HVT!329 () ;
DCAP_HVT \boundarycell!DCAP_HVT!330 () ;
DCAP_HVT \boundarycell!DCAP_HVT!331 () ;
DCAP_HVT \boundarycell!DCAP_HVT!332 () ;
DCAP_HVT \boundarycell!DCAP_HVT!333 () ;
DCAP_HVT \boundarycell!DCAP_HVT!334 () ;
DCAP_HVT \boundarycell!DCAP_HVT!335 () ;
DCAP_HVT \boundarycell!DCAP_HVT!336 () ;
DCAP_HVT \boundarycell!DCAP_HVT!337 () ;
DCAP_HVT \boundarycell!DCAP_HVT!338 () ;
DCAP_HVT \boundarycell!DCAP_HVT!339 () ;
DCAP_HVT \boundarycell!DCAP_HVT!340 () ;
DCAP_HVT \boundarycell!DCAP_HVT!341 () ;
DCAP_HVT \boundarycell!DCAP_HVT!342 () ;
DCAP_HVT \boundarycell!DCAP_HVT!343 () ;
DCAP_HVT \boundarycell!DCAP_HVT!344 () ;
DCAP_HVT \boundarycell!DCAP_HVT!345 () ;
DCAP_HVT \boundarycell!DCAP_HVT!346 () ;
DCAP_HVT \boundarycell!DCAP_HVT!347 () ;
DCAP_HVT \boundarycell!DCAP_HVT!348 () ;
DCAP_HVT \boundarycell!DCAP_HVT!349 () ;
DCAP_HVT \boundarycell!DCAP_HVT!350 () ;
DCAP_HVT \boundarycell!DCAP_HVT!351 () ;
DCAP_HVT \boundarycell!DCAP_HVT!352 () ;
DCAP_HVT \boundarycell!DCAP_HVT!353 () ;
DCAP_HVT \boundarycell!DCAP_HVT!354 () ;
DCAP_HVT \boundarycell!DCAP_HVT!355 () ;
DCAP_HVT \boundarycell!DCAP_HVT!356 () ;
DCAP_HVT \boundarycell!DCAP_HVT!357 () ;
DCAP_HVT \boundarycell!DCAP_HVT!358 () ;
DCAP_HVT \boundarycell!DCAP_HVT!359 () ;
DCAP_HVT \boundarycell!DCAP_HVT!360 () ;
DCAP_HVT \boundarycell!DCAP_HVT!361 () ;
DCAP_HVT \boundarycell!DCAP_HVT!362 () ;
DCAP_HVT \boundarycell!DCAP_HVT!363 () ;
DCAP_HVT \boundarycell!DCAP_HVT!364 () ;
DCAP_HVT \boundarycell!DCAP_HVT!365 () ;
DCAP_HVT \boundarycell!DCAP_HVT!366 () ;
DCAP_HVT \boundarycell!DCAP_HVT!367 () ;
DCAP_HVT \boundarycell!DCAP_HVT!368 () ;
DCAP_HVT \boundarycell!DCAP_HVT!369 () ;
DCAP_HVT \boundarycell!DCAP_HVT!370 () ;
DCAP_HVT \boundarycell!DCAP_HVT!371 () ;
DCAP_HVT \boundarycell!DCAP_HVT!372 () ;
DCAP_HVT \boundarycell!DCAP_HVT!373 () ;
DCAP_HVT \boundarycell!DCAP_HVT!374 () ;
DCAP_HVT \boundarycell!DCAP_HVT!375 () ;
DCAP_HVT \boundarycell!DCAP_HVT!376 () ;
DCAP_HVT \boundarycell!DCAP_HVT!377 () ;
DCAP_HVT \boundarycell!DCAP_HVT!378 () ;
DCAP_HVT \boundarycell!DCAP_HVT!379 () ;
DCAP_HVT \boundarycell!DCAP_HVT!380 () ;
DCAP_HVT \boundarycell!DCAP_HVT!381 () ;
DCAP_HVT \boundarycell!DCAP_HVT!382 () ;
DCAP_HVT \boundarycell!DCAP_HVT!383 () ;
DCAP_HVT \boundarycell!DCAP_HVT!384 () ;
DCAP_HVT \boundarycell!DCAP_HVT!385 () ;
DCAP_HVT \boundarycell!DCAP_HVT!386 () ;
DCAP_HVT \boundarycell!DCAP_HVT!387 () ;
DCAP_HVT \boundarycell!DCAP_HVT!388 () ;
DCAP_HVT \boundarycell!DCAP_HVT!389 () ;
DCAP_HVT \boundarycell!DCAP_HVT!390 () ;
DCAP_HVT \boundarycell!DCAP_HVT!391 () ;
DCAP_HVT \boundarycell!DCAP_HVT!392 () ;
DCAP_HVT \boundarycell!DCAP_HVT!393 () ;
DCAP_HVT \boundarycell!DCAP_HVT!394 () ;
DCAP_HVT \boundarycell!DCAP_HVT!395 () ;
DCAP_HVT \boundarycell!DCAP_HVT!396 () ;
DCAP_HVT \boundarycell!DCAP_HVT!397 () ;
DCAP_HVT \boundarycell!DCAP_HVT!398 () ;
DCAP_HVT \boundarycell!DCAP_HVT!399 () ;
DCAP_HVT \boundarycell!DCAP_HVT!400 () ;
DCAP_HVT \boundarycell!DCAP_HVT!401 () ;
DCAP_HVT \boundarycell!DCAP_HVT!402 () ;
DCAP_HVT \boundarycell!DCAP_HVT!403 () ;
DCAP_HVT \boundarycell!DCAP_HVT!404 () ;
DCAP_HVT \boundarycell!DCAP_HVT!405 () ;
DCAP_HVT \boundarycell!DCAP_HVT!406 () ;
DCAP_HVT \boundarycell!DCAP_HVT!407 () ;
DCAP_HVT \boundarycell!DCAP_HVT!408 () ;
DCAP_HVT \boundarycell!DCAP_HVT!409 () ;
DCAP_HVT \boundarycell!DCAP_HVT!410 () ;
DCAP_HVT \boundarycell!DCAP_HVT!411 () ;
DCAP_HVT \boundarycell!DCAP_HVT!412 () ;
DCAP_HVT \boundarycell!DCAP_HVT!413 () ;
DCAP_HVT \boundarycell!DCAP_HVT!414 () ;
DCAP_HVT \boundarycell!DCAP_HVT!415 () ;
DCAP_HVT \boundarycell!DCAP_HVT!416 () ;
DCAP_HVT \boundarycell!DCAP_HVT!417 () ;
DCAP_HVT \boundarycell!DCAP_HVT!418 () ;
DCAP_HVT \boundarycell!DCAP_HVT!419 () ;
DCAP_HVT \boundarycell!DCAP_HVT!420 () ;
DCAP_HVT \boundarycell!DCAP_HVT!421 () ;
DCAP_HVT \boundarycell!DCAP_HVT!422 () ;
DCAP_HVT \boundarycell!DCAP_HVT!423 () ;
DCAP_HVT \boundarycell!DCAP_HVT!424 () ;
DCAP_HVT \boundarycell!DCAP_HVT!425 () ;
DCAP_HVT \boundarycell!DCAP_HVT!426 () ;
DCAP_HVT \boundarycell!DCAP_HVT!427 () ;
DCAP_HVT \boundarycell!DCAP_HVT!428 () ;
DCAP_HVT \boundarycell!DCAP_HVT!429 () ;
DCAP_HVT \boundarycell!DCAP_HVT!430 () ;
DCAP_HVT \boundarycell!DCAP_HVT!431 () ;
DCAP_HVT \boundarycell!DCAP_HVT!432 () ;
DCAP_HVT \boundarycell!DCAP_HVT!433 () ;
DCAP_HVT \boundarycell!DCAP_HVT!434 () ;
DCAP_HVT \boundarycell!DCAP_HVT!435 () ;
DCAP_HVT \boundarycell!DCAP_HVT!436 () ;
DCAP_HVT \boundarycell!DCAP_HVT!437 () ;
DCAP_HVT \boundarycell!DCAP_HVT!438 () ;
DCAP_HVT \boundarycell!DCAP_HVT!439 () ;
DCAP_HVT \boundarycell!DCAP_HVT!440 () ;
DCAP_HVT \boundarycell!DCAP_HVT!441 () ;
DCAP_HVT \boundarycell!DCAP_HVT!442 () ;
DCAP_HVT \boundarycell!DCAP_HVT!443 () ;
DCAP_HVT \boundarycell!DCAP_HVT!444 () ;
DCAP_HVT \boundarycell!DCAP_HVT!445 () ;
DCAP_HVT \boundarycell!DCAP_HVT!446 () ;
DCAP_HVT \boundarycell!DCAP_HVT!447 () ;
DCAP_HVT \boundarycell!DCAP_HVT!448 () ;
DCAP_HVT \boundarycell!DCAP_HVT!449 () ;
DCAP_HVT \boundarycell!DCAP_HVT!450 () ;
DCAP_HVT \boundarycell!DCAP_HVT!451 () ;
DCAP_HVT \boundarycell!DCAP_HVT!452 () ;
DCAP_HVT \boundarycell!DCAP_HVT!453 () ;
DCAP_HVT \boundarycell!DCAP_HVT!454 () ;
DCAP_HVT \boundarycell!DCAP_HVT!455 () ;
DCAP_HVT \boundarycell!DCAP_HVT!456 () ;
DCAP_HVT \boundarycell!DCAP_HVT!457 () ;
DCAP_HVT \boundarycell!DCAP_HVT!458 () ;
DCAP_HVT \boundarycell!DCAP_HVT!459 () ;
DCAP_HVT \boundarycell!DCAP_HVT!460 () ;
DCAP_HVT \boundarycell!DCAP_HVT!461 () ;
DCAP_HVT \boundarycell!DCAP_HVT!462 () ;
DCAP_HVT \boundarycell!DCAP_HVT!463 () ;
DCAP_HVT \boundarycell!DCAP_HVT!464 () ;
DCAP_HVT \boundarycell!DCAP_HVT!465 () ;
DCAP_HVT \boundarycell!DCAP_HVT!466 () ;
DCAP_HVT \boundarycell!DCAP_HVT!467 () ;
DCAP_HVT \boundarycell!DCAP_HVT!468 () ;
DCAP_HVT \boundarycell!DCAP_HVT!469 () ;
DCAP_HVT \boundarycell!DCAP_HVT!470 () ;
DCAP_HVT \boundarycell!DCAP_HVT!471 () ;
DCAP_HVT \boundarycell!DCAP_HVT!472 () ;
DCAP_HVT \boundarycell!DCAP_HVT!473 () ;
DCAP_HVT \boundarycell!DCAP_HVT!474 () ;
DCAP_HVT \boundarycell!DCAP_HVT!475 () ;
DCAP_HVT \boundarycell!DCAP_HVT!476 () ;
DCAP_HVT \boundarycell!DCAP_HVT!477 () ;
DCAP_HVT \boundarycell!DCAP_HVT!478 () ;
DCAP_HVT \boundarycell!DCAP_HVT!479 () ;
DCAP_HVT \boundarycell!DCAP_HVT!480 () ;
DCAP_HVT \boundarycell!DCAP_HVT!481 () ;
DCAP_HVT \boundarycell!DCAP_HVT!482 () ;
DCAP_HVT \boundarycell!DCAP_HVT!483 () ;
DCAP_HVT \boundarycell!DCAP_HVT!484 () ;
endmodule


