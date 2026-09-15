#Copy per mode balance points 
# balance points for the primary corner 
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/write_ptr_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/write_ptr_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/write_ptr_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/write_ptr_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/write_ptr_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/write_ptr_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[14][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[13][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[12][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[11][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[10][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[9][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[8][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[7][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[6][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[5][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[4][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[3][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[2][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[1][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[0][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin SYNCH/soft_reset_0_reg/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin FSM/pre_state_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin SYNCH/soft_reset_1_reg/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin SYNCH/count_read_1_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin SYNCH/soft_reset_2_reg/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin SYNCH/count_read_2_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin REG/low_pkt_valid_reg/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin FSM/pre_state_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin FSM/pre_state_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin SYNCH/count_read_0_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/write_ptr_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/write_ptr_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/write_ptr_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/write_ptr_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/read_ptr_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/data_out_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/read_ptr_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/read_ptr_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/read_ptr_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/read_ptr_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/count_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/lfd_state_d1_reg/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_0/memory_reg[15][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/read_ptr_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/data_out_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[14][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[13][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[12][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[11][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[10][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[9][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[8][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[7][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[6][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[5][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[4][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[3][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[2][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[1][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/memory_reg[0][0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/read_ptr_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/read_ptr_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/read_ptr_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/read_ptr_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[0]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[6]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[5]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[4]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[3]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[2]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/count_reg[1]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.04 -balance_points [get_pin FIFO_1/lfd_state_d1_reg/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][8]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset -0.06 -balance_points [get_pin FIFO_1/memory_reg[15][7]/CLK]
current_mode test
set_clock_tree_balance_point   -corners ss_m40c  -rise  -clock { clk } -delay 0 -offset 0.02 -balance_points [get_pin REG/err_reg/CLK]
