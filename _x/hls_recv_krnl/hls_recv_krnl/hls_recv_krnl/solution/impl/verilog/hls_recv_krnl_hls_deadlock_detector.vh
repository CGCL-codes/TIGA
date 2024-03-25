
    wire reset;
    wire clock;
    assign reset = ap_rst_n;
    assign clock = ap_clk;
    wire [4:0] proc_0_data_FIFO_blk;
    wire [4:0] proc_0_data_PIPO_blk;
    wire [4:0] proc_0_start_FIFO_blk;
    wire [4:0] proc_0_TLF_FIFO_blk;
    wire [4:0] proc_0_input_sync_blk;
    wire [4:0] proc_0_output_sync_blk;
    wire [4:0] proc_dep_vld_vec_0;
    reg [4:0] proc_dep_vld_vec_0_reg;
    wire [4:0] in_chan_dep_vld_vec_0;
    wire [124:0] in_chan_dep_data_vec_0;
    wire [4:0] token_in_vec_0;
    wire [4:0] out_chan_dep_vld_vec_0;
    wire [24:0] out_chan_dep_data_0;
    wire [4:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [24:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_21_0;
    wire [24:0] dep_chan_data_21_0;
    wire token_21_0;
    wire dep_chan_vld_22_0;
    wire [24:0] dep_chan_data_22_0;
    wire token_22_0;
    wire dep_chan_vld_23_0;
    wire [24:0] dep_chan_data_23_0;
    wire token_23_0;
    wire dep_chan_vld_24_0;
    wire [24:0] dep_chan_data_24_0;
    wire token_24_0;
    wire [6:0] proc_1_data_FIFO_blk;
    wire [6:0] proc_1_data_PIPO_blk;
    wire [6:0] proc_1_start_FIFO_blk;
    wire [6:0] proc_1_TLF_FIFO_blk;
    wire [6:0] proc_1_input_sync_blk;
    wire [6:0] proc_1_output_sync_blk;
    wire [6:0] proc_dep_vld_vec_1;
    reg [6:0] proc_dep_vld_vec_1_reg;
    wire [6:0] in_chan_dep_vld_vec_1;
    wire [174:0] in_chan_dep_data_vec_1;
    wire [6:0] token_in_vec_1;
    wire [6:0] out_chan_dep_vld_vec_1;
    wire [24:0] out_chan_dep_data_1;
    wire [6:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [24:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [24:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_3_1;
    wire [24:0] dep_chan_data_3_1;
    wire token_3_1;
    wire dep_chan_vld_4_1;
    wire [24:0] dep_chan_data_4_1;
    wire token_4_1;
    wire dep_chan_vld_8_1;
    wire [24:0] dep_chan_data_8_1;
    wire token_8_1;
    wire dep_chan_vld_9_1;
    wire [24:0] dep_chan_data_9_1;
    wire token_9_1;
    wire dep_chan_vld_11_1;
    wire [24:0] dep_chan_data_11_1;
    wire token_11_1;
    wire [2:0] proc_2_data_FIFO_blk;
    wire [2:0] proc_2_data_PIPO_blk;
    wire [2:0] proc_2_start_FIFO_blk;
    wire [2:0] proc_2_TLF_FIFO_blk;
    wire [2:0] proc_2_input_sync_blk;
    wire [2:0] proc_2_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_2;
    reg [2:0] proc_dep_vld_vec_2_reg;
    wire [2:0] in_chan_dep_vld_vec_2;
    wire [74:0] in_chan_dep_data_vec_2;
    wire [2:0] token_in_vec_2;
    wire [2:0] out_chan_dep_vld_vec_2;
    wire [24:0] out_chan_dep_data_2;
    wire [2:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_1_2;
    wire [24:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_12_2;
    wire [24:0] dep_chan_data_12_2;
    wire token_12_2;
    wire dep_chan_vld_13_2;
    wire [24:0] dep_chan_data_13_2;
    wire token_13_2;
    wire [9:0] proc_3_data_FIFO_blk;
    wire [9:0] proc_3_data_PIPO_blk;
    wire [9:0] proc_3_start_FIFO_blk;
    wire [9:0] proc_3_TLF_FIFO_blk;
    wire [9:0] proc_3_input_sync_blk;
    wire [9:0] proc_3_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_3;
    reg [9:0] proc_dep_vld_vec_3_reg;
    wire [9:0] in_chan_dep_vld_vec_3;
    wire [249:0] in_chan_dep_data_vec_3;
    wire [9:0] token_in_vec_3;
    wire [9:0] out_chan_dep_vld_vec_3;
    wire [24:0] out_chan_dep_data_3;
    wire [9:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_1_3;
    wire [24:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_8_3;
    wire [24:0] dep_chan_data_8_3;
    wire token_8_3;
    wire dep_chan_vld_11_3;
    wire [24:0] dep_chan_data_11_3;
    wire token_11_3;
    wire dep_chan_vld_14_3;
    wire [24:0] dep_chan_data_14_3;
    wire token_14_3;
    wire dep_chan_vld_17_3;
    wire [24:0] dep_chan_data_17_3;
    wire token_17_3;
    wire dep_chan_vld_20_3;
    wire [24:0] dep_chan_data_20_3;
    wire token_20_3;
    wire dep_chan_vld_21_3;
    wire [24:0] dep_chan_data_21_3;
    wire token_21_3;
    wire dep_chan_vld_22_3;
    wire [24:0] dep_chan_data_22_3;
    wire token_22_3;
    wire dep_chan_vld_23_3;
    wire [24:0] dep_chan_data_23_3;
    wire token_23_3;
    wire dep_chan_vld_24_3;
    wire [24:0] dep_chan_data_24_3;
    wire token_24_3;
    wire [3:0] proc_4_data_FIFO_blk;
    wire [3:0] proc_4_data_PIPO_blk;
    wire [3:0] proc_4_start_FIFO_blk;
    wire [3:0] proc_4_TLF_FIFO_blk;
    wire [3:0] proc_4_input_sync_blk;
    wire [3:0] proc_4_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_4;
    reg [3:0] proc_dep_vld_vec_4_reg;
    wire [3:0] in_chan_dep_vld_vec_4;
    wire [99:0] in_chan_dep_data_vec_4;
    wire [3:0] token_in_vec_4;
    wire [3:0] out_chan_dep_vld_vec_4;
    wire [24:0] out_chan_dep_data_4;
    wire [3:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_1_4;
    wire [24:0] dep_chan_data_1_4;
    wire token_1_4;
    wire dep_chan_vld_5_4;
    wire [24:0] dep_chan_data_5_4;
    wire token_5_4;
    wire dep_chan_vld_6_4;
    wire [24:0] dep_chan_data_6_4;
    wire token_6_4;
    wire dep_chan_vld_7_4;
    wire [24:0] dep_chan_data_7_4;
    wire token_7_4;
    wire [0:0] proc_5_data_FIFO_blk;
    wire [0:0] proc_5_data_PIPO_blk;
    wire [0:0] proc_5_start_FIFO_blk;
    wire [0:0] proc_5_TLF_FIFO_blk;
    wire [0:0] proc_5_input_sync_blk;
    wire [0:0] proc_5_output_sync_blk;
    wire [0:0] proc_dep_vld_vec_5;
    reg [0:0] proc_dep_vld_vec_5_reg;
    wire [1:0] in_chan_dep_vld_vec_5;
    wire [49:0] in_chan_dep_data_vec_5;
    wire [1:0] token_in_vec_5;
    wire [0:0] out_chan_dep_vld_vec_5;
    wire [24:0] out_chan_dep_data_5;
    wire [0:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_4_5;
    wire [24:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [24:0] dep_chan_data_6_5;
    wire token_6_5;
    wire [2:0] proc_6_data_FIFO_blk;
    wire [2:0] proc_6_data_PIPO_blk;
    wire [2:0] proc_6_start_FIFO_blk;
    wire [2:0] proc_6_TLF_FIFO_blk;
    wire [2:0] proc_6_input_sync_blk;
    wire [2:0] proc_6_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_6;
    reg [2:0] proc_dep_vld_vec_6_reg;
    wire [1:0] in_chan_dep_vld_vec_6;
    wire [49:0] in_chan_dep_data_vec_6;
    wire [1:0] token_in_vec_6;
    wire [2:0] out_chan_dep_vld_vec_6;
    wire [24:0] out_chan_dep_data_6;
    wire [2:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_4_6;
    wire [24:0] dep_chan_data_4_6;
    wire token_4_6;
    wire dep_chan_vld_7_6;
    wire [24:0] dep_chan_data_7_6;
    wire token_7_6;
    wire [1:0] proc_7_data_FIFO_blk;
    wire [1:0] proc_7_data_PIPO_blk;
    wire [1:0] proc_7_start_FIFO_blk;
    wire [1:0] proc_7_TLF_FIFO_blk;
    wire [1:0] proc_7_input_sync_blk;
    wire [1:0] proc_7_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_7;
    reg [1:0] proc_dep_vld_vec_7_reg;
    wire [1:0] in_chan_dep_vld_vec_7;
    wire [49:0] in_chan_dep_data_vec_7;
    wire [1:0] token_in_vec_7;
    wire [1:0] out_chan_dep_vld_vec_7;
    wire [24:0] out_chan_dep_data_7;
    wire [1:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_4_7;
    wire [24:0] dep_chan_data_4_7;
    wire token_4_7;
    wire dep_chan_vld_6_7;
    wire [24:0] dep_chan_data_6_7;
    wire token_6_7;
    wire [10:0] proc_8_data_FIFO_blk;
    wire [10:0] proc_8_data_PIPO_blk;
    wire [10:0] proc_8_start_FIFO_blk;
    wire [10:0] proc_8_TLF_FIFO_blk;
    wire [10:0] proc_8_input_sync_blk;
    wire [10:0] proc_8_output_sync_blk;
    wire [10:0] proc_dep_vld_vec_8;
    reg [10:0] proc_dep_vld_vec_8_reg;
    wire [9:0] in_chan_dep_vld_vec_8;
    wire [249:0] in_chan_dep_data_vec_8;
    wire [9:0] token_in_vec_8;
    wire [10:0] out_chan_dep_vld_vec_8;
    wire [24:0] out_chan_dep_data_8;
    wire [10:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_1_8;
    wire [24:0] dep_chan_data_1_8;
    wire token_1_8;
    wire dep_chan_vld_3_8;
    wire [24:0] dep_chan_data_3_8;
    wire token_3_8;
    wire dep_chan_vld_11_8;
    wire [24:0] dep_chan_data_11_8;
    wire token_11_8;
    wire dep_chan_vld_14_8;
    wire [24:0] dep_chan_data_14_8;
    wire token_14_8;
    wire dep_chan_vld_17_8;
    wire [24:0] dep_chan_data_17_8;
    wire token_17_8;
    wire dep_chan_vld_20_8;
    wire [24:0] dep_chan_data_20_8;
    wire token_20_8;
    wire dep_chan_vld_21_8;
    wire [24:0] dep_chan_data_21_8;
    wire token_21_8;
    wire dep_chan_vld_22_8;
    wire [24:0] dep_chan_data_22_8;
    wire token_22_8;
    wire dep_chan_vld_23_8;
    wire [24:0] dep_chan_data_23_8;
    wire token_23_8;
    wire dep_chan_vld_24_8;
    wire [24:0] dep_chan_data_24_8;
    wire token_24_8;
    wire [1:0] proc_9_data_FIFO_blk;
    wire [1:0] proc_9_data_PIPO_blk;
    wire [1:0] proc_9_start_FIFO_blk;
    wire [1:0] proc_9_TLF_FIFO_blk;
    wire [1:0] proc_9_input_sync_blk;
    wire [1:0] proc_9_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_9;
    reg [1:0] proc_dep_vld_vec_9_reg;
    wire [1:0] in_chan_dep_vld_vec_9;
    wire [49:0] in_chan_dep_data_vec_9;
    wire [1:0] token_in_vec_9;
    wire [1:0] out_chan_dep_vld_vec_9;
    wire [24:0] out_chan_dep_data_9;
    wire [1:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_1_9;
    wire [24:0] dep_chan_data_1_9;
    wire token_1_9;
    wire dep_chan_vld_10_9;
    wire [24:0] dep_chan_data_10_9;
    wire token_10_9;
    wire [1:0] proc_10_data_FIFO_blk;
    wire [1:0] proc_10_data_PIPO_blk;
    wire [1:0] proc_10_start_FIFO_blk;
    wire [1:0] proc_10_TLF_FIFO_blk;
    wire [1:0] proc_10_input_sync_blk;
    wire [1:0] proc_10_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_10;
    reg [1:0] proc_dep_vld_vec_10_reg;
    wire [2:0] in_chan_dep_vld_vec_10;
    wire [74:0] in_chan_dep_data_vec_10;
    wire [2:0] token_in_vec_10;
    wire [1:0] out_chan_dep_vld_vec_10;
    wire [24:0] out_chan_dep_data_10;
    wire [1:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_9_10;
    wire [24:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_12_10;
    wire [24:0] dep_chan_data_12_10;
    wire token_12_10;
    wire dep_chan_vld_13_10;
    wire [24:0] dep_chan_data_13_10;
    wire token_13_10;
    wire [11:0] proc_11_data_FIFO_blk;
    wire [11:0] proc_11_data_PIPO_blk;
    wire [11:0] proc_11_start_FIFO_blk;
    wire [11:0] proc_11_TLF_FIFO_blk;
    wire [11:0] proc_11_input_sync_blk;
    wire [11:0] proc_11_output_sync_blk;
    wire [11:0] proc_dep_vld_vec_11;
    reg [11:0] proc_dep_vld_vec_11_reg;
    wire [11:0] in_chan_dep_vld_vec_11;
    wire [299:0] in_chan_dep_data_vec_11;
    wire [11:0] token_in_vec_11;
    wire [11:0] out_chan_dep_vld_vec_11;
    wire [24:0] out_chan_dep_data_11;
    wire [11:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_1_11;
    wire [24:0] dep_chan_data_1_11;
    wire token_1_11;
    wire dep_chan_vld_3_11;
    wire [24:0] dep_chan_data_3_11;
    wire token_3_11;
    wire dep_chan_vld_8_11;
    wire [24:0] dep_chan_data_8_11;
    wire token_8_11;
    wire dep_chan_vld_14_11;
    wire [24:0] dep_chan_data_14_11;
    wire token_14_11;
    wire dep_chan_vld_16_11;
    wire [24:0] dep_chan_data_16_11;
    wire token_16_11;
    wire dep_chan_vld_17_11;
    wire [24:0] dep_chan_data_17_11;
    wire token_17_11;
    wire dep_chan_vld_19_11;
    wire [24:0] dep_chan_data_19_11;
    wire token_19_11;
    wire dep_chan_vld_20_11;
    wire [24:0] dep_chan_data_20_11;
    wire token_20_11;
    wire dep_chan_vld_21_11;
    wire [24:0] dep_chan_data_21_11;
    wire token_21_11;
    wire dep_chan_vld_22_11;
    wire [24:0] dep_chan_data_22_11;
    wire token_22_11;
    wire dep_chan_vld_23_11;
    wire [24:0] dep_chan_data_23_11;
    wire token_23_11;
    wire dep_chan_vld_24_11;
    wire [24:0] dep_chan_data_24_11;
    wire token_24_11;
    wire [3:0] proc_12_data_FIFO_blk;
    wire [3:0] proc_12_data_PIPO_blk;
    wire [3:0] proc_12_start_FIFO_blk;
    wire [3:0] proc_12_TLF_FIFO_blk;
    wire [3:0] proc_12_input_sync_blk;
    wire [3:0] proc_12_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_12;
    reg [3:0] proc_dep_vld_vec_12_reg;
    wire [2:0] in_chan_dep_vld_vec_12;
    wire [74:0] in_chan_dep_data_vec_12;
    wire [2:0] token_in_vec_12;
    wire [3:0] out_chan_dep_vld_vec_12;
    wire [24:0] out_chan_dep_data_12;
    wire [3:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_2_12;
    wire [24:0] dep_chan_data_2_12;
    wire token_2_12;
    wire dep_chan_vld_14_12;
    wire [24:0] dep_chan_data_14_12;
    wire token_14_12;
    wire dep_chan_vld_15_12;
    wire [24:0] dep_chan_data_15_12;
    wire token_15_12;
    wire [3:0] proc_13_data_FIFO_blk;
    wire [3:0] proc_13_data_PIPO_blk;
    wire [3:0] proc_13_start_FIFO_blk;
    wire [3:0] proc_13_TLF_FIFO_blk;
    wire [3:0] proc_13_input_sync_blk;
    wire [3:0] proc_13_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_13;
    reg [3:0] proc_dep_vld_vec_13_reg;
    wire [4:0] in_chan_dep_vld_vec_13;
    wire [124:0] in_chan_dep_data_vec_13;
    wire [4:0] token_in_vec_13;
    wire [3:0] out_chan_dep_vld_vec_13;
    wire [24:0] out_chan_dep_data_13;
    wire [3:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_2_13;
    wire [24:0] dep_chan_data_2_13;
    wire token_2_13;
    wire dep_chan_vld_8_13;
    wire [24:0] dep_chan_data_8_13;
    wire token_8_13;
    wire dep_chan_vld_10_13;
    wire [24:0] dep_chan_data_10_13;
    wire token_10_13;
    wire dep_chan_vld_14_13;
    wire [24:0] dep_chan_data_14_13;
    wire token_14_13;
    wire dep_chan_vld_15_13;
    wire [24:0] dep_chan_data_15_13;
    wire token_15_13;
    wire [10:0] proc_14_data_FIFO_blk;
    wire [10:0] proc_14_data_PIPO_blk;
    wire [10:0] proc_14_start_FIFO_blk;
    wire [10:0] proc_14_TLF_FIFO_blk;
    wire [10:0] proc_14_input_sync_blk;
    wire [10:0] proc_14_output_sync_blk;
    wire [10:0] proc_dep_vld_vec_14;
    reg [10:0] proc_dep_vld_vec_14_reg;
    wire [10:0] in_chan_dep_vld_vec_14;
    wire [274:0] in_chan_dep_data_vec_14;
    wire [10:0] token_in_vec_14;
    wire [10:0] out_chan_dep_vld_vec_14;
    wire [24:0] out_chan_dep_data_14;
    wire [10:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_3_14;
    wire [24:0] dep_chan_data_3_14;
    wire token_3_14;
    wire dep_chan_vld_8_14;
    wire [24:0] dep_chan_data_8_14;
    wire token_8_14;
    wire dep_chan_vld_11_14;
    wire [24:0] dep_chan_data_11_14;
    wire token_11_14;
    wire dep_chan_vld_12_14;
    wire [24:0] dep_chan_data_12_14;
    wire token_12_14;
    wire dep_chan_vld_13_14;
    wire [24:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_17_14;
    wire [24:0] dep_chan_data_17_14;
    wire token_17_14;
    wire dep_chan_vld_20_14;
    wire [24:0] dep_chan_data_20_14;
    wire token_20_14;
    wire dep_chan_vld_21_14;
    wire [24:0] dep_chan_data_21_14;
    wire token_21_14;
    wire dep_chan_vld_22_14;
    wire [24:0] dep_chan_data_22_14;
    wire token_22_14;
    wire dep_chan_vld_23_14;
    wire [24:0] dep_chan_data_23_14;
    wire token_23_14;
    wire dep_chan_vld_24_14;
    wire [24:0] dep_chan_data_24_14;
    wire token_24_14;
    wire [2:0] proc_15_data_FIFO_blk;
    wire [2:0] proc_15_data_PIPO_blk;
    wire [2:0] proc_15_start_FIFO_blk;
    wire [2:0] proc_15_TLF_FIFO_blk;
    wire [2:0] proc_15_input_sync_blk;
    wire [2:0] proc_15_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_15;
    reg [2:0] proc_dep_vld_vec_15_reg;
    wire [2:0] in_chan_dep_vld_vec_15;
    wire [74:0] in_chan_dep_data_vec_15;
    wire [2:0] token_in_vec_15;
    wire [2:0] out_chan_dep_vld_vec_15;
    wire [24:0] out_chan_dep_data_15;
    wire [2:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_12_15;
    wire [24:0] dep_chan_data_12_15;
    wire token_12_15;
    wire dep_chan_vld_13_15;
    wire [24:0] dep_chan_data_13_15;
    wire token_13_15;
    wire dep_chan_vld_16_15;
    wire [24:0] dep_chan_data_16_15;
    wire token_16_15;
    wire [3:0] proc_16_data_FIFO_blk;
    wire [3:0] proc_16_data_PIPO_blk;
    wire [3:0] proc_16_start_FIFO_blk;
    wire [3:0] proc_16_TLF_FIFO_blk;
    wire [3:0] proc_16_input_sync_blk;
    wire [3:0] proc_16_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_16;
    reg [3:0] proc_dep_vld_vec_16_reg;
    wire [3:0] in_chan_dep_vld_vec_16;
    wire [99:0] in_chan_dep_data_vec_16;
    wire [3:0] token_in_vec_16;
    wire [3:0] out_chan_dep_vld_vec_16;
    wire [24:0] out_chan_dep_data_16;
    wire [3:0] token_out_vec_16;
    wire dl_detect_out_16;
    wire dep_chan_vld_11_16;
    wire [24:0] dep_chan_data_11_16;
    wire token_11_16;
    wire dep_chan_vld_15_16;
    wire [24:0] dep_chan_data_15_16;
    wire token_15_16;
    wire dep_chan_vld_17_16;
    wire [24:0] dep_chan_data_17_16;
    wire token_17_16;
    wire dep_chan_vld_18_16;
    wire [24:0] dep_chan_data_18_16;
    wire token_18_16;
    wire [9:0] proc_17_data_FIFO_blk;
    wire [9:0] proc_17_data_PIPO_blk;
    wire [9:0] proc_17_start_FIFO_blk;
    wire [9:0] proc_17_TLF_FIFO_blk;
    wire [9:0] proc_17_input_sync_blk;
    wire [9:0] proc_17_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_17;
    reg [9:0] proc_dep_vld_vec_17_reg;
    wire [9:0] in_chan_dep_vld_vec_17;
    wire [249:0] in_chan_dep_data_vec_17;
    wire [9:0] token_in_vec_17;
    wire [9:0] out_chan_dep_vld_vec_17;
    wire [24:0] out_chan_dep_data_17;
    wire [9:0] token_out_vec_17;
    wire dl_detect_out_17;
    wire dep_chan_vld_3_17;
    wire [24:0] dep_chan_data_3_17;
    wire token_3_17;
    wire dep_chan_vld_8_17;
    wire [24:0] dep_chan_data_8_17;
    wire token_8_17;
    wire dep_chan_vld_11_17;
    wire [24:0] dep_chan_data_11_17;
    wire token_11_17;
    wire dep_chan_vld_14_17;
    wire [24:0] dep_chan_data_14_17;
    wire token_14_17;
    wire dep_chan_vld_16_17;
    wire [24:0] dep_chan_data_16_17;
    wire token_16_17;
    wire dep_chan_vld_20_17;
    wire [24:0] dep_chan_data_20_17;
    wire token_20_17;
    wire dep_chan_vld_21_17;
    wire [24:0] dep_chan_data_21_17;
    wire token_21_17;
    wire dep_chan_vld_22_17;
    wire [24:0] dep_chan_data_22_17;
    wire token_22_17;
    wire dep_chan_vld_23_17;
    wire [24:0] dep_chan_data_23_17;
    wire token_23_17;
    wire dep_chan_vld_24_17;
    wire [24:0] dep_chan_data_24_17;
    wire token_24_17;
    wire [1:0] proc_18_data_FIFO_blk;
    wire [1:0] proc_18_data_PIPO_blk;
    wire [1:0] proc_18_start_FIFO_blk;
    wire [1:0] proc_18_TLF_FIFO_blk;
    wire [1:0] proc_18_input_sync_blk;
    wire [1:0] proc_18_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_18;
    reg [1:0] proc_dep_vld_vec_18_reg;
    wire [1:0] in_chan_dep_vld_vec_18;
    wire [49:0] in_chan_dep_data_vec_18;
    wire [1:0] token_in_vec_18;
    wire [1:0] out_chan_dep_vld_vec_18;
    wire [24:0] out_chan_dep_data_18;
    wire [1:0] token_out_vec_18;
    wire dl_detect_out_18;
    wire dep_chan_vld_16_18;
    wire [24:0] dep_chan_data_16_18;
    wire token_16_18;
    wire dep_chan_vld_19_18;
    wire [24:0] dep_chan_data_19_18;
    wire token_19_18;
    wire [2:0] proc_19_data_FIFO_blk;
    wire [2:0] proc_19_data_PIPO_blk;
    wire [2:0] proc_19_start_FIFO_blk;
    wire [2:0] proc_19_TLF_FIFO_blk;
    wire [2:0] proc_19_input_sync_blk;
    wire [2:0] proc_19_output_sync_blk;
    wire [2:0] proc_dep_vld_vec_19;
    reg [2:0] proc_dep_vld_vec_19_reg;
    wire [2:0] in_chan_dep_vld_vec_19;
    wire [74:0] in_chan_dep_data_vec_19;
    wire [2:0] token_in_vec_19;
    wire [2:0] out_chan_dep_vld_vec_19;
    wire [24:0] out_chan_dep_data_19;
    wire [2:0] token_out_vec_19;
    wire dl_detect_out_19;
    wire dep_chan_vld_11_19;
    wire [24:0] dep_chan_data_11_19;
    wire token_11_19;
    wire dep_chan_vld_18_19;
    wire [24:0] dep_chan_data_18_19;
    wire token_18_19;
    wire dep_chan_vld_20_19;
    wire [24:0] dep_chan_data_20_19;
    wire token_20_19;
    wire [9:0] proc_20_data_FIFO_blk;
    wire [9:0] proc_20_data_PIPO_blk;
    wire [9:0] proc_20_start_FIFO_blk;
    wire [9:0] proc_20_TLF_FIFO_blk;
    wire [9:0] proc_20_input_sync_blk;
    wire [9:0] proc_20_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_20;
    reg [9:0] proc_dep_vld_vec_20_reg;
    wire [9:0] in_chan_dep_vld_vec_20;
    wire [249:0] in_chan_dep_data_vec_20;
    wire [9:0] token_in_vec_20;
    wire [9:0] out_chan_dep_vld_vec_20;
    wire [24:0] out_chan_dep_data_20;
    wire [9:0] token_out_vec_20;
    wire dl_detect_out_20;
    wire dep_chan_vld_3_20;
    wire [24:0] dep_chan_data_3_20;
    wire token_3_20;
    wire dep_chan_vld_8_20;
    wire [24:0] dep_chan_data_8_20;
    wire token_8_20;
    wire dep_chan_vld_11_20;
    wire [24:0] dep_chan_data_11_20;
    wire token_11_20;
    wire dep_chan_vld_14_20;
    wire [24:0] dep_chan_data_14_20;
    wire token_14_20;
    wire dep_chan_vld_17_20;
    wire [24:0] dep_chan_data_17_20;
    wire token_17_20;
    wire dep_chan_vld_19_20;
    wire [24:0] dep_chan_data_19_20;
    wire token_19_20;
    wire dep_chan_vld_21_20;
    wire [24:0] dep_chan_data_21_20;
    wire token_21_20;
    wire dep_chan_vld_22_20;
    wire [24:0] dep_chan_data_22_20;
    wire token_22_20;
    wire dep_chan_vld_23_20;
    wire [24:0] dep_chan_data_23_20;
    wire token_23_20;
    wire dep_chan_vld_24_20;
    wire [24:0] dep_chan_data_24_20;
    wire token_24_20;
    wire [9:0] proc_21_data_FIFO_blk;
    wire [9:0] proc_21_data_PIPO_blk;
    wire [9:0] proc_21_start_FIFO_blk;
    wire [9:0] proc_21_TLF_FIFO_blk;
    wire [9:0] proc_21_input_sync_blk;
    wire [9:0] proc_21_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_21;
    reg [9:0] proc_dep_vld_vec_21_reg;
    wire [9:0] in_chan_dep_vld_vec_21;
    wire [249:0] in_chan_dep_data_vec_21;
    wire [9:0] token_in_vec_21;
    wire [9:0] out_chan_dep_vld_vec_21;
    wire [24:0] out_chan_dep_data_21;
    wire [9:0] token_out_vec_21;
    wire dl_detect_out_21;
    wire dep_chan_vld_0_21;
    wire [24:0] dep_chan_data_0_21;
    wire token_0_21;
    wire dep_chan_vld_3_21;
    wire [24:0] dep_chan_data_3_21;
    wire token_3_21;
    wire dep_chan_vld_8_21;
    wire [24:0] dep_chan_data_8_21;
    wire token_8_21;
    wire dep_chan_vld_11_21;
    wire [24:0] dep_chan_data_11_21;
    wire token_11_21;
    wire dep_chan_vld_14_21;
    wire [24:0] dep_chan_data_14_21;
    wire token_14_21;
    wire dep_chan_vld_17_21;
    wire [24:0] dep_chan_data_17_21;
    wire token_17_21;
    wire dep_chan_vld_20_21;
    wire [24:0] dep_chan_data_20_21;
    wire token_20_21;
    wire dep_chan_vld_22_21;
    wire [24:0] dep_chan_data_22_21;
    wire token_22_21;
    wire dep_chan_vld_23_21;
    wire [24:0] dep_chan_data_23_21;
    wire token_23_21;
    wire dep_chan_vld_24_21;
    wire [24:0] dep_chan_data_24_21;
    wire token_24_21;
    wire [9:0] proc_22_data_FIFO_blk;
    wire [9:0] proc_22_data_PIPO_blk;
    wire [9:0] proc_22_start_FIFO_blk;
    wire [9:0] proc_22_TLF_FIFO_blk;
    wire [9:0] proc_22_input_sync_blk;
    wire [9:0] proc_22_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_22;
    reg [9:0] proc_dep_vld_vec_22_reg;
    wire [9:0] in_chan_dep_vld_vec_22;
    wire [249:0] in_chan_dep_data_vec_22;
    wire [9:0] token_in_vec_22;
    wire [9:0] out_chan_dep_vld_vec_22;
    wire [24:0] out_chan_dep_data_22;
    wire [9:0] token_out_vec_22;
    wire dl_detect_out_22;
    wire dep_chan_vld_0_22;
    wire [24:0] dep_chan_data_0_22;
    wire token_0_22;
    wire dep_chan_vld_3_22;
    wire [24:0] dep_chan_data_3_22;
    wire token_3_22;
    wire dep_chan_vld_8_22;
    wire [24:0] dep_chan_data_8_22;
    wire token_8_22;
    wire dep_chan_vld_11_22;
    wire [24:0] dep_chan_data_11_22;
    wire token_11_22;
    wire dep_chan_vld_14_22;
    wire [24:0] dep_chan_data_14_22;
    wire token_14_22;
    wire dep_chan_vld_17_22;
    wire [24:0] dep_chan_data_17_22;
    wire token_17_22;
    wire dep_chan_vld_20_22;
    wire [24:0] dep_chan_data_20_22;
    wire token_20_22;
    wire dep_chan_vld_21_22;
    wire [24:0] dep_chan_data_21_22;
    wire token_21_22;
    wire dep_chan_vld_23_22;
    wire [24:0] dep_chan_data_23_22;
    wire token_23_22;
    wire dep_chan_vld_24_22;
    wire [24:0] dep_chan_data_24_22;
    wire token_24_22;
    wire [9:0] proc_23_data_FIFO_blk;
    wire [9:0] proc_23_data_PIPO_blk;
    wire [9:0] proc_23_start_FIFO_blk;
    wire [9:0] proc_23_TLF_FIFO_blk;
    wire [9:0] proc_23_input_sync_blk;
    wire [9:0] proc_23_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_23;
    reg [9:0] proc_dep_vld_vec_23_reg;
    wire [9:0] in_chan_dep_vld_vec_23;
    wire [249:0] in_chan_dep_data_vec_23;
    wire [9:0] token_in_vec_23;
    wire [9:0] out_chan_dep_vld_vec_23;
    wire [24:0] out_chan_dep_data_23;
    wire [9:0] token_out_vec_23;
    wire dl_detect_out_23;
    wire dep_chan_vld_0_23;
    wire [24:0] dep_chan_data_0_23;
    wire token_0_23;
    wire dep_chan_vld_3_23;
    wire [24:0] dep_chan_data_3_23;
    wire token_3_23;
    wire dep_chan_vld_8_23;
    wire [24:0] dep_chan_data_8_23;
    wire token_8_23;
    wire dep_chan_vld_11_23;
    wire [24:0] dep_chan_data_11_23;
    wire token_11_23;
    wire dep_chan_vld_14_23;
    wire [24:0] dep_chan_data_14_23;
    wire token_14_23;
    wire dep_chan_vld_17_23;
    wire [24:0] dep_chan_data_17_23;
    wire token_17_23;
    wire dep_chan_vld_20_23;
    wire [24:0] dep_chan_data_20_23;
    wire token_20_23;
    wire dep_chan_vld_21_23;
    wire [24:0] dep_chan_data_21_23;
    wire token_21_23;
    wire dep_chan_vld_22_23;
    wire [24:0] dep_chan_data_22_23;
    wire token_22_23;
    wire dep_chan_vld_24_23;
    wire [24:0] dep_chan_data_24_23;
    wire token_24_23;
    wire [9:0] proc_24_data_FIFO_blk;
    wire [9:0] proc_24_data_PIPO_blk;
    wire [9:0] proc_24_start_FIFO_blk;
    wire [9:0] proc_24_TLF_FIFO_blk;
    wire [9:0] proc_24_input_sync_blk;
    wire [9:0] proc_24_output_sync_blk;
    wire [9:0] proc_dep_vld_vec_24;
    reg [9:0] proc_dep_vld_vec_24_reg;
    wire [9:0] in_chan_dep_vld_vec_24;
    wire [249:0] in_chan_dep_data_vec_24;
    wire [9:0] token_in_vec_24;
    wire [9:0] out_chan_dep_vld_vec_24;
    wire [24:0] out_chan_dep_data_24;
    wire [9:0] token_out_vec_24;
    wire dl_detect_out_24;
    wire dep_chan_vld_0_24;
    wire [24:0] dep_chan_data_0_24;
    wire token_0_24;
    wire dep_chan_vld_3_24;
    wire [24:0] dep_chan_data_3_24;
    wire token_3_24;
    wire dep_chan_vld_8_24;
    wire [24:0] dep_chan_data_8_24;
    wire token_8_24;
    wire dep_chan_vld_11_24;
    wire [24:0] dep_chan_data_11_24;
    wire token_11_24;
    wire dep_chan_vld_14_24;
    wire [24:0] dep_chan_data_14_24;
    wire token_14_24;
    wire dep_chan_vld_17_24;
    wire [24:0] dep_chan_data_17_24;
    wire token_17_24;
    wire dep_chan_vld_20_24;
    wire [24:0] dep_chan_data_20_24;
    wire token_20_24;
    wire dep_chan_vld_21_24;
    wire [24:0] dep_chan_data_21_24;
    wire token_21_24;
    wire dep_chan_vld_22_24;
    wire [24:0] dep_chan_data_22_24;
    wire token_22_24;
    wire dep_chan_vld_23_24;
    wire [24:0] dep_chan_data_23_24;
    wire token_23_24;
    wire [24:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [24:0] origin;

    reg ap_done_reg_0;// for module listenPorts_U0.listen_port_handler_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= listenPorts_U0.listen_port_handler_U0.ap_done & ~listenPorts_U0.listen_port_handler_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module listenPorts_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= listenPorts_U0.ap_done & ~listenPorts_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module recvData_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= recvData_U0.ap_done & ~recvData_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module backgroundclock_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= backgroundclock_U0.ap_done & ~backgroundclock_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module consumetrans_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= consumetrans_U0.ap_done & ~consumetrans_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module consumesha_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= consumesha_U0.ap_done & ~consumesha_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module consumeaes_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= consumeaes_U0.ap_done & ~consumeaes_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module tie_off_tcp_open_connection_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= tie_off_tcp_open_connection_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_continue;
        end
    end

    reg ap_done_reg_8;// for module tie_off_tcp_tx_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_8 <= 'b0;
        end
        else begin
            ap_done_reg_8 <= tie_off_tcp_tx_U0.ap_done & ~tie_off_tcp_tx_U0.ap_continue;
        end
    end

    reg ap_done_reg_9;// for module tie_off_udp_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_9 <= 'b0;
        end
        else begin
            ap_done_reg_9 <= tie_off_udp_U0.ap_done & ~tie_off_udp_U0.ap_continue;
        end
    end

    reg ap_done_reg_10;// for module tie_off_tcp_close_con_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_10 <= 'b0;
        end
        else begin
            ap_done_reg_10 <= tie_off_tcp_close_con_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_continue;
        end
    end

    reg ap_done_reg_11;// for module listenPorts_U0.port_status_handler_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_11 <= 'b0;
        end
        else begin
            ap_done_reg_11 <= listenPorts_U0.port_status_handler_U0.ap_done & ~listenPorts_U0.port_status_handler_U0.ap_continue;
        end
    end

    reg ap_done_reg_12;// for module recvData_U0.recvData_handshake_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_12 <= 'b0;
        end
        else begin
            ap_done_reg_12 <= recvData_U0.recvData_handshake_U0.ap_done & ~recvData_U0.recvData_handshake_U0.ap_continue;
        end
    end

    reg ap_done_reg_13;// for module recvData_U0.recvData_consumeData_U0
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_13 <= 'b0;
        end
        else begin
            ap_done_reg_13 <= recvData_U0.recvData_consumeData_U0.ap_done & ~recvData_U0.recvData_consumeData_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process hls_recv_krnl_entry3_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (hls_recv_krnl_entry3_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process hls_recv_krnl_entry3_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (hls_recv_krnl_entry3_U0.ap_done == 1'b1 && hls_recv_krnl_entry3_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

reg [15:0] trans_in_cnt_1;// for process hls_recv_krnl_entry45_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_1 <= 16'h0;
    end
    else if (hls_recv_krnl_entry45_U0.start_write == 1'b1) begin
        trans_in_cnt_1 <= trans_in_cnt_1 + 16'h1;
    end
    else begin
        trans_in_cnt_1 <= trans_in_cnt_1;
    end
end

reg [15:0] trans_out_cnt_1;// for process hls_recv_krnl_entry45_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_1 <= 16'h0;
    end
    else if (hls_recv_krnl_entry45_U0.ap_done == 1'b1 && hls_recv_krnl_entry45_U0.ap_continue == 1'b1) begin
        trans_out_cnt_1 <= trans_out_cnt_1 + 16'h1;
    end
    else begin
        trans_out_cnt_1 <= trans_out_cnt_1;
    end
end

reg [15:0] trans_in_cnt_2;// for process Block_split11_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_2 <= 16'h0;
    end
    else if (Block_split11_proc_U0.start_write == 1'b1) begin
        trans_in_cnt_2 <= trans_in_cnt_2 + 16'h1;
    end
    else begin
        trans_in_cnt_2 <= trans_in_cnt_2;
    end
end

reg [15:0] trans_out_cnt_2;// for process Block_split11_proc_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_2 <= 16'h0;
    end
    else if (Block_split11_proc_U0.ap_done == 1'b1 && Block_split11_proc_U0.ap_continue == 1'b1) begin
        trans_out_cnt_2 <= trans_out_cnt_2 + 16'h1;
    end
    else begin
        trans_out_cnt_2 <= trans_out_cnt_2;
    end
end

reg [15:0] trans_in_cnt_3;// for process partition_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_3 <= 16'h0;
    end
    else if (partition_U0.start_write == 1'b1) begin
        trans_in_cnt_3 <= trans_in_cnt_3 + 16'h1;
    end
    else begin
        trans_in_cnt_3 <= trans_in_cnt_3;
    end
end

reg [15:0] trans_out_cnt_3;// for process partition_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_3 <= 16'h0;
    end
    else if (partition_U0.ap_done == 1'b1 && partition_U0.ap_continue == 1'b1) begin
        trans_out_cnt_3 <= trans_out_cnt_3 + 16'h1;
    end
    else begin
        trans_out_cnt_3 <= trans_out_cnt_3;
    end
end

reg [15:0] trans_in_cnt_4;// for process prepare_sha_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_4 <= 16'h0;
    end
    else if (prepare_sha_U0.start_write == 1'b1) begin
        trans_in_cnt_4 <= trans_in_cnt_4 + 16'h1;
    end
    else begin
        trans_in_cnt_4 <= trans_in_cnt_4;
    end
end

reg [15:0] trans_out_cnt_4;// for process prepare_sha_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_4 <= 16'h0;
    end
    else if (prepare_sha_U0.ap_done == 1'b1 && prepare_sha_U0.ap_continue == 1'b1) begin
        trans_out_cnt_4 <= trans_out_cnt_4 + 16'h1;
    end
    else begin
        trans_out_cnt_4 <= trans_out_cnt_4;
    end
end

reg [15:0] trans_in_cnt_5;// for process mysha_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_5 <= 16'h0;
    end
    else if (mysha_U0.start_write == 1'b1) begin
        trans_in_cnt_5 <= trans_in_cnt_5 + 16'h1;
    end
    else begin
        trans_in_cnt_5 <= trans_in_cnt_5;
    end
end

reg [15:0] trans_out_cnt_5;// for process mysha_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_5 <= 16'h0;
    end
    else if (mysha_U0.ap_done == 1'b1 && mysha_U0.ap_continue == 1'b1) begin
        trans_out_cnt_5 <= trans_out_cnt_5 + 16'h1;
    end
    else begin
        trans_out_cnt_5 <= trans_out_cnt_5;
    end
end

reg [15:0] trans_in_cnt_6;// for process prepare_aes_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_6 <= 16'h0;
    end
    else if (prepare_aes_U0.start_write == 1'b1) begin
        trans_in_cnt_6 <= trans_in_cnt_6 + 16'h1;
    end
    else begin
        trans_in_cnt_6 <= trans_in_cnt_6;
    end
end

reg [15:0] trans_out_cnt_6;// for process prepare_aes_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_6 <= 16'h0;
    end
    else if (prepare_aes_U0.ap_done == 1'b1 && prepare_aes_U0.ap_continue == 1'b1) begin
        trans_out_cnt_6 <= trans_out_cnt_6 + 16'h1;
    end
    else begin
        trans_out_cnt_6 <= trans_out_cnt_6;
    end
end

reg [15:0] trans_in_cnt_7;// for process myaes_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_in_cnt_7 <= 16'h0;
    end
    else if (myaes_U0.start_write == 1'b1) begin
        trans_in_cnt_7 <= trans_in_cnt_7 + 16'h1;
    end
    else begin
        trans_in_cnt_7 <= trans_in_cnt_7;
    end
end

reg [15:0] trans_out_cnt_7;// for process myaes_U0
always @(negedge reset or posedge clock) begin
    if (~reset) begin
         trans_out_cnt_7 <= 16'h0;
    end
    else if (myaes_U0.ap_done == 1'b1 && myaes_U0.ap_continue == 1'b1) begin
        trans_out_cnt_7 <= trans_out_cnt_7 + 16'h1;
    end
    else begin
        trans_out_cnt_7 <= trans_out_cnt_7;
    end
end

    // Process: hls_recv_krnl_entry3_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 0, 5, 5) hls_recv_krnl_hls_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0 | (~hls_recv_krnl_entry3_U0.useConn_out_blk_n) | (~hls_recv_krnl_entry3_U0.basePort_out_blk_n) | (~hls_recv_krnl_entry3_U0.expectedRxByteCnt_out_blk_n) | (~hls_recv_krnl_entry3_U0.out_time_out_blk_n);
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0 | (~start_for_hls_recv_krnl_entry45_U0_U.if_full_n & hls_recv_krnl_entry3_U0.ap_start & ~hls_recv_krnl_entry3_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_hls_recv_krnl_entry45_U0_U.if_read);
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    assign proc_0_data_FIFO_blk[3] = 1'b0;
    assign proc_0_data_PIPO_blk[3] = 1'b0;
    assign proc_0_start_FIFO_blk[3] = 1'b0;
    assign proc_0_TLF_FIFO_blk[3] = 1'b0;
    assign proc_0_input_sync_blk[3] = 1'b0 | (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready);
    assign proc_0_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_0[3] = dl_detect_out ? proc_dep_vld_vec_0_reg[3] : (proc_0_data_FIFO_blk[3] | proc_0_data_PIPO_blk[3] | proc_0_start_FIFO_blk[3] | proc_0_TLF_FIFO_blk[3] | proc_0_input_sync_blk[3] | proc_0_output_sync_blk[3]);
    assign proc_0_data_FIFO_blk[4] = 1'b0;
    assign proc_0_data_PIPO_blk[4] = 1'b0;
    assign proc_0_start_FIFO_blk[4] = 1'b0;
    assign proc_0_TLF_FIFO_blk[4] = 1'b0;
    assign proc_0_input_sync_blk[4] = 1'b0 | (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready);
    assign proc_0_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_0[4] = dl_detect_out ? proc_dep_vld_vec_0_reg[4] : (proc_0_data_FIFO_blk[4] | proc_0_data_PIPO_blk[4] | proc_0_start_FIFO_blk[4] | proc_0_TLF_FIFO_blk[4] | proc_0_input_sync_blk[4] | proc_0_output_sync_blk[4]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[24 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_21_0;
    assign in_chan_dep_data_vec_0[49 : 25] = dep_chan_data_21_0;
    assign token_in_vec_0[1] = token_21_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_22_0;
    assign in_chan_dep_data_vec_0[74 : 50] = dep_chan_data_22_0;
    assign token_in_vec_0[2] = token_22_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_23_0;
    assign in_chan_dep_data_vec_0[99 : 75] = dep_chan_data_23_0;
    assign token_in_vec_0[3] = token_23_0;
    assign in_chan_dep_vld_vec_0[4] = dep_chan_vld_24_0;
    assign in_chan_dep_data_vec_0[124 : 100] = dep_chan_data_24_0;
    assign token_in_vec_0[4] = token_24_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_21 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_21 = out_chan_dep_data_0;
    assign token_0_21 = token_out_vec_0[1];
    assign dep_chan_vld_0_22 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_22 = out_chan_dep_data_0;
    assign token_0_22 = token_out_vec_0[2];
    assign dep_chan_vld_0_23 = out_chan_dep_vld_vec_0[3];
    assign dep_chan_data_0_23 = out_chan_dep_data_0;
    assign token_0_23 = token_out_vec_0[3];
    assign dep_chan_vld_0_24 = out_chan_dep_vld_vec_0[4];
    assign dep_chan_data_0_24 = out_chan_dep_data_0;
    assign token_0_24 = token_out_vec_0[4];

    // Process: hls_recv_krnl_entry45_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 1, 7, 7) hls_recv_krnl_hls_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0 | (~hls_recv_krnl_entry45_U0.useConn_blk_n) | (~hls_recv_krnl_entry45_U0.basePort_blk_n) | (~hls_recv_krnl_entry45_U0.expectedRxByteCnt_blk_n) | (~hls_recv_krnl_entry45_U0.out_time_blk_n);
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0 | (~start_for_hls_recv_krnl_entry45_U0_U.if_empty_n & hls_recv_krnl_entry45_U0.ap_idle & ~start_for_hls_recv_krnl_entry45_U0_U.if_write);
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0 | (~hls_recv_krnl_entry45_U0.useConn_out_blk_n) | (~hls_recv_krnl_entry45_U0.basePort_out_blk_n);
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0;
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0 | (~hls_recv_krnl_entry45_U0.expectedRxByteCnt_out_blk_n);
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0 | (~start_for_Block_split11_proc_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_Block_split11_proc_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0;
    assign proc_1_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    assign proc_1_data_FIFO_blk[3] = 1'b0 | (~hls_recv_krnl_entry45_U0.expectedRxByteCnt_out1_blk_n);
    assign proc_1_data_PIPO_blk[3] = 1'b0;
    assign proc_1_start_FIFO_blk[3] = 1'b0;
    assign proc_1_TLF_FIFO_blk[3] = 1'b0;
    assign proc_1_input_sync_blk[3] = 1'b0;
    assign proc_1_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_1[3] = dl_detect_out ? proc_dep_vld_vec_1_reg[3] : (proc_1_data_FIFO_blk[3] | proc_1_data_PIPO_blk[3] | proc_1_start_FIFO_blk[3] | proc_1_TLF_FIFO_blk[3] | proc_1_input_sync_blk[3] | proc_1_output_sync_blk[3]);
    assign proc_1_data_FIFO_blk[4] = 1'b0 | (~hls_recv_krnl_entry45_U0.out_time_out_blk_n);
    assign proc_1_data_PIPO_blk[4] = 1'b0;
    assign proc_1_start_FIFO_blk[4] = 1'b0 | (~start_for_backgroundclock_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_backgroundclock_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[4] = 1'b0;
    assign proc_1_input_sync_blk[4] = 1'b0;
    assign proc_1_output_sync_blk[4] = 1'b0;
    assign proc_dep_vld_vec_1[4] = dl_detect_out ? proc_dep_vld_vec_1_reg[4] : (proc_1_data_FIFO_blk[4] | proc_1_data_PIPO_blk[4] | proc_1_start_FIFO_blk[4] | proc_1_TLF_FIFO_blk[4] | proc_1_input_sync_blk[4] | proc_1_output_sync_blk[4]);
    assign proc_1_data_FIFO_blk[5] = 1'b0;
    assign proc_1_data_PIPO_blk[5] = 1'b0;
    assign proc_1_start_FIFO_blk[5] = 1'b0 | (~start_for_listenPorts_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_listenPorts_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[5] = 1'b0;
    assign proc_1_input_sync_blk[5] = 1'b0;
    assign proc_1_output_sync_blk[5] = 1'b0;
    assign proc_dep_vld_vec_1[5] = dl_detect_out ? proc_dep_vld_vec_1_reg[5] : (proc_1_data_FIFO_blk[5] | proc_1_data_PIPO_blk[5] | proc_1_start_FIFO_blk[5] | proc_1_TLF_FIFO_blk[5] | proc_1_input_sync_blk[5] | proc_1_output_sync_blk[5]);
    assign proc_1_data_FIFO_blk[6] = 1'b0;
    assign proc_1_data_PIPO_blk[6] = 1'b0;
    assign proc_1_start_FIFO_blk[6] = 1'b0 | (~start_for_recvData_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_recvData_U0_U.if_read);
    assign proc_1_TLF_FIFO_blk[6] = 1'b0;
    assign proc_1_input_sync_blk[6] = 1'b0;
    assign proc_1_output_sync_blk[6] = 1'b0;
    assign proc_dep_vld_vec_1[6] = dl_detect_out ? proc_dep_vld_vec_1_reg[6] : (proc_1_data_FIFO_blk[6] | proc_1_data_PIPO_blk[6] | proc_1_start_FIFO_blk[6] | proc_1_TLF_FIFO_blk[6] | proc_1_input_sync_blk[6] | proc_1_output_sync_blk[6]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[24 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[49 : 25] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[74 : 50] = dep_chan_data_3_1;
    assign token_in_vec_1[2] = token_3_1;
    assign in_chan_dep_vld_vec_1[3] = dep_chan_vld_4_1;
    assign in_chan_dep_data_vec_1[99 : 75] = dep_chan_data_4_1;
    assign token_in_vec_1[3] = token_4_1;
    assign in_chan_dep_vld_vec_1[4] = dep_chan_vld_8_1;
    assign in_chan_dep_data_vec_1[124 : 100] = dep_chan_data_8_1;
    assign token_in_vec_1[4] = token_8_1;
    assign in_chan_dep_vld_vec_1[5] = dep_chan_vld_9_1;
    assign in_chan_dep_data_vec_1[149 : 125] = dep_chan_data_9_1;
    assign token_in_vec_1[5] = token_9_1;
    assign in_chan_dep_vld_vec_1[6] = dep_chan_vld_11_1;
    assign in_chan_dep_data_vec_1[174 : 150] = dep_chan_data_11_1;
    assign token_in_vec_1[6] = token_11_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_4 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_4 = out_chan_dep_data_1;
    assign token_1_4 = token_out_vec_1[1];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[2];
    assign dep_chan_vld_1_9 = out_chan_dep_vld_vec_1[3];
    assign dep_chan_data_1_9 = out_chan_dep_data_1;
    assign token_1_9 = token_out_vec_1[3];
    assign dep_chan_vld_1_11 = out_chan_dep_vld_vec_1[4];
    assign dep_chan_data_1_11 = out_chan_dep_data_1;
    assign token_1_11 = token_out_vec_1[4];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[5];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[5];
    assign dep_chan_vld_1_8 = out_chan_dep_vld_vec_1[6];
    assign dep_chan_data_1_8 = out_chan_dep_data_1;
    assign token_1_8 = token_out_vec_1[6];

    // Process: Block_split11_proc_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 2, 3, 3) hls_recv_krnl_hls_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0 | (~Block_split11_proc_U0.expectedRxByteCnt_blk_n);
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0 | (~start_for_Block_split11_proc_U0_U.if_empty_n & Block_split11_proc_U0.ap_idle & ~start_for_Block_split11_proc_U0_U.if_write);
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~Block_split11_proc_U0.ComputeWordCnt_out_out_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0 | (~start_for_partition_U0_U.if_full_n & Block_split11_proc_U0.ap_start & ~Block_split11_proc_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~start_for_partition_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0;
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[24 : 0] = dep_chan_data_1_2;
    assign token_in_vec_2[0] = token_1_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_12_2;
    assign in_chan_dep_data_vec_2[49 : 25] = dep_chan_data_12_2;
    assign token_in_vec_2[1] = token_12_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_13_2;
    assign in_chan_dep_data_vec_2[74 : 50] = dep_chan_data_13_2;
    assign token_in_vec_2[2] = token_13_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_13 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_13 = out_chan_dep_data_2;
    assign token_2_13 = token_out_vec_2[1];
    assign dep_chan_vld_2_12 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_12 = out_chan_dep_data_2;
    assign token_2_12 = token_out_vec_2[2];

    // Process: listenPorts_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 3, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0 | (~listenPorts_U0.listenPorts_entry37_U0.basePort_blk_n) | (~listenPorts_U0.listenPorts_entry37_U0.useConn_blk_n);
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0 | (~start_for_listenPorts_U0_U.if_empty_n & listenPorts_U0.ap_idle & ~start_for_listenPorts_U0_U.if_write);
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0;
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0;
    assign proc_3_output_sync_blk[2] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    assign proc_3_data_FIFO_blk[3] = 1'b0;
    assign proc_3_data_PIPO_blk[3] = 1'b0;
    assign proc_3_start_FIFO_blk[3] = 1'b0;
    assign proc_3_TLF_FIFO_blk[3] = 1'b0;
    assign proc_3_input_sync_blk[3] = 1'b0;
    assign proc_3_output_sync_blk[3] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_3[3] = dl_detect_out ? proc_dep_vld_vec_3_reg[3] : (proc_3_data_FIFO_blk[3] | proc_3_data_PIPO_blk[3] | proc_3_start_FIFO_blk[3] | proc_3_TLF_FIFO_blk[3] | proc_3_input_sync_blk[3] | proc_3_output_sync_blk[3]);
    assign proc_3_data_FIFO_blk[4] = 1'b0;
    assign proc_3_data_PIPO_blk[4] = 1'b0;
    assign proc_3_start_FIFO_blk[4] = 1'b0;
    assign proc_3_TLF_FIFO_blk[4] = 1'b0;
    assign proc_3_input_sync_blk[4] = 1'b0;
    assign proc_3_output_sync_blk[4] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_3[4] = dl_detect_out ? proc_dep_vld_vec_3_reg[4] : (proc_3_data_FIFO_blk[4] | proc_3_data_PIPO_blk[4] | proc_3_start_FIFO_blk[4] | proc_3_TLF_FIFO_blk[4] | proc_3_input_sync_blk[4] | proc_3_output_sync_blk[4]);
    assign proc_3_data_FIFO_blk[5] = 1'b0;
    assign proc_3_data_PIPO_blk[5] = 1'b0;
    assign proc_3_start_FIFO_blk[5] = 1'b0;
    assign proc_3_TLF_FIFO_blk[5] = 1'b0;
    assign proc_3_input_sync_blk[5] = 1'b0;
    assign proc_3_output_sync_blk[5] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_3[5] = dl_detect_out ? proc_dep_vld_vec_3_reg[5] : (proc_3_data_FIFO_blk[5] | proc_3_data_PIPO_blk[5] | proc_3_start_FIFO_blk[5] | proc_3_TLF_FIFO_blk[5] | proc_3_input_sync_blk[5] | proc_3_output_sync_blk[5]);
    assign proc_3_data_FIFO_blk[6] = 1'b0;
    assign proc_3_data_PIPO_blk[6] = 1'b0;
    assign proc_3_start_FIFO_blk[6] = 1'b0;
    assign proc_3_TLF_FIFO_blk[6] = 1'b0;
    assign proc_3_input_sync_blk[6] = 1'b0;
    assign proc_3_output_sync_blk[6] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_3[6] = dl_detect_out ? proc_dep_vld_vec_3_reg[6] : (proc_3_data_FIFO_blk[6] | proc_3_data_PIPO_blk[6] | proc_3_start_FIFO_blk[6] | proc_3_TLF_FIFO_blk[6] | proc_3_input_sync_blk[6] | proc_3_output_sync_blk[6]);
    assign proc_3_data_FIFO_blk[7] = 1'b0;
    assign proc_3_data_PIPO_blk[7] = 1'b0;
    assign proc_3_start_FIFO_blk[7] = 1'b0;
    assign proc_3_TLF_FIFO_blk[7] = 1'b0;
    assign proc_3_input_sync_blk[7] = 1'b0;
    assign proc_3_output_sync_blk[7] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_3[7] = dl_detect_out ? proc_dep_vld_vec_3_reg[7] : (proc_3_data_FIFO_blk[7] | proc_3_data_PIPO_blk[7] | proc_3_start_FIFO_blk[7] | proc_3_TLF_FIFO_blk[7] | proc_3_input_sync_blk[7] | proc_3_output_sync_blk[7]);
    assign proc_3_data_FIFO_blk[8] = 1'b0;
    assign proc_3_data_PIPO_blk[8] = 1'b0;
    assign proc_3_start_FIFO_blk[8] = 1'b0;
    assign proc_3_TLF_FIFO_blk[8] = 1'b0;
    assign proc_3_input_sync_blk[8] = 1'b0;
    assign proc_3_output_sync_blk[8] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_3[8] = dl_detect_out ? proc_dep_vld_vec_3_reg[8] : (proc_3_data_FIFO_blk[8] | proc_3_data_PIPO_blk[8] | proc_3_start_FIFO_blk[8] | proc_3_TLF_FIFO_blk[8] | proc_3_input_sync_blk[8] | proc_3_output_sync_blk[8]);
    assign proc_3_data_FIFO_blk[9] = 1'b0;
    assign proc_3_data_PIPO_blk[9] = 1'b0;
    assign proc_3_start_FIFO_blk[9] = 1'b0;
    assign proc_3_TLF_FIFO_blk[9] = 1'b0;
    assign proc_3_input_sync_blk[9] = 1'b0;
    assign proc_3_output_sync_blk[9] = 1'b0 | (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_3[9] = dl_detect_out ? proc_dep_vld_vec_3_reg[9] : (proc_3_data_FIFO_blk[9] | proc_3_data_PIPO_blk[9] | proc_3_start_FIFO_blk[9] | proc_3_TLF_FIFO_blk[9] | proc_3_input_sync_blk[9] | proc_3_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[24 : 0] = dep_chan_data_1_3;
    assign token_in_vec_3[0] = token_1_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_8_3;
    assign in_chan_dep_data_vec_3[49 : 25] = dep_chan_data_8_3;
    assign token_in_vec_3[1] = token_8_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_11_3;
    assign in_chan_dep_data_vec_3[74 : 50] = dep_chan_data_11_3;
    assign token_in_vec_3[2] = token_11_3;
    assign in_chan_dep_vld_vec_3[3] = dep_chan_vld_14_3;
    assign in_chan_dep_data_vec_3[99 : 75] = dep_chan_data_14_3;
    assign token_in_vec_3[3] = token_14_3;
    assign in_chan_dep_vld_vec_3[4] = dep_chan_vld_17_3;
    assign in_chan_dep_data_vec_3[124 : 100] = dep_chan_data_17_3;
    assign token_in_vec_3[4] = token_17_3;
    assign in_chan_dep_vld_vec_3[5] = dep_chan_vld_20_3;
    assign in_chan_dep_data_vec_3[149 : 125] = dep_chan_data_20_3;
    assign token_in_vec_3[5] = token_20_3;
    assign in_chan_dep_vld_vec_3[6] = dep_chan_vld_21_3;
    assign in_chan_dep_data_vec_3[174 : 150] = dep_chan_data_21_3;
    assign token_in_vec_3[6] = token_21_3;
    assign in_chan_dep_vld_vec_3[7] = dep_chan_vld_22_3;
    assign in_chan_dep_data_vec_3[199 : 175] = dep_chan_data_22_3;
    assign token_in_vec_3[7] = token_22_3;
    assign in_chan_dep_vld_vec_3[8] = dep_chan_vld_23_3;
    assign in_chan_dep_data_vec_3[224 : 200] = dep_chan_data_23_3;
    assign token_in_vec_3[8] = token_23_3;
    assign in_chan_dep_vld_vec_3[9] = dep_chan_vld_24_3;
    assign in_chan_dep_data_vec_3[249 : 225] = dep_chan_data_24_3;
    assign token_in_vec_3[9] = token_24_3;
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[0];
    assign dep_chan_vld_3_8 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_8 = out_chan_dep_data_3;
    assign token_3_8 = token_out_vec_3[1];
    assign dep_chan_vld_3_11 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_11 = out_chan_dep_data_3;
    assign token_3_11 = token_out_vec_3[2];
    assign dep_chan_vld_3_14 = out_chan_dep_vld_vec_3[3];
    assign dep_chan_data_3_14 = out_chan_dep_data_3;
    assign token_3_14 = token_out_vec_3[3];
    assign dep_chan_vld_3_17 = out_chan_dep_vld_vec_3[4];
    assign dep_chan_data_3_17 = out_chan_dep_data_3;
    assign token_3_17 = token_out_vec_3[4];
    assign dep_chan_vld_3_20 = out_chan_dep_vld_vec_3[5];
    assign dep_chan_data_3_20 = out_chan_dep_data_3;
    assign token_3_20 = token_out_vec_3[5];
    assign dep_chan_vld_3_21 = out_chan_dep_vld_vec_3[6];
    assign dep_chan_data_3_21 = out_chan_dep_data_3;
    assign token_3_21 = token_out_vec_3[6];
    assign dep_chan_vld_3_22 = out_chan_dep_vld_vec_3[7];
    assign dep_chan_data_3_22 = out_chan_dep_data_3;
    assign token_3_22 = token_out_vec_3[7];
    assign dep_chan_vld_3_23 = out_chan_dep_vld_vec_3[8];
    assign dep_chan_data_3_23 = out_chan_dep_data_3;
    assign token_3_23 = token_out_vec_3[8];
    assign dep_chan_vld_3_24 = out_chan_dep_vld_vec_3[9];
    assign dep_chan_data_3_24 = out_chan_dep_data_3;
    assign token_3_24 = token_out_vec_3[9];

    // Process: listenPorts_U0.listenPorts_entry37_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 4, 4, 4) hls_recv_krnl_hls_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~listenPorts_U0.listenPorts_entry37_U0.basePort_blk_n) | (~listenPorts_U0.listenPorts_entry37_U0.useConn_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~listenPorts_U0.listenPorts_entry37_U0.basePort_out_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0 | (~listenPorts_U0.listenPorts_entry37_U0.useConn_out_blk_n);
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0;
    assign proc_4_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    assign proc_4_data_FIFO_blk[3] = 1'b0 | (~listenPorts_U0.listenPorts_entry37_U0.useConn_out1_blk_n);
    assign proc_4_data_PIPO_blk[3] = 1'b0;
    assign proc_4_start_FIFO_blk[3] = 1'b0;
    assign proc_4_TLF_FIFO_blk[3] = 1'b0;
    assign proc_4_input_sync_blk[3] = 1'b0;
    assign proc_4_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_4[3] = dl_detect_out ? proc_dep_vld_vec_4_reg[3] : (proc_4_data_FIFO_blk[3] | proc_4_data_PIPO_blk[3] | proc_4_start_FIFO_blk[3] | proc_4_TLF_FIFO_blk[3] | proc_4_input_sync_blk[3] | proc_4_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_1_4;
    assign in_chan_dep_data_vec_4[24 : 0] = dep_chan_data_1_4;
    assign token_in_vec_4[0] = token_1_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[49 : 25] = dep_chan_data_5_4;
    assign token_in_vec_4[1] = token_5_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_6_4;
    assign in_chan_dep_data_vec_4[74 : 50] = dep_chan_data_6_4;
    assign token_in_vec_4[2] = token_6_4;
    assign in_chan_dep_vld_vec_4[3] = dep_chan_vld_7_4;
    assign in_chan_dep_data_vec_4[99 : 75] = dep_chan_data_7_4;
    assign token_in_vec_4[3] = token_7_4;
    assign dep_chan_vld_4_1 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_1 = out_chan_dep_data_4;
    assign token_4_1 = token_out_vec_4[0];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[1];
    assign dep_chan_vld_4_6 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_6 = out_chan_dep_data_4;
    assign token_4_6 = token_out_vec_4[2];
    assign dep_chan_vld_4_7 = out_chan_dep_vld_vec_4[3];
    assign dep_chan_data_4_7 = out_chan_dep_data_4;
    assign token_4_7 = token_out_vec_4[3];

    // Process: listenPorts_U0.listenPorts_Block_split2_proc_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 5, 2, 1) hls_recv_krnl_hls_deadlock_detect_unit_5 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0 | (~listenPorts_U0.listenPorts_Block_split2_proc_U0.basePort_blk_n);
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0;
    assign proc_5_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[24 : 0] = dep_chan_data_4_5;
    assign token_in_vec_5[0] = token_4_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[49 : 25] = dep_chan_data_6_5;
    assign token_in_vec_5[1] = token_6_5;
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[0];

    // Process: listenPorts_U0.listen_port_handler_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 6, 2, 3) hls_recv_krnl_hls_deadlock_detect_unit_6 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0;
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0 | (~listenPorts_U0.basePort_cast_loc_i_channel_U.if_empty_n & listenPorts_U0.listen_port_handler_U0.ap_idle & ~listenPorts_U0.basePort_cast_loc_i_channel_U.if_write);
    assign proc_6_input_sync_blk[0] = 1'b0;
    assign proc_6_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0 | (~listenPorts_U0.listen_port_handler_U0.useConn_blk_n);
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0;
    assign proc_6_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0;
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0;
    assign proc_6_output_sync_blk[2] = 1'b0 | (ap_done_reg_0 & listenPorts_U0.listen_port_handler_U0.ap_done & ~listenPorts_U0.port_status_handler_U0.ap_done);
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_4_6;
    assign in_chan_dep_data_vec_6[24 : 0] = dep_chan_data_4_6;
    assign token_in_vec_6[0] = token_4_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[49 : 25] = dep_chan_data_7_6;
    assign token_in_vec_6[1] = token_7_6;
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[0];
    assign dep_chan_vld_6_4 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_4 = out_chan_dep_data_6;
    assign token_6_4 = token_out_vec_6[1];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[2];

    // Process: listenPorts_U0.port_status_handler_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 7, 2, 2) hls_recv_krnl_hls_deadlock_detect_unit_7 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0 | (~listenPorts_U0.port_status_handler_U0.useConn_blk_n);
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0;
    assign proc_7_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0;
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0;
    assign proc_7_output_sync_blk[1] = 1'b0 | (ap_done_reg_11 & listenPorts_U0.port_status_handler_U0.ap_done & ~listenPorts_U0.listen_port_handler_U0.ap_done);
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_4_7;
    assign in_chan_dep_data_vec_7[24 : 0] = dep_chan_data_4_7;
    assign token_in_vec_7[0] = token_4_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[49 : 25] = dep_chan_data_6_7;
    assign token_in_vec_7[1] = token_6_7;
    assign dep_chan_vld_7_4 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_4 = out_chan_dep_data_7;
    assign token_7_4 = token_out_vec_7[0];
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[1];

    // Process: recvData_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 8, 10, 11) hls_recv_krnl_hls_deadlock_detect_unit_8 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0 | (~recvData_U0.recvData_handshake_U0.expRxBytePerSession_blk_n);
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0 | (~start_for_recvData_U0_U.if_empty_n & recvData_U0.ap_idle & ~start_for_recvData_U0_U.if_write);
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0;
    assign proc_8_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0 | (~recvData_U0.recvData_consumeData_U0.s_data_net_out_blk_n);
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0;
    assign proc_8_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0;
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0;
    assign proc_8_TLF_FIFO_blk[2] = 1'b0;
    assign proc_8_input_sync_blk[2] = 1'b0;
    assign proc_8_output_sync_blk[2] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    assign proc_8_data_FIFO_blk[3] = 1'b0;
    assign proc_8_data_PIPO_blk[3] = 1'b0;
    assign proc_8_start_FIFO_blk[3] = 1'b0;
    assign proc_8_TLF_FIFO_blk[3] = 1'b0;
    assign proc_8_input_sync_blk[3] = 1'b0;
    assign proc_8_output_sync_blk[3] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_8[3] = dl_detect_out ? proc_dep_vld_vec_8_reg[3] : (proc_8_data_FIFO_blk[3] | proc_8_data_PIPO_blk[3] | proc_8_start_FIFO_blk[3] | proc_8_TLF_FIFO_blk[3] | proc_8_input_sync_blk[3] | proc_8_output_sync_blk[3]);
    assign proc_8_data_FIFO_blk[4] = 1'b0;
    assign proc_8_data_PIPO_blk[4] = 1'b0;
    assign proc_8_start_FIFO_blk[4] = 1'b0;
    assign proc_8_TLF_FIFO_blk[4] = 1'b0;
    assign proc_8_input_sync_blk[4] = 1'b0;
    assign proc_8_output_sync_blk[4] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_8[4] = dl_detect_out ? proc_dep_vld_vec_8_reg[4] : (proc_8_data_FIFO_blk[4] | proc_8_data_PIPO_blk[4] | proc_8_start_FIFO_blk[4] | proc_8_TLF_FIFO_blk[4] | proc_8_input_sync_blk[4] | proc_8_output_sync_blk[4]);
    assign proc_8_data_FIFO_blk[5] = 1'b0;
    assign proc_8_data_PIPO_blk[5] = 1'b0;
    assign proc_8_start_FIFO_blk[5] = 1'b0;
    assign proc_8_TLF_FIFO_blk[5] = 1'b0;
    assign proc_8_input_sync_blk[5] = 1'b0;
    assign proc_8_output_sync_blk[5] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_8[5] = dl_detect_out ? proc_dep_vld_vec_8_reg[5] : (proc_8_data_FIFO_blk[5] | proc_8_data_PIPO_blk[5] | proc_8_start_FIFO_blk[5] | proc_8_TLF_FIFO_blk[5] | proc_8_input_sync_blk[5] | proc_8_output_sync_blk[5]);
    assign proc_8_data_FIFO_blk[6] = 1'b0;
    assign proc_8_data_PIPO_blk[6] = 1'b0;
    assign proc_8_start_FIFO_blk[6] = 1'b0;
    assign proc_8_TLF_FIFO_blk[6] = 1'b0;
    assign proc_8_input_sync_blk[6] = 1'b0;
    assign proc_8_output_sync_blk[6] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_8[6] = dl_detect_out ? proc_dep_vld_vec_8_reg[6] : (proc_8_data_FIFO_blk[6] | proc_8_data_PIPO_blk[6] | proc_8_start_FIFO_blk[6] | proc_8_TLF_FIFO_blk[6] | proc_8_input_sync_blk[6] | proc_8_output_sync_blk[6]);
    assign proc_8_data_FIFO_blk[7] = 1'b0;
    assign proc_8_data_PIPO_blk[7] = 1'b0;
    assign proc_8_start_FIFO_blk[7] = 1'b0;
    assign proc_8_TLF_FIFO_blk[7] = 1'b0;
    assign proc_8_input_sync_blk[7] = 1'b0;
    assign proc_8_output_sync_blk[7] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_8[7] = dl_detect_out ? proc_dep_vld_vec_8_reg[7] : (proc_8_data_FIFO_blk[7] | proc_8_data_PIPO_blk[7] | proc_8_start_FIFO_blk[7] | proc_8_TLF_FIFO_blk[7] | proc_8_input_sync_blk[7] | proc_8_output_sync_blk[7]);
    assign proc_8_data_FIFO_blk[8] = 1'b0;
    assign proc_8_data_PIPO_blk[8] = 1'b0;
    assign proc_8_start_FIFO_blk[8] = 1'b0;
    assign proc_8_TLF_FIFO_blk[8] = 1'b0;
    assign proc_8_input_sync_blk[8] = 1'b0;
    assign proc_8_output_sync_blk[8] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_8[8] = dl_detect_out ? proc_dep_vld_vec_8_reg[8] : (proc_8_data_FIFO_blk[8] | proc_8_data_PIPO_blk[8] | proc_8_start_FIFO_blk[8] | proc_8_TLF_FIFO_blk[8] | proc_8_input_sync_blk[8] | proc_8_output_sync_blk[8]);
    assign proc_8_data_FIFO_blk[9] = 1'b0;
    assign proc_8_data_PIPO_blk[9] = 1'b0;
    assign proc_8_start_FIFO_blk[9] = 1'b0;
    assign proc_8_TLF_FIFO_blk[9] = 1'b0;
    assign proc_8_input_sync_blk[9] = 1'b0;
    assign proc_8_output_sync_blk[9] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_8[9] = dl_detect_out ? proc_dep_vld_vec_8_reg[9] : (proc_8_data_FIFO_blk[9] | proc_8_data_PIPO_blk[9] | proc_8_start_FIFO_blk[9] | proc_8_TLF_FIFO_blk[9] | proc_8_input_sync_blk[9] | proc_8_output_sync_blk[9]);
    assign proc_8_data_FIFO_blk[10] = 1'b0;
    assign proc_8_data_PIPO_blk[10] = 1'b0;
    assign proc_8_start_FIFO_blk[10] = 1'b0;
    assign proc_8_TLF_FIFO_blk[10] = 1'b0;
    assign proc_8_input_sync_blk[10] = 1'b0;
    assign proc_8_output_sync_blk[10] = 1'b0 | (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_8[10] = dl_detect_out ? proc_dep_vld_vec_8_reg[10] : (proc_8_data_FIFO_blk[10] | proc_8_data_PIPO_blk[10] | proc_8_start_FIFO_blk[10] | proc_8_TLF_FIFO_blk[10] | proc_8_input_sync_blk[10] | proc_8_output_sync_blk[10]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_1_8;
    assign in_chan_dep_data_vec_8[24 : 0] = dep_chan_data_1_8;
    assign token_in_vec_8[0] = token_1_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_3_8;
    assign in_chan_dep_data_vec_8[49 : 25] = dep_chan_data_3_8;
    assign token_in_vec_8[1] = token_3_8;
    assign in_chan_dep_vld_vec_8[2] = dep_chan_vld_11_8;
    assign in_chan_dep_data_vec_8[74 : 50] = dep_chan_data_11_8;
    assign token_in_vec_8[2] = token_11_8;
    assign in_chan_dep_vld_vec_8[3] = dep_chan_vld_14_8;
    assign in_chan_dep_data_vec_8[99 : 75] = dep_chan_data_14_8;
    assign token_in_vec_8[3] = token_14_8;
    assign in_chan_dep_vld_vec_8[4] = dep_chan_vld_17_8;
    assign in_chan_dep_data_vec_8[124 : 100] = dep_chan_data_17_8;
    assign token_in_vec_8[4] = token_17_8;
    assign in_chan_dep_vld_vec_8[5] = dep_chan_vld_20_8;
    assign in_chan_dep_data_vec_8[149 : 125] = dep_chan_data_20_8;
    assign token_in_vec_8[5] = token_20_8;
    assign in_chan_dep_vld_vec_8[6] = dep_chan_vld_21_8;
    assign in_chan_dep_data_vec_8[174 : 150] = dep_chan_data_21_8;
    assign token_in_vec_8[6] = token_21_8;
    assign in_chan_dep_vld_vec_8[7] = dep_chan_vld_22_8;
    assign in_chan_dep_data_vec_8[199 : 175] = dep_chan_data_22_8;
    assign token_in_vec_8[7] = token_22_8;
    assign in_chan_dep_vld_vec_8[8] = dep_chan_vld_23_8;
    assign in_chan_dep_data_vec_8[224 : 200] = dep_chan_data_23_8;
    assign token_in_vec_8[8] = token_23_8;
    assign in_chan_dep_vld_vec_8[9] = dep_chan_vld_24_8;
    assign in_chan_dep_data_vec_8[249 : 225] = dep_chan_data_24_8;
    assign token_in_vec_8[9] = token_24_8;
    assign dep_chan_vld_8_1 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_1 = out_chan_dep_data_8;
    assign token_8_1 = token_out_vec_8[0];
    assign dep_chan_vld_8_13 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_13 = out_chan_dep_data_8;
    assign token_8_13 = token_out_vec_8[1];
    assign dep_chan_vld_8_3 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_3 = out_chan_dep_data_8;
    assign token_8_3 = token_out_vec_8[2];
    assign dep_chan_vld_8_11 = out_chan_dep_vld_vec_8[3];
    assign dep_chan_data_8_11 = out_chan_dep_data_8;
    assign token_8_11 = token_out_vec_8[3];
    assign dep_chan_vld_8_14 = out_chan_dep_vld_vec_8[4];
    assign dep_chan_data_8_14 = out_chan_dep_data_8;
    assign token_8_14 = token_out_vec_8[4];
    assign dep_chan_vld_8_17 = out_chan_dep_vld_vec_8[5];
    assign dep_chan_data_8_17 = out_chan_dep_data_8;
    assign token_8_17 = token_out_vec_8[5];
    assign dep_chan_vld_8_20 = out_chan_dep_vld_vec_8[6];
    assign dep_chan_data_8_20 = out_chan_dep_data_8;
    assign token_8_20 = token_out_vec_8[6];
    assign dep_chan_vld_8_21 = out_chan_dep_vld_vec_8[7];
    assign dep_chan_data_8_21 = out_chan_dep_data_8;
    assign token_8_21 = token_out_vec_8[7];
    assign dep_chan_vld_8_22 = out_chan_dep_vld_vec_8[8];
    assign dep_chan_data_8_22 = out_chan_dep_data_8;
    assign token_8_22 = token_out_vec_8[8];
    assign dep_chan_vld_8_23 = out_chan_dep_vld_vec_8[9];
    assign dep_chan_data_8_23 = out_chan_dep_data_8;
    assign token_8_23 = token_out_vec_8[9];
    assign dep_chan_vld_8_24 = out_chan_dep_vld_vec_8[10];
    assign dep_chan_data_8_24 = out_chan_dep_data_8;
    assign token_8_24 = token_out_vec_8[10];

    // Process: recvData_U0.recvData_handshake_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 9, 2, 2) hls_recv_krnl_hls_deadlock_detect_unit_9 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0 | (~recvData_U0.recvData_handshake_U0.nextRxPacketLength3_blk_n) | (~recvData_U0.recvData_handshake_U0.expRxBytePerSession_out_blk_n);
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0;
    assign proc_9_output_sync_blk[0] = 1'b0 | (ap_done_reg_12 & recvData_U0.recvData_handshake_U0.ap_done & ~recvData_U0.recvData_consumeData_U0.ap_done);
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0 | (~recvData_U0.recvData_handshake_U0.expRxBytePerSession_blk_n);
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0;
    assign proc_9_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_1_9;
    assign in_chan_dep_data_vec_9[24 : 0] = dep_chan_data_1_9;
    assign token_in_vec_9[0] = token_1_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[49 : 25] = dep_chan_data_10_9;
    assign token_in_vec_9[1] = token_10_9;
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[0];
    assign dep_chan_vld_9_1 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_1 = out_chan_dep_data_9;
    assign token_9_1 = token_out_vec_9[1];

    // Process: recvData_U0.recvData_consumeData_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 10, 3, 2) hls_recv_krnl_hls_deadlock_detect_unit_10 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0 | (~recvData_U0.recvData_consumeData_U0.nextRxPacketLength3_blk_n) | (~recvData_U0.recvData_consumeData_U0.expRxBytePerSession_blk_n);
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0;
    assign proc_10_output_sync_blk[0] = 1'b0 | (ap_done_reg_13 & recvData_U0.recvData_consumeData_U0.ap_done & ~recvData_U0.recvData_handshake_U0.ap_done);
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0 | (~recvData_U0.recvData_consumeData_U0.s_data_net_out_blk_n);
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0;
    assign proc_10_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[24 : 0] = dep_chan_data_9_10;
    assign token_in_vec_10[0] = token_9_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_12_10;
    assign in_chan_dep_data_vec_10[49 : 25] = dep_chan_data_12_10;
    assign token_in_vec_10[1] = token_12_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_13_10;
    assign in_chan_dep_data_vec_10[74 : 50] = dep_chan_data_13_10;
    assign token_in_vec_10[2] = token_13_10;
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[0];
    assign dep_chan_vld_10_13 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_13 = out_chan_dep_data_10;
    assign token_10_13 = token_out_vec_10[1];

    // Process: backgroundclock_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 11, 12, 12) hls_recv_krnl_hls_deadlock_detect_unit_11 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0 | (~backgroundclock_U0.timesha_blk_n);
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0;
    assign proc_11_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0 | (~backgroundclock_U0.timeaes_blk_n);
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0;
    assign proc_11_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0 | (~backgroundclock_U0.out_time_blk_n);
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0 | (~start_for_backgroundclock_U0_U.if_empty_n & backgroundclock_U0.ap_idle & ~start_for_backgroundclock_U0_U.if_write);
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0;
    assign proc_11_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    assign proc_11_data_FIFO_blk[3] = 1'b0;
    assign proc_11_data_PIPO_blk[3] = 1'b0;
    assign proc_11_start_FIFO_blk[3] = 1'b0;
    assign proc_11_TLF_FIFO_blk[3] = 1'b0;
    assign proc_11_input_sync_blk[3] = 1'b0;
    assign proc_11_output_sync_blk[3] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_11[3] = dl_detect_out ? proc_dep_vld_vec_11_reg[3] : (proc_11_data_FIFO_blk[3] | proc_11_data_PIPO_blk[3] | proc_11_start_FIFO_blk[3] | proc_11_TLF_FIFO_blk[3] | proc_11_input_sync_blk[3] | proc_11_output_sync_blk[3]);
    assign proc_11_data_FIFO_blk[4] = 1'b0;
    assign proc_11_data_PIPO_blk[4] = 1'b0;
    assign proc_11_start_FIFO_blk[4] = 1'b0;
    assign proc_11_TLF_FIFO_blk[4] = 1'b0;
    assign proc_11_input_sync_blk[4] = 1'b0;
    assign proc_11_output_sync_blk[4] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_11[4] = dl_detect_out ? proc_dep_vld_vec_11_reg[4] : (proc_11_data_FIFO_blk[4] | proc_11_data_PIPO_blk[4] | proc_11_start_FIFO_blk[4] | proc_11_TLF_FIFO_blk[4] | proc_11_input_sync_blk[4] | proc_11_output_sync_blk[4]);
    assign proc_11_data_FIFO_blk[5] = 1'b0;
    assign proc_11_data_PIPO_blk[5] = 1'b0;
    assign proc_11_start_FIFO_blk[5] = 1'b0;
    assign proc_11_TLF_FIFO_blk[5] = 1'b0;
    assign proc_11_input_sync_blk[5] = 1'b0;
    assign proc_11_output_sync_blk[5] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_11[5] = dl_detect_out ? proc_dep_vld_vec_11_reg[5] : (proc_11_data_FIFO_blk[5] | proc_11_data_PIPO_blk[5] | proc_11_start_FIFO_blk[5] | proc_11_TLF_FIFO_blk[5] | proc_11_input_sync_blk[5] | proc_11_output_sync_blk[5]);
    assign proc_11_data_FIFO_blk[6] = 1'b0;
    assign proc_11_data_PIPO_blk[6] = 1'b0;
    assign proc_11_start_FIFO_blk[6] = 1'b0;
    assign proc_11_TLF_FIFO_blk[6] = 1'b0;
    assign proc_11_input_sync_blk[6] = 1'b0;
    assign proc_11_output_sync_blk[6] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_11[6] = dl_detect_out ? proc_dep_vld_vec_11_reg[6] : (proc_11_data_FIFO_blk[6] | proc_11_data_PIPO_blk[6] | proc_11_start_FIFO_blk[6] | proc_11_TLF_FIFO_blk[6] | proc_11_input_sync_blk[6] | proc_11_output_sync_blk[6]);
    assign proc_11_data_FIFO_blk[7] = 1'b0;
    assign proc_11_data_PIPO_blk[7] = 1'b0;
    assign proc_11_start_FIFO_blk[7] = 1'b0;
    assign proc_11_TLF_FIFO_blk[7] = 1'b0;
    assign proc_11_input_sync_blk[7] = 1'b0;
    assign proc_11_output_sync_blk[7] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_11[7] = dl_detect_out ? proc_dep_vld_vec_11_reg[7] : (proc_11_data_FIFO_blk[7] | proc_11_data_PIPO_blk[7] | proc_11_start_FIFO_blk[7] | proc_11_TLF_FIFO_blk[7] | proc_11_input_sync_blk[7] | proc_11_output_sync_blk[7]);
    assign proc_11_data_FIFO_blk[8] = 1'b0;
    assign proc_11_data_PIPO_blk[8] = 1'b0;
    assign proc_11_start_FIFO_blk[8] = 1'b0;
    assign proc_11_TLF_FIFO_blk[8] = 1'b0;
    assign proc_11_input_sync_blk[8] = 1'b0;
    assign proc_11_output_sync_blk[8] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_11[8] = dl_detect_out ? proc_dep_vld_vec_11_reg[8] : (proc_11_data_FIFO_blk[8] | proc_11_data_PIPO_blk[8] | proc_11_start_FIFO_blk[8] | proc_11_TLF_FIFO_blk[8] | proc_11_input_sync_blk[8] | proc_11_output_sync_blk[8]);
    assign proc_11_data_FIFO_blk[9] = 1'b0;
    assign proc_11_data_PIPO_blk[9] = 1'b0;
    assign proc_11_start_FIFO_blk[9] = 1'b0;
    assign proc_11_TLF_FIFO_blk[9] = 1'b0;
    assign proc_11_input_sync_blk[9] = 1'b0;
    assign proc_11_output_sync_blk[9] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_11[9] = dl_detect_out ? proc_dep_vld_vec_11_reg[9] : (proc_11_data_FIFO_blk[9] | proc_11_data_PIPO_blk[9] | proc_11_start_FIFO_blk[9] | proc_11_TLF_FIFO_blk[9] | proc_11_input_sync_blk[9] | proc_11_output_sync_blk[9]);
    assign proc_11_data_FIFO_blk[10] = 1'b0;
    assign proc_11_data_PIPO_blk[10] = 1'b0;
    assign proc_11_start_FIFO_blk[10] = 1'b0;
    assign proc_11_TLF_FIFO_blk[10] = 1'b0;
    assign proc_11_input_sync_blk[10] = 1'b0;
    assign proc_11_output_sync_blk[10] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_11[10] = dl_detect_out ? proc_dep_vld_vec_11_reg[10] : (proc_11_data_FIFO_blk[10] | proc_11_data_PIPO_blk[10] | proc_11_start_FIFO_blk[10] | proc_11_TLF_FIFO_blk[10] | proc_11_input_sync_blk[10] | proc_11_output_sync_blk[10]);
    assign proc_11_data_FIFO_blk[11] = 1'b0;
    assign proc_11_data_PIPO_blk[11] = 1'b0;
    assign proc_11_start_FIFO_blk[11] = 1'b0;
    assign proc_11_TLF_FIFO_blk[11] = 1'b0;
    assign proc_11_input_sync_blk[11] = 1'b0;
    assign proc_11_output_sync_blk[11] = 1'b0 | (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_11[11] = dl_detect_out ? proc_dep_vld_vec_11_reg[11] : (proc_11_data_FIFO_blk[11] | proc_11_data_PIPO_blk[11] | proc_11_start_FIFO_blk[11] | proc_11_TLF_FIFO_blk[11] | proc_11_input_sync_blk[11] | proc_11_output_sync_blk[11]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_1_11;
    assign in_chan_dep_data_vec_11[24 : 0] = dep_chan_data_1_11;
    assign token_in_vec_11[0] = token_1_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_3_11;
    assign in_chan_dep_data_vec_11[49 : 25] = dep_chan_data_3_11;
    assign token_in_vec_11[1] = token_3_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_8_11;
    assign in_chan_dep_data_vec_11[74 : 50] = dep_chan_data_8_11;
    assign token_in_vec_11[2] = token_8_11;
    assign in_chan_dep_vld_vec_11[3] = dep_chan_vld_14_11;
    assign in_chan_dep_data_vec_11[99 : 75] = dep_chan_data_14_11;
    assign token_in_vec_11[3] = token_14_11;
    assign in_chan_dep_vld_vec_11[4] = dep_chan_vld_16_11;
    assign in_chan_dep_data_vec_11[124 : 100] = dep_chan_data_16_11;
    assign token_in_vec_11[4] = token_16_11;
    assign in_chan_dep_vld_vec_11[5] = dep_chan_vld_17_11;
    assign in_chan_dep_data_vec_11[149 : 125] = dep_chan_data_17_11;
    assign token_in_vec_11[5] = token_17_11;
    assign in_chan_dep_vld_vec_11[6] = dep_chan_vld_19_11;
    assign in_chan_dep_data_vec_11[174 : 150] = dep_chan_data_19_11;
    assign token_in_vec_11[6] = token_19_11;
    assign in_chan_dep_vld_vec_11[7] = dep_chan_vld_20_11;
    assign in_chan_dep_data_vec_11[199 : 175] = dep_chan_data_20_11;
    assign token_in_vec_11[7] = token_20_11;
    assign in_chan_dep_vld_vec_11[8] = dep_chan_vld_21_11;
    assign in_chan_dep_data_vec_11[224 : 200] = dep_chan_data_21_11;
    assign token_in_vec_11[8] = token_21_11;
    assign in_chan_dep_vld_vec_11[9] = dep_chan_vld_22_11;
    assign in_chan_dep_data_vec_11[249 : 225] = dep_chan_data_22_11;
    assign token_in_vec_11[9] = token_22_11;
    assign in_chan_dep_vld_vec_11[10] = dep_chan_vld_23_11;
    assign in_chan_dep_data_vec_11[274 : 250] = dep_chan_data_23_11;
    assign token_in_vec_11[10] = token_23_11;
    assign in_chan_dep_vld_vec_11[11] = dep_chan_vld_24_11;
    assign in_chan_dep_data_vec_11[299 : 275] = dep_chan_data_24_11;
    assign token_in_vec_11[11] = token_24_11;
    assign dep_chan_vld_11_16 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_16 = out_chan_dep_data_11;
    assign token_11_16 = token_out_vec_11[0];
    assign dep_chan_vld_11_19 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_19 = out_chan_dep_data_11;
    assign token_11_19 = token_out_vec_11[1];
    assign dep_chan_vld_11_1 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_1 = out_chan_dep_data_11;
    assign token_11_1 = token_out_vec_11[2];
    assign dep_chan_vld_11_3 = out_chan_dep_vld_vec_11[3];
    assign dep_chan_data_11_3 = out_chan_dep_data_11;
    assign token_11_3 = token_out_vec_11[3];
    assign dep_chan_vld_11_8 = out_chan_dep_vld_vec_11[4];
    assign dep_chan_data_11_8 = out_chan_dep_data_11;
    assign token_11_8 = token_out_vec_11[4];
    assign dep_chan_vld_11_14 = out_chan_dep_vld_vec_11[5];
    assign dep_chan_data_11_14 = out_chan_dep_data_11;
    assign token_11_14 = token_out_vec_11[5];
    assign dep_chan_vld_11_17 = out_chan_dep_vld_vec_11[6];
    assign dep_chan_data_11_17 = out_chan_dep_data_11;
    assign token_11_17 = token_out_vec_11[6];
    assign dep_chan_vld_11_20 = out_chan_dep_vld_vec_11[7];
    assign dep_chan_data_11_20 = out_chan_dep_data_11;
    assign token_11_20 = token_out_vec_11[7];
    assign dep_chan_vld_11_21 = out_chan_dep_vld_vec_11[8];
    assign dep_chan_data_11_21 = out_chan_dep_data_11;
    assign token_11_21 = token_out_vec_11[8];
    assign dep_chan_vld_11_22 = out_chan_dep_vld_vec_11[9];
    assign dep_chan_data_11_22 = out_chan_dep_data_11;
    assign token_11_22 = token_out_vec_11[9];
    assign dep_chan_vld_11_23 = out_chan_dep_vld_vec_11[10];
    assign dep_chan_data_11_23 = out_chan_dep_data_11;
    assign token_11_23 = token_out_vec_11[10];
    assign dep_chan_vld_11_24 = out_chan_dep_vld_vec_11[11];
    assign dep_chan_data_11_24 = out_chan_dep_data_11;
    assign token_11_24 = token_out_vec_11[11];

    // Process: partition_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 12, 3, 4) hls_recv_krnl_hls_deadlock_detect_unit_12 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.scalar_ComputeWordCnt_loc_blk_n);
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0 | (~start_for_partition_U0_U.if_empty_n & partition_U0.ap_idle & ~start_for_partition_U0_U.if_write);
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0;
    assign proc_12_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out_blk_n) | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_out_blk_n);
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0 | (~start_for_consumetrans_U0_U.if_full_n & partition_U0.ap_start & ~partition_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~start_for_consumetrans_U0_U.if_read);
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0;
    assign proc_12_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out1_blk_n) | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_cal_blk_n);
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0 | (~start_for_prepare_sha_U0_U.if_full_n & partition_U0.ap_start & ~partition_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~start_for_prepare_sha_U0_U.if_read);
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0;
    assign proc_12_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    assign proc_12_data_FIFO_blk[3] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_net_out_blk_n);
    assign proc_12_data_PIPO_blk[3] = 1'b0;
    assign proc_12_start_FIFO_blk[3] = 1'b0;
    assign proc_12_TLF_FIFO_blk[3] = 1'b0;
    assign proc_12_input_sync_blk[3] = 1'b0;
    assign proc_12_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_12[3] = dl_detect_out ? proc_dep_vld_vec_12_reg[3] : (proc_12_data_FIFO_blk[3] | proc_12_data_PIPO_blk[3] | proc_12_start_FIFO_blk[3] | proc_12_TLF_FIFO_blk[3] | proc_12_input_sync_blk[3] | proc_12_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_2_12;
    assign in_chan_dep_data_vec_12[24 : 0] = dep_chan_data_2_12;
    assign token_in_vec_12[0] = token_2_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_14_12;
    assign in_chan_dep_data_vec_12[49 : 25] = dep_chan_data_14_12;
    assign token_in_vec_12[1] = token_14_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_15_12;
    assign in_chan_dep_data_vec_12[74 : 50] = dep_chan_data_15_12;
    assign token_in_vec_12[2] = token_15_12;
    assign dep_chan_vld_12_2 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_2 = out_chan_dep_data_12;
    assign token_12_2 = token_out_vec_12[0];
    assign dep_chan_vld_12_14 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_14 = out_chan_dep_data_12;
    assign token_12_14 = token_out_vec_12[1];
    assign dep_chan_vld_12_15 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_15 = out_chan_dep_data_12;
    assign token_12_15 = token_out_vec_12[2];
    assign dep_chan_vld_12_10 = out_chan_dep_vld_vec_12[3];
    assign dep_chan_data_12_10 = out_chan_dep_data_12;
    assign token_12_10 = token_out_vec_12[3];

    // Process: partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 13, 5, 4) hls_recv_krnl_hls_deadlock_detect_unit_13 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.scalar_ComputeWordCnt_loc_blk_n);
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0;
    assign proc_13_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out_blk_n) | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_out_blk_n);
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0;
    assign proc_13_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out1_blk_n) | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_cal_blk_n);
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0;
    assign proc_13_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    assign proc_13_data_FIFO_blk[3] = 1'b0 | (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_net_out_blk_n);
    assign proc_13_data_PIPO_blk[3] = 1'b0;
    assign proc_13_start_FIFO_blk[3] = 1'b0;
    assign proc_13_TLF_FIFO_blk[3] = 1'b0;
    assign proc_13_input_sync_blk[3] = 1'b0;
    assign proc_13_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_13[3] = dl_detect_out ? proc_dep_vld_vec_13_reg[3] : (proc_13_data_FIFO_blk[3] | proc_13_data_PIPO_blk[3] | proc_13_start_FIFO_blk[3] | proc_13_TLF_FIFO_blk[3] | proc_13_input_sync_blk[3] | proc_13_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_2_13;
    assign in_chan_dep_data_vec_13[24 : 0] = dep_chan_data_2_13;
    assign token_in_vec_13[0] = token_2_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_8_13;
    assign in_chan_dep_data_vec_13[49 : 25] = dep_chan_data_8_13;
    assign token_in_vec_13[1] = token_8_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_10_13;
    assign in_chan_dep_data_vec_13[74 : 50] = dep_chan_data_10_13;
    assign token_in_vec_13[2] = token_10_13;
    assign in_chan_dep_vld_vec_13[3] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[99 : 75] = dep_chan_data_14_13;
    assign token_in_vec_13[3] = token_14_13;
    assign in_chan_dep_vld_vec_13[4] = dep_chan_vld_15_13;
    assign in_chan_dep_data_vec_13[124 : 100] = dep_chan_data_15_13;
    assign token_in_vec_13[4] = token_15_13;
    assign dep_chan_vld_13_2 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_2 = out_chan_dep_data_13;
    assign token_13_2 = token_out_vec_13[0];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[1];
    assign dep_chan_vld_13_15 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_15 = out_chan_dep_data_13;
    assign token_13_15 = token_out_vec_13[2];
    assign dep_chan_vld_13_10 = out_chan_dep_vld_vec_13[3];
    assign dep_chan_data_13_10 = out_chan_dep_data_13;
    assign token_13_10 = token_out_vec_13[3];

    // Process: consumetrans_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 14, 11, 11) hls_recv_krnl_hls_deadlock_detect_unit_14 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0 | (~consumetrans_U0.ComputeWordCnt_loc_blk_n) | (~consumetrans_U0.s_data_out_blk_n);
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0;
    assign proc_14_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0;
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0;
    assign proc_14_output_sync_blk[1] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0;
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0;
    assign proc_14_output_sync_blk[2] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    assign proc_14_data_FIFO_blk[3] = 1'b0;
    assign proc_14_data_PIPO_blk[3] = 1'b0;
    assign proc_14_start_FIFO_blk[3] = 1'b0;
    assign proc_14_TLF_FIFO_blk[3] = 1'b0;
    assign proc_14_input_sync_blk[3] = 1'b0;
    assign proc_14_output_sync_blk[3] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_14[3] = dl_detect_out ? proc_dep_vld_vec_14_reg[3] : (proc_14_data_FIFO_blk[3] | proc_14_data_PIPO_blk[3] | proc_14_start_FIFO_blk[3] | proc_14_TLF_FIFO_blk[3] | proc_14_input_sync_blk[3] | proc_14_output_sync_blk[3]);
    assign proc_14_data_FIFO_blk[4] = 1'b0;
    assign proc_14_data_PIPO_blk[4] = 1'b0;
    assign proc_14_start_FIFO_blk[4] = 1'b0;
    assign proc_14_TLF_FIFO_blk[4] = 1'b0;
    assign proc_14_input_sync_blk[4] = 1'b0;
    assign proc_14_output_sync_blk[4] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_14[4] = dl_detect_out ? proc_dep_vld_vec_14_reg[4] : (proc_14_data_FIFO_blk[4] | proc_14_data_PIPO_blk[4] | proc_14_start_FIFO_blk[4] | proc_14_TLF_FIFO_blk[4] | proc_14_input_sync_blk[4] | proc_14_output_sync_blk[4]);
    assign proc_14_data_FIFO_blk[5] = 1'b0;
    assign proc_14_data_PIPO_blk[5] = 1'b0;
    assign proc_14_start_FIFO_blk[5] = 1'b0;
    assign proc_14_TLF_FIFO_blk[5] = 1'b0;
    assign proc_14_input_sync_blk[5] = 1'b0;
    assign proc_14_output_sync_blk[5] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_14[5] = dl_detect_out ? proc_dep_vld_vec_14_reg[5] : (proc_14_data_FIFO_blk[5] | proc_14_data_PIPO_blk[5] | proc_14_start_FIFO_blk[5] | proc_14_TLF_FIFO_blk[5] | proc_14_input_sync_blk[5] | proc_14_output_sync_blk[5]);
    assign proc_14_data_FIFO_blk[6] = 1'b0;
    assign proc_14_data_PIPO_blk[6] = 1'b0;
    assign proc_14_start_FIFO_blk[6] = 1'b0;
    assign proc_14_TLF_FIFO_blk[6] = 1'b0;
    assign proc_14_input_sync_blk[6] = 1'b0;
    assign proc_14_output_sync_blk[6] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_14[6] = dl_detect_out ? proc_dep_vld_vec_14_reg[6] : (proc_14_data_FIFO_blk[6] | proc_14_data_PIPO_blk[6] | proc_14_start_FIFO_blk[6] | proc_14_TLF_FIFO_blk[6] | proc_14_input_sync_blk[6] | proc_14_output_sync_blk[6]);
    assign proc_14_data_FIFO_blk[7] = 1'b0;
    assign proc_14_data_PIPO_blk[7] = 1'b0;
    assign proc_14_start_FIFO_blk[7] = 1'b0;
    assign proc_14_TLF_FIFO_blk[7] = 1'b0;
    assign proc_14_input_sync_blk[7] = 1'b0;
    assign proc_14_output_sync_blk[7] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_14[7] = dl_detect_out ? proc_dep_vld_vec_14_reg[7] : (proc_14_data_FIFO_blk[7] | proc_14_data_PIPO_blk[7] | proc_14_start_FIFO_blk[7] | proc_14_TLF_FIFO_blk[7] | proc_14_input_sync_blk[7] | proc_14_output_sync_blk[7]);
    assign proc_14_data_FIFO_blk[8] = 1'b0;
    assign proc_14_data_PIPO_blk[8] = 1'b0;
    assign proc_14_start_FIFO_blk[8] = 1'b0;
    assign proc_14_TLF_FIFO_blk[8] = 1'b0;
    assign proc_14_input_sync_blk[8] = 1'b0;
    assign proc_14_output_sync_blk[8] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_14[8] = dl_detect_out ? proc_dep_vld_vec_14_reg[8] : (proc_14_data_FIFO_blk[8] | proc_14_data_PIPO_blk[8] | proc_14_start_FIFO_blk[8] | proc_14_TLF_FIFO_blk[8] | proc_14_input_sync_blk[8] | proc_14_output_sync_blk[8]);
    assign proc_14_data_FIFO_blk[9] = 1'b0;
    assign proc_14_data_PIPO_blk[9] = 1'b0;
    assign proc_14_start_FIFO_blk[9] = 1'b0;
    assign proc_14_TLF_FIFO_blk[9] = 1'b0;
    assign proc_14_input_sync_blk[9] = 1'b0;
    assign proc_14_output_sync_blk[9] = 1'b0 | (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_14[9] = dl_detect_out ? proc_dep_vld_vec_14_reg[9] : (proc_14_data_FIFO_blk[9] | proc_14_data_PIPO_blk[9] | proc_14_start_FIFO_blk[9] | proc_14_TLF_FIFO_blk[9] | proc_14_input_sync_blk[9] | proc_14_output_sync_blk[9]);
    assign proc_14_data_FIFO_blk[10] = 1'b0;
    assign proc_14_data_PIPO_blk[10] = 1'b0;
    assign proc_14_start_FIFO_blk[10] = 1'b0 | (~start_for_consumetrans_U0_U.if_empty_n & consumetrans_U0.ap_idle & ~start_for_consumetrans_U0_U.if_write);
    assign proc_14_TLF_FIFO_blk[10] = 1'b0;
    assign proc_14_input_sync_blk[10] = 1'b0;
    assign proc_14_output_sync_blk[10] = 1'b0;
    assign proc_dep_vld_vec_14[10] = dl_detect_out ? proc_dep_vld_vec_14_reg[10] : (proc_14_data_FIFO_blk[10] | proc_14_data_PIPO_blk[10] | proc_14_start_FIFO_blk[10] | proc_14_TLF_FIFO_blk[10] | proc_14_input_sync_blk[10] | proc_14_output_sync_blk[10]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_3_14;
    assign in_chan_dep_data_vec_14[24 : 0] = dep_chan_data_3_14;
    assign token_in_vec_14[0] = token_3_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_8_14;
    assign in_chan_dep_data_vec_14[49 : 25] = dep_chan_data_8_14;
    assign token_in_vec_14[1] = token_8_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_11_14;
    assign in_chan_dep_data_vec_14[74 : 50] = dep_chan_data_11_14;
    assign token_in_vec_14[2] = token_11_14;
    assign in_chan_dep_vld_vec_14[3] = dep_chan_vld_12_14;
    assign in_chan_dep_data_vec_14[99 : 75] = dep_chan_data_12_14;
    assign token_in_vec_14[3] = token_12_14;
    assign in_chan_dep_vld_vec_14[4] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[124 : 100] = dep_chan_data_13_14;
    assign token_in_vec_14[4] = token_13_14;
    assign in_chan_dep_vld_vec_14[5] = dep_chan_vld_17_14;
    assign in_chan_dep_data_vec_14[149 : 125] = dep_chan_data_17_14;
    assign token_in_vec_14[5] = token_17_14;
    assign in_chan_dep_vld_vec_14[6] = dep_chan_vld_20_14;
    assign in_chan_dep_data_vec_14[174 : 150] = dep_chan_data_20_14;
    assign token_in_vec_14[6] = token_20_14;
    assign in_chan_dep_vld_vec_14[7] = dep_chan_vld_21_14;
    assign in_chan_dep_data_vec_14[199 : 175] = dep_chan_data_21_14;
    assign token_in_vec_14[7] = token_21_14;
    assign in_chan_dep_vld_vec_14[8] = dep_chan_vld_22_14;
    assign in_chan_dep_data_vec_14[224 : 200] = dep_chan_data_22_14;
    assign token_in_vec_14[8] = token_22_14;
    assign in_chan_dep_vld_vec_14[9] = dep_chan_vld_23_14;
    assign in_chan_dep_data_vec_14[249 : 225] = dep_chan_data_23_14;
    assign token_in_vec_14[9] = token_23_14;
    assign in_chan_dep_vld_vec_14[10] = dep_chan_vld_24_14;
    assign in_chan_dep_data_vec_14[274 : 250] = dep_chan_data_24_14;
    assign token_in_vec_14[10] = token_24_14;
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[0];
    assign dep_chan_vld_14_3 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_3 = out_chan_dep_data_14;
    assign token_14_3 = token_out_vec_14[1];
    assign dep_chan_vld_14_8 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_8 = out_chan_dep_data_14;
    assign token_14_8 = token_out_vec_14[2];
    assign dep_chan_vld_14_11 = out_chan_dep_vld_vec_14[3];
    assign dep_chan_data_14_11 = out_chan_dep_data_14;
    assign token_14_11 = token_out_vec_14[3];
    assign dep_chan_vld_14_17 = out_chan_dep_vld_vec_14[4];
    assign dep_chan_data_14_17 = out_chan_dep_data_14;
    assign token_14_17 = token_out_vec_14[4];
    assign dep_chan_vld_14_20 = out_chan_dep_vld_vec_14[5];
    assign dep_chan_data_14_20 = out_chan_dep_data_14;
    assign token_14_20 = token_out_vec_14[5];
    assign dep_chan_vld_14_21 = out_chan_dep_vld_vec_14[6];
    assign dep_chan_data_14_21 = out_chan_dep_data_14;
    assign token_14_21 = token_out_vec_14[6];
    assign dep_chan_vld_14_22 = out_chan_dep_vld_vec_14[7];
    assign dep_chan_data_14_22 = out_chan_dep_data_14;
    assign token_14_22 = token_out_vec_14[7];
    assign dep_chan_vld_14_23 = out_chan_dep_vld_vec_14[8];
    assign dep_chan_data_14_23 = out_chan_dep_data_14;
    assign token_14_23 = token_out_vec_14[8];
    assign dep_chan_vld_14_24 = out_chan_dep_vld_vec_14[9];
    assign dep_chan_data_14_24 = out_chan_dep_data_14;
    assign token_14_24 = token_out_vec_14[9];
    assign dep_chan_vld_14_12 = out_chan_dep_vld_vec_14[10];
    assign dep_chan_data_14_12 = out_chan_dep_data_14;
    assign token_14_12 = token_out_vec_14[10];

    // Process: prepare_sha_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 15, 3, 3) hls_recv_krnl_hls_deadlock_detect_unit_15 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0 | (~prepare_sha_U0.ComputeWordCnt_loc_blk_n) | (~prepare_sha_U0.s_data_cal_blk_n);
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0;
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0;
    assign proc_15_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0 | (~prepare_sha_U0.ComputeWordCnt_loc_out_blk_n) | (~prepare_sha_U0.endMsgLenStrm_blk_n) | (~prepare_sha_U0.msgLenStrm_blk_n) | (~prepare_sha_U0.msgStrm_blk_n) | (~prepare_sha_U0.sha_in_blk_n);
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0 | (~start_for_mysha_U0_U.if_full_n & prepare_sha_U0.ap_start & ~prepare_sha_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~start_for_mysha_U0_U.if_read);
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0;
    assign proc_15_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0;
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0 | (~start_for_prepare_sha_U0_U.if_empty_n & prepare_sha_U0.ap_idle & ~start_for_prepare_sha_U0_U.if_write);
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0;
    assign proc_15_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_12_15;
    assign in_chan_dep_data_vec_15[24 : 0] = dep_chan_data_12_15;
    assign token_in_vec_15[0] = token_12_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_13_15;
    assign in_chan_dep_data_vec_15[49 : 25] = dep_chan_data_13_15;
    assign token_in_vec_15[1] = token_13_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_16_15;
    assign in_chan_dep_data_vec_15[74 : 50] = dep_chan_data_16_15;
    assign token_in_vec_15[2] = token_16_15;
    assign dep_chan_vld_15_13 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_13 = out_chan_dep_data_15;
    assign token_15_13 = token_out_vec_15[0];
    assign dep_chan_vld_15_16 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_16 = out_chan_dep_data_15;
    assign token_15_16 = token_out_vec_15[1];
    assign dep_chan_vld_15_12 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_12 = out_chan_dep_data_15;
    assign token_15_12 = token_out_vec_15[2];

    // Process: mysha_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 16, 4, 4) hls_recv_krnl_hls_deadlock_detect_unit_16 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_16),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_16),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_16),
        .token_in_vec(token_in_vec_16),
        .dl_detect_in(dl_detect_out),
        .origin(origin[16]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_16),
        .out_chan_dep_data(out_chan_dep_data_16),
        .token_out_vec(token_out_vec_16),
        .dl_detect_out(dl_in_vec[16]));

    assign proc_16_data_FIFO_blk[0] = 1'b0 | (~mysha_U0.timesha_blk_n);
    assign proc_16_data_PIPO_blk[0] = 1'b0;
    assign proc_16_start_FIFO_blk[0] = 1'b0;
    assign proc_16_TLF_FIFO_blk[0] = 1'b0;
    assign proc_16_input_sync_blk[0] = 1'b0;
    assign proc_16_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_16[0] = dl_detect_out ? proc_dep_vld_vec_16_reg[0] : (proc_16_data_FIFO_blk[0] | proc_16_data_PIPO_blk[0] | proc_16_start_FIFO_blk[0] | proc_16_TLF_FIFO_blk[0] | proc_16_input_sync_blk[0] | proc_16_output_sync_blk[0]);
    assign proc_16_data_FIFO_blk[1] = 1'b0 | (~mysha_U0.ComputeWordCnt_loc_blk_n) | (~mysha_U0.sha_in_blk_n) | (~mysha_U0.grp_sha3Digest_32u_s_fu_120.endMsgLenStrm_blk_n) | (~mysha_U0.grp_sha3Digest_32u_s_fu_120.msgLenStrm_blk_n) | (~mysha_U0.grp_sha3Digest_32u_s_fu_120.msgStrm_blk_n);
    assign proc_16_data_PIPO_blk[1] = 1'b0;
    assign proc_16_start_FIFO_blk[1] = 1'b0 | (~start_for_mysha_U0_U.if_empty_n & mysha_U0.ap_idle & ~start_for_mysha_U0_U.if_write);
    assign proc_16_TLF_FIFO_blk[1] = 1'b0;
    assign proc_16_input_sync_blk[1] = 1'b0;
    assign proc_16_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_16[1] = dl_detect_out ? proc_dep_vld_vec_16_reg[1] : (proc_16_data_FIFO_blk[1] | proc_16_data_PIPO_blk[1] | proc_16_start_FIFO_blk[1] | proc_16_TLF_FIFO_blk[1] | proc_16_input_sync_blk[1] | proc_16_output_sync_blk[1]);
    assign proc_16_data_FIFO_blk[2] = 1'b0 | (~mysha_U0.ComputeWordCnt_loc_out_blk_n) | (~mysha_U0.grp_sha3Digest_32u_s_fu_120.digestStrm_blk_n) | (~mysha_U0.grp_sha3Digest_32u_s_fu_120.endDigestStrm_blk_n);
    assign proc_16_data_PIPO_blk[2] = 1'b0;
    assign proc_16_start_FIFO_blk[2] = 1'b0 | (~start_for_consumesha_U0_U.if_full_n & mysha_U0.ap_start & ~mysha_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~start_for_consumesha_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[2] = 1'b0;
    assign proc_16_input_sync_blk[2] = 1'b0;
    assign proc_16_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_16[2] = dl_detect_out ? proc_dep_vld_vec_16_reg[2] : (proc_16_data_FIFO_blk[2] | proc_16_data_PIPO_blk[2] | proc_16_start_FIFO_blk[2] | proc_16_TLF_FIFO_blk[2] | proc_16_input_sync_blk[2] | proc_16_output_sync_blk[2]);
    assign proc_16_data_FIFO_blk[3] = 1'b0 | (~mysha_U0.ComputeWordCnt_loc_out1_blk_n) | (~mysha_U0.sha_out_blk_n);
    assign proc_16_data_PIPO_blk[3] = 1'b0;
    assign proc_16_start_FIFO_blk[3] = 1'b0 | (~start_for_prepare_aes_U0_U.if_full_n & mysha_U0.ap_start & ~mysha_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~start_for_prepare_aes_U0_U.if_read);
    assign proc_16_TLF_FIFO_blk[3] = 1'b0;
    assign proc_16_input_sync_blk[3] = 1'b0;
    assign proc_16_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_16[3] = dl_detect_out ? proc_dep_vld_vec_16_reg[3] : (proc_16_data_FIFO_blk[3] | proc_16_data_PIPO_blk[3] | proc_16_start_FIFO_blk[3] | proc_16_TLF_FIFO_blk[3] | proc_16_input_sync_blk[3] | proc_16_output_sync_blk[3]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_16_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_16_reg <= proc_dep_vld_vec_16;
        end
    end
    assign in_chan_dep_vld_vec_16[0] = dep_chan_vld_11_16;
    assign in_chan_dep_data_vec_16[24 : 0] = dep_chan_data_11_16;
    assign token_in_vec_16[0] = token_11_16;
    assign in_chan_dep_vld_vec_16[1] = dep_chan_vld_15_16;
    assign in_chan_dep_data_vec_16[49 : 25] = dep_chan_data_15_16;
    assign token_in_vec_16[1] = token_15_16;
    assign in_chan_dep_vld_vec_16[2] = dep_chan_vld_17_16;
    assign in_chan_dep_data_vec_16[74 : 50] = dep_chan_data_17_16;
    assign token_in_vec_16[2] = token_17_16;
    assign in_chan_dep_vld_vec_16[3] = dep_chan_vld_18_16;
    assign in_chan_dep_data_vec_16[99 : 75] = dep_chan_data_18_16;
    assign token_in_vec_16[3] = token_18_16;
    assign dep_chan_vld_16_11 = out_chan_dep_vld_vec_16[0];
    assign dep_chan_data_16_11 = out_chan_dep_data_16;
    assign token_16_11 = token_out_vec_16[0];
    assign dep_chan_vld_16_15 = out_chan_dep_vld_vec_16[1];
    assign dep_chan_data_16_15 = out_chan_dep_data_16;
    assign token_16_15 = token_out_vec_16[1];
    assign dep_chan_vld_16_17 = out_chan_dep_vld_vec_16[2];
    assign dep_chan_data_16_17 = out_chan_dep_data_16;
    assign token_16_17 = token_out_vec_16[2];
    assign dep_chan_vld_16_18 = out_chan_dep_vld_vec_16[3];
    assign dep_chan_data_16_18 = out_chan_dep_data_16;
    assign token_16_18 = token_out_vec_16[3];

    // Process: consumesha_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 17, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_17 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_17),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_17),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_17),
        .token_in_vec(token_in_vec_17),
        .dl_detect_in(dl_detect_out),
        .origin(origin[17]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_17),
        .out_chan_dep_data(out_chan_dep_data_17),
        .token_out_vec(token_out_vec_17),
        .dl_detect_out(dl_in_vec[17]));

    assign proc_17_data_FIFO_blk[0] = 1'b0 | (~consumesha_U0.ComputeWordCnt_loc_blk_n) | (~consumesha_U0.endDigestStrm_blk_n) | (~consumesha_U0.digestStrm_blk_n);
    assign proc_17_data_PIPO_blk[0] = 1'b0;
    assign proc_17_start_FIFO_blk[0] = 1'b0 | (~start_for_consumesha_U0_U.if_empty_n & consumesha_U0.ap_idle & ~start_for_consumesha_U0_U.if_write);
    assign proc_17_TLF_FIFO_blk[0] = 1'b0;
    assign proc_17_input_sync_blk[0] = 1'b0;
    assign proc_17_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_17[0] = dl_detect_out ? proc_dep_vld_vec_17_reg[0] : (proc_17_data_FIFO_blk[0] | proc_17_data_PIPO_blk[0] | proc_17_start_FIFO_blk[0] | proc_17_TLF_FIFO_blk[0] | proc_17_input_sync_blk[0] | proc_17_output_sync_blk[0]);
    assign proc_17_data_FIFO_blk[1] = 1'b0;
    assign proc_17_data_PIPO_blk[1] = 1'b0;
    assign proc_17_start_FIFO_blk[1] = 1'b0;
    assign proc_17_TLF_FIFO_blk[1] = 1'b0;
    assign proc_17_input_sync_blk[1] = 1'b0;
    assign proc_17_output_sync_blk[1] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_17[1] = dl_detect_out ? proc_dep_vld_vec_17_reg[1] : (proc_17_data_FIFO_blk[1] | proc_17_data_PIPO_blk[1] | proc_17_start_FIFO_blk[1] | proc_17_TLF_FIFO_blk[1] | proc_17_input_sync_blk[1] | proc_17_output_sync_blk[1]);
    assign proc_17_data_FIFO_blk[2] = 1'b0;
    assign proc_17_data_PIPO_blk[2] = 1'b0;
    assign proc_17_start_FIFO_blk[2] = 1'b0;
    assign proc_17_TLF_FIFO_blk[2] = 1'b0;
    assign proc_17_input_sync_blk[2] = 1'b0;
    assign proc_17_output_sync_blk[2] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_17[2] = dl_detect_out ? proc_dep_vld_vec_17_reg[2] : (proc_17_data_FIFO_blk[2] | proc_17_data_PIPO_blk[2] | proc_17_start_FIFO_blk[2] | proc_17_TLF_FIFO_blk[2] | proc_17_input_sync_blk[2] | proc_17_output_sync_blk[2]);
    assign proc_17_data_FIFO_blk[3] = 1'b0;
    assign proc_17_data_PIPO_blk[3] = 1'b0;
    assign proc_17_start_FIFO_blk[3] = 1'b0;
    assign proc_17_TLF_FIFO_blk[3] = 1'b0;
    assign proc_17_input_sync_blk[3] = 1'b0;
    assign proc_17_output_sync_blk[3] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_17[3] = dl_detect_out ? proc_dep_vld_vec_17_reg[3] : (proc_17_data_FIFO_blk[3] | proc_17_data_PIPO_blk[3] | proc_17_start_FIFO_blk[3] | proc_17_TLF_FIFO_blk[3] | proc_17_input_sync_blk[3] | proc_17_output_sync_blk[3]);
    assign proc_17_data_FIFO_blk[4] = 1'b0;
    assign proc_17_data_PIPO_blk[4] = 1'b0;
    assign proc_17_start_FIFO_blk[4] = 1'b0;
    assign proc_17_TLF_FIFO_blk[4] = 1'b0;
    assign proc_17_input_sync_blk[4] = 1'b0;
    assign proc_17_output_sync_blk[4] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_17[4] = dl_detect_out ? proc_dep_vld_vec_17_reg[4] : (proc_17_data_FIFO_blk[4] | proc_17_data_PIPO_blk[4] | proc_17_start_FIFO_blk[4] | proc_17_TLF_FIFO_blk[4] | proc_17_input_sync_blk[4] | proc_17_output_sync_blk[4]);
    assign proc_17_data_FIFO_blk[5] = 1'b0;
    assign proc_17_data_PIPO_blk[5] = 1'b0;
    assign proc_17_start_FIFO_blk[5] = 1'b0;
    assign proc_17_TLF_FIFO_blk[5] = 1'b0;
    assign proc_17_input_sync_blk[5] = 1'b0;
    assign proc_17_output_sync_blk[5] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_17[5] = dl_detect_out ? proc_dep_vld_vec_17_reg[5] : (proc_17_data_FIFO_blk[5] | proc_17_data_PIPO_blk[5] | proc_17_start_FIFO_blk[5] | proc_17_TLF_FIFO_blk[5] | proc_17_input_sync_blk[5] | proc_17_output_sync_blk[5]);
    assign proc_17_data_FIFO_blk[6] = 1'b0;
    assign proc_17_data_PIPO_blk[6] = 1'b0;
    assign proc_17_start_FIFO_blk[6] = 1'b0;
    assign proc_17_TLF_FIFO_blk[6] = 1'b0;
    assign proc_17_input_sync_blk[6] = 1'b0;
    assign proc_17_output_sync_blk[6] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_17[6] = dl_detect_out ? proc_dep_vld_vec_17_reg[6] : (proc_17_data_FIFO_blk[6] | proc_17_data_PIPO_blk[6] | proc_17_start_FIFO_blk[6] | proc_17_TLF_FIFO_blk[6] | proc_17_input_sync_blk[6] | proc_17_output_sync_blk[6]);
    assign proc_17_data_FIFO_blk[7] = 1'b0;
    assign proc_17_data_PIPO_blk[7] = 1'b0;
    assign proc_17_start_FIFO_blk[7] = 1'b0;
    assign proc_17_TLF_FIFO_blk[7] = 1'b0;
    assign proc_17_input_sync_blk[7] = 1'b0;
    assign proc_17_output_sync_blk[7] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_17[7] = dl_detect_out ? proc_dep_vld_vec_17_reg[7] : (proc_17_data_FIFO_blk[7] | proc_17_data_PIPO_blk[7] | proc_17_start_FIFO_blk[7] | proc_17_TLF_FIFO_blk[7] | proc_17_input_sync_blk[7] | proc_17_output_sync_blk[7]);
    assign proc_17_data_FIFO_blk[8] = 1'b0;
    assign proc_17_data_PIPO_blk[8] = 1'b0;
    assign proc_17_start_FIFO_blk[8] = 1'b0;
    assign proc_17_TLF_FIFO_blk[8] = 1'b0;
    assign proc_17_input_sync_blk[8] = 1'b0;
    assign proc_17_output_sync_blk[8] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_17[8] = dl_detect_out ? proc_dep_vld_vec_17_reg[8] : (proc_17_data_FIFO_blk[8] | proc_17_data_PIPO_blk[8] | proc_17_start_FIFO_blk[8] | proc_17_TLF_FIFO_blk[8] | proc_17_input_sync_blk[8] | proc_17_output_sync_blk[8]);
    assign proc_17_data_FIFO_blk[9] = 1'b0;
    assign proc_17_data_PIPO_blk[9] = 1'b0;
    assign proc_17_start_FIFO_blk[9] = 1'b0;
    assign proc_17_TLF_FIFO_blk[9] = 1'b0;
    assign proc_17_input_sync_blk[9] = 1'b0;
    assign proc_17_output_sync_blk[9] = 1'b0 | (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_17[9] = dl_detect_out ? proc_dep_vld_vec_17_reg[9] : (proc_17_data_FIFO_blk[9] | proc_17_data_PIPO_blk[9] | proc_17_start_FIFO_blk[9] | proc_17_TLF_FIFO_blk[9] | proc_17_input_sync_blk[9] | proc_17_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_17_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_17_reg <= proc_dep_vld_vec_17;
        end
    end
    assign in_chan_dep_vld_vec_17[0] = dep_chan_vld_3_17;
    assign in_chan_dep_data_vec_17[24 : 0] = dep_chan_data_3_17;
    assign token_in_vec_17[0] = token_3_17;
    assign in_chan_dep_vld_vec_17[1] = dep_chan_vld_8_17;
    assign in_chan_dep_data_vec_17[49 : 25] = dep_chan_data_8_17;
    assign token_in_vec_17[1] = token_8_17;
    assign in_chan_dep_vld_vec_17[2] = dep_chan_vld_11_17;
    assign in_chan_dep_data_vec_17[74 : 50] = dep_chan_data_11_17;
    assign token_in_vec_17[2] = token_11_17;
    assign in_chan_dep_vld_vec_17[3] = dep_chan_vld_14_17;
    assign in_chan_dep_data_vec_17[99 : 75] = dep_chan_data_14_17;
    assign token_in_vec_17[3] = token_14_17;
    assign in_chan_dep_vld_vec_17[4] = dep_chan_vld_16_17;
    assign in_chan_dep_data_vec_17[124 : 100] = dep_chan_data_16_17;
    assign token_in_vec_17[4] = token_16_17;
    assign in_chan_dep_vld_vec_17[5] = dep_chan_vld_20_17;
    assign in_chan_dep_data_vec_17[149 : 125] = dep_chan_data_20_17;
    assign token_in_vec_17[5] = token_20_17;
    assign in_chan_dep_vld_vec_17[6] = dep_chan_vld_21_17;
    assign in_chan_dep_data_vec_17[174 : 150] = dep_chan_data_21_17;
    assign token_in_vec_17[6] = token_21_17;
    assign in_chan_dep_vld_vec_17[7] = dep_chan_vld_22_17;
    assign in_chan_dep_data_vec_17[199 : 175] = dep_chan_data_22_17;
    assign token_in_vec_17[7] = token_22_17;
    assign in_chan_dep_vld_vec_17[8] = dep_chan_vld_23_17;
    assign in_chan_dep_data_vec_17[224 : 200] = dep_chan_data_23_17;
    assign token_in_vec_17[8] = token_23_17;
    assign in_chan_dep_vld_vec_17[9] = dep_chan_vld_24_17;
    assign in_chan_dep_data_vec_17[249 : 225] = dep_chan_data_24_17;
    assign token_in_vec_17[9] = token_24_17;
    assign dep_chan_vld_17_16 = out_chan_dep_vld_vec_17[0];
    assign dep_chan_data_17_16 = out_chan_dep_data_17;
    assign token_17_16 = token_out_vec_17[0];
    assign dep_chan_vld_17_3 = out_chan_dep_vld_vec_17[1];
    assign dep_chan_data_17_3 = out_chan_dep_data_17;
    assign token_17_3 = token_out_vec_17[1];
    assign dep_chan_vld_17_8 = out_chan_dep_vld_vec_17[2];
    assign dep_chan_data_17_8 = out_chan_dep_data_17;
    assign token_17_8 = token_out_vec_17[2];
    assign dep_chan_vld_17_11 = out_chan_dep_vld_vec_17[3];
    assign dep_chan_data_17_11 = out_chan_dep_data_17;
    assign token_17_11 = token_out_vec_17[3];
    assign dep_chan_vld_17_14 = out_chan_dep_vld_vec_17[4];
    assign dep_chan_data_17_14 = out_chan_dep_data_17;
    assign token_17_14 = token_out_vec_17[4];
    assign dep_chan_vld_17_20 = out_chan_dep_vld_vec_17[5];
    assign dep_chan_data_17_20 = out_chan_dep_data_17;
    assign token_17_20 = token_out_vec_17[5];
    assign dep_chan_vld_17_21 = out_chan_dep_vld_vec_17[6];
    assign dep_chan_data_17_21 = out_chan_dep_data_17;
    assign token_17_21 = token_out_vec_17[6];
    assign dep_chan_vld_17_22 = out_chan_dep_vld_vec_17[7];
    assign dep_chan_data_17_22 = out_chan_dep_data_17;
    assign token_17_22 = token_out_vec_17[7];
    assign dep_chan_vld_17_23 = out_chan_dep_vld_vec_17[8];
    assign dep_chan_data_17_23 = out_chan_dep_data_17;
    assign token_17_23 = token_out_vec_17[8];
    assign dep_chan_vld_17_24 = out_chan_dep_vld_vec_17[9];
    assign dep_chan_data_17_24 = out_chan_dep_data_17;
    assign token_17_24 = token_out_vec_17[9];

    // Process: prepare_aes_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 18, 2, 2) hls_recv_krnl_hls_deadlock_detect_unit_18 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_18),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_18),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_18),
        .token_in_vec(token_in_vec_18),
        .dl_detect_in(dl_detect_out),
        .origin(origin[18]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_18),
        .out_chan_dep_data(out_chan_dep_data_18),
        .token_out_vec(token_out_vec_18),
        .dl_detect_out(dl_in_vec[18]));

    assign proc_18_data_FIFO_blk[0] = 1'b0 | (~prepare_aes_U0.ciphertextStrm_blk_n) | (~prepare_aes_U0.endCiphertextStrm_blk_n) | (~prepare_aes_U0.cipherkeyStrm_blk_n) | (~prepare_aes_U0.IVStrm_blk_n) | (~prepare_aes_U0.ComputeWordCnt_loc_out_blk_n);
    assign proc_18_data_PIPO_blk[0] = 1'b0;
    assign proc_18_start_FIFO_blk[0] = 1'b0 | (~start_for_myaes_U0_U.if_full_n & prepare_aes_U0.ap_start & ~prepare_aes_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~start_for_myaes_U0_U.if_read);
    assign proc_18_TLF_FIFO_blk[0] = 1'b0;
    assign proc_18_input_sync_blk[0] = 1'b0;
    assign proc_18_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_18[0] = dl_detect_out ? proc_dep_vld_vec_18_reg[0] : (proc_18_data_FIFO_blk[0] | proc_18_data_PIPO_blk[0] | proc_18_start_FIFO_blk[0] | proc_18_TLF_FIFO_blk[0] | proc_18_input_sync_blk[0] | proc_18_output_sync_blk[0]);
    assign proc_18_data_FIFO_blk[1] = 1'b0 | (~prepare_aes_U0.ComputeWordCnt_loc_blk_n) | (~prepare_aes_U0.sha_out_blk_n);
    assign proc_18_data_PIPO_blk[1] = 1'b0;
    assign proc_18_start_FIFO_blk[1] = 1'b0 | (~start_for_prepare_aes_U0_U.if_empty_n & prepare_aes_U0.ap_idle & ~start_for_prepare_aes_U0_U.if_write);
    assign proc_18_TLF_FIFO_blk[1] = 1'b0;
    assign proc_18_input_sync_blk[1] = 1'b0;
    assign proc_18_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_18[1] = dl_detect_out ? proc_dep_vld_vec_18_reg[1] : (proc_18_data_FIFO_blk[1] | proc_18_data_PIPO_blk[1] | proc_18_start_FIFO_blk[1] | proc_18_TLF_FIFO_blk[1] | proc_18_input_sync_blk[1] | proc_18_output_sync_blk[1]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_18_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_18_reg <= proc_dep_vld_vec_18;
        end
    end
    assign in_chan_dep_vld_vec_18[0] = dep_chan_vld_16_18;
    assign in_chan_dep_data_vec_18[24 : 0] = dep_chan_data_16_18;
    assign token_in_vec_18[0] = token_16_18;
    assign in_chan_dep_vld_vec_18[1] = dep_chan_vld_19_18;
    assign in_chan_dep_data_vec_18[49 : 25] = dep_chan_data_19_18;
    assign token_in_vec_18[1] = token_19_18;
    assign dep_chan_vld_18_19 = out_chan_dep_vld_vec_18[0];
    assign dep_chan_data_18_19 = out_chan_dep_data_18;
    assign token_18_19 = token_out_vec_18[0];
    assign dep_chan_vld_18_16 = out_chan_dep_vld_vec_18[1];
    assign dep_chan_data_18_16 = out_chan_dep_data_18;
    assign token_18_16 = token_out_vec_18[1];

    // Process: myaes_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 19, 3, 3) hls_recv_krnl_hls_deadlock_detect_unit_19 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_19),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_19),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_19),
        .token_in_vec(token_in_vec_19),
        .dl_detect_in(dl_detect_out),
        .origin(origin[19]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_19),
        .out_chan_dep_data(out_chan_dep_data_19),
        .token_out_vec(token_out_vec_19),
        .dl_detect_out(dl_in_vec[19]));

    assign proc_19_data_FIFO_blk[0] = 1'b0 | (~myaes_U0.ciphertextStrm_blk_n) | (~myaes_U0.endCiphertextStrm_blk_n) | (~myaes_U0.cipherkeyStrm_blk_n) | (~myaes_U0.IVStrm_blk_n) | (~myaes_U0.ComputeWordCnt_loc_blk_n);
    assign proc_19_data_PIPO_blk[0] = 1'b0;
    assign proc_19_start_FIFO_blk[0] = 1'b0 | (~start_for_myaes_U0_U.if_empty_n & myaes_U0.ap_idle & ~start_for_myaes_U0_U.if_write);
    assign proc_19_TLF_FIFO_blk[0] = 1'b0;
    assign proc_19_input_sync_blk[0] = 1'b0;
    assign proc_19_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_19[0] = dl_detect_out ? proc_dep_vld_vec_19_reg[0] : (proc_19_data_FIFO_blk[0] | proc_19_data_PIPO_blk[0] | proc_19_start_FIFO_blk[0] | proc_19_TLF_FIFO_blk[0] | proc_19_input_sync_blk[0] | proc_19_output_sync_blk[0]);
    assign proc_19_data_FIFO_blk[1] = 1'b0 | (~myaes_U0.plaintextStrm_blk_n) | (~myaes_U0.endPlaintextStrm_blk_n) | (~myaes_U0.ComputeWordCnt_loc_out_blk_n);
    assign proc_19_data_PIPO_blk[1] = 1'b0;
    assign proc_19_start_FIFO_blk[1] = 1'b0 | (~start_for_consumeaes_U0_U.if_full_n & myaes_U0.ap_start & ~myaes_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~start_for_consumeaes_U0_U.if_read);
    assign proc_19_TLF_FIFO_blk[1] = 1'b0;
    assign proc_19_input_sync_blk[1] = 1'b0;
    assign proc_19_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_19[1] = dl_detect_out ? proc_dep_vld_vec_19_reg[1] : (proc_19_data_FIFO_blk[1] | proc_19_data_PIPO_blk[1] | proc_19_start_FIFO_blk[1] | proc_19_TLF_FIFO_blk[1] | proc_19_input_sync_blk[1] | proc_19_output_sync_blk[1]);
    assign proc_19_data_FIFO_blk[2] = 1'b0 | (~myaes_U0.timeaes_blk_n);
    assign proc_19_data_PIPO_blk[2] = 1'b0;
    assign proc_19_start_FIFO_blk[2] = 1'b0;
    assign proc_19_TLF_FIFO_blk[2] = 1'b0;
    assign proc_19_input_sync_blk[2] = 1'b0;
    assign proc_19_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_19[2] = dl_detect_out ? proc_dep_vld_vec_19_reg[2] : (proc_19_data_FIFO_blk[2] | proc_19_data_PIPO_blk[2] | proc_19_start_FIFO_blk[2] | proc_19_TLF_FIFO_blk[2] | proc_19_input_sync_blk[2] | proc_19_output_sync_blk[2]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_19_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_19_reg <= proc_dep_vld_vec_19;
        end
    end
    assign in_chan_dep_vld_vec_19[0] = dep_chan_vld_11_19;
    assign in_chan_dep_data_vec_19[24 : 0] = dep_chan_data_11_19;
    assign token_in_vec_19[0] = token_11_19;
    assign in_chan_dep_vld_vec_19[1] = dep_chan_vld_18_19;
    assign in_chan_dep_data_vec_19[49 : 25] = dep_chan_data_18_19;
    assign token_in_vec_19[1] = token_18_19;
    assign in_chan_dep_vld_vec_19[2] = dep_chan_vld_20_19;
    assign in_chan_dep_data_vec_19[74 : 50] = dep_chan_data_20_19;
    assign token_in_vec_19[2] = token_20_19;
    assign dep_chan_vld_19_18 = out_chan_dep_vld_vec_19[0];
    assign dep_chan_data_19_18 = out_chan_dep_data_19;
    assign token_19_18 = token_out_vec_19[0];
    assign dep_chan_vld_19_20 = out_chan_dep_vld_vec_19[1];
    assign dep_chan_data_19_20 = out_chan_dep_data_19;
    assign token_19_20 = token_out_vec_19[1];
    assign dep_chan_vld_19_11 = out_chan_dep_vld_vec_19[2];
    assign dep_chan_data_19_11 = out_chan_dep_data_19;
    assign token_19_11 = token_out_vec_19[2];

    // Process: consumeaes_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 20, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_20 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_20),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_20),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_20),
        .token_in_vec(token_in_vec_20),
        .dl_detect_in(dl_detect_out),
        .origin(origin[20]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_20),
        .out_chan_dep_data(out_chan_dep_data_20),
        .token_out_vec(token_out_vec_20),
        .dl_detect_out(dl_in_vec[20]));

    assign proc_20_data_FIFO_blk[0] = 1'b0 | (~consumeaes_U0.plaintextStrm_blk_n) | (~consumeaes_U0.endPlaintextStrm_blk_n) | (~consumeaes_U0.ComputeWordCnt_loc_blk_n);
    assign proc_20_data_PIPO_blk[0] = 1'b0;
    assign proc_20_start_FIFO_blk[0] = 1'b0 | (~start_for_consumeaes_U0_U.if_empty_n & consumeaes_U0.ap_idle & ~start_for_consumeaes_U0_U.if_write);
    assign proc_20_TLF_FIFO_blk[0] = 1'b0;
    assign proc_20_input_sync_blk[0] = 1'b0;
    assign proc_20_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_20[0] = dl_detect_out ? proc_dep_vld_vec_20_reg[0] : (proc_20_data_FIFO_blk[0] | proc_20_data_PIPO_blk[0] | proc_20_start_FIFO_blk[0] | proc_20_TLF_FIFO_blk[0] | proc_20_input_sync_blk[0] | proc_20_output_sync_blk[0]);
    assign proc_20_data_FIFO_blk[1] = 1'b0;
    assign proc_20_data_PIPO_blk[1] = 1'b0;
    assign proc_20_start_FIFO_blk[1] = 1'b0;
    assign proc_20_TLF_FIFO_blk[1] = 1'b0;
    assign proc_20_input_sync_blk[1] = 1'b0;
    assign proc_20_output_sync_blk[1] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_20[1] = dl_detect_out ? proc_dep_vld_vec_20_reg[1] : (proc_20_data_FIFO_blk[1] | proc_20_data_PIPO_blk[1] | proc_20_start_FIFO_blk[1] | proc_20_TLF_FIFO_blk[1] | proc_20_input_sync_blk[1] | proc_20_output_sync_blk[1]);
    assign proc_20_data_FIFO_blk[2] = 1'b0;
    assign proc_20_data_PIPO_blk[2] = 1'b0;
    assign proc_20_start_FIFO_blk[2] = 1'b0;
    assign proc_20_TLF_FIFO_blk[2] = 1'b0;
    assign proc_20_input_sync_blk[2] = 1'b0;
    assign proc_20_output_sync_blk[2] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_20[2] = dl_detect_out ? proc_dep_vld_vec_20_reg[2] : (proc_20_data_FIFO_blk[2] | proc_20_data_PIPO_blk[2] | proc_20_start_FIFO_blk[2] | proc_20_TLF_FIFO_blk[2] | proc_20_input_sync_blk[2] | proc_20_output_sync_blk[2]);
    assign proc_20_data_FIFO_blk[3] = 1'b0;
    assign proc_20_data_PIPO_blk[3] = 1'b0;
    assign proc_20_start_FIFO_blk[3] = 1'b0;
    assign proc_20_TLF_FIFO_blk[3] = 1'b0;
    assign proc_20_input_sync_blk[3] = 1'b0;
    assign proc_20_output_sync_blk[3] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_20[3] = dl_detect_out ? proc_dep_vld_vec_20_reg[3] : (proc_20_data_FIFO_blk[3] | proc_20_data_PIPO_blk[3] | proc_20_start_FIFO_blk[3] | proc_20_TLF_FIFO_blk[3] | proc_20_input_sync_blk[3] | proc_20_output_sync_blk[3]);
    assign proc_20_data_FIFO_blk[4] = 1'b0;
    assign proc_20_data_PIPO_blk[4] = 1'b0;
    assign proc_20_start_FIFO_blk[4] = 1'b0;
    assign proc_20_TLF_FIFO_blk[4] = 1'b0;
    assign proc_20_input_sync_blk[4] = 1'b0;
    assign proc_20_output_sync_blk[4] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_20[4] = dl_detect_out ? proc_dep_vld_vec_20_reg[4] : (proc_20_data_FIFO_blk[4] | proc_20_data_PIPO_blk[4] | proc_20_start_FIFO_blk[4] | proc_20_TLF_FIFO_blk[4] | proc_20_input_sync_blk[4] | proc_20_output_sync_blk[4]);
    assign proc_20_data_FIFO_blk[5] = 1'b0;
    assign proc_20_data_PIPO_blk[5] = 1'b0;
    assign proc_20_start_FIFO_blk[5] = 1'b0;
    assign proc_20_TLF_FIFO_blk[5] = 1'b0;
    assign proc_20_input_sync_blk[5] = 1'b0;
    assign proc_20_output_sync_blk[5] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_20[5] = dl_detect_out ? proc_dep_vld_vec_20_reg[5] : (proc_20_data_FIFO_blk[5] | proc_20_data_PIPO_blk[5] | proc_20_start_FIFO_blk[5] | proc_20_TLF_FIFO_blk[5] | proc_20_input_sync_blk[5] | proc_20_output_sync_blk[5]);
    assign proc_20_data_FIFO_blk[6] = 1'b0;
    assign proc_20_data_PIPO_blk[6] = 1'b0;
    assign proc_20_start_FIFO_blk[6] = 1'b0;
    assign proc_20_TLF_FIFO_blk[6] = 1'b0;
    assign proc_20_input_sync_blk[6] = 1'b0;
    assign proc_20_output_sync_blk[6] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_20[6] = dl_detect_out ? proc_dep_vld_vec_20_reg[6] : (proc_20_data_FIFO_blk[6] | proc_20_data_PIPO_blk[6] | proc_20_start_FIFO_blk[6] | proc_20_TLF_FIFO_blk[6] | proc_20_input_sync_blk[6] | proc_20_output_sync_blk[6]);
    assign proc_20_data_FIFO_blk[7] = 1'b0;
    assign proc_20_data_PIPO_blk[7] = 1'b0;
    assign proc_20_start_FIFO_blk[7] = 1'b0;
    assign proc_20_TLF_FIFO_blk[7] = 1'b0;
    assign proc_20_input_sync_blk[7] = 1'b0;
    assign proc_20_output_sync_blk[7] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_20[7] = dl_detect_out ? proc_dep_vld_vec_20_reg[7] : (proc_20_data_FIFO_blk[7] | proc_20_data_PIPO_blk[7] | proc_20_start_FIFO_blk[7] | proc_20_TLF_FIFO_blk[7] | proc_20_input_sync_blk[7] | proc_20_output_sync_blk[7]);
    assign proc_20_data_FIFO_blk[8] = 1'b0;
    assign proc_20_data_PIPO_blk[8] = 1'b0;
    assign proc_20_start_FIFO_blk[8] = 1'b0;
    assign proc_20_TLF_FIFO_blk[8] = 1'b0;
    assign proc_20_input_sync_blk[8] = 1'b0;
    assign proc_20_output_sync_blk[8] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_20[8] = dl_detect_out ? proc_dep_vld_vec_20_reg[8] : (proc_20_data_FIFO_blk[8] | proc_20_data_PIPO_blk[8] | proc_20_start_FIFO_blk[8] | proc_20_TLF_FIFO_blk[8] | proc_20_input_sync_blk[8] | proc_20_output_sync_blk[8]);
    assign proc_20_data_FIFO_blk[9] = 1'b0;
    assign proc_20_data_PIPO_blk[9] = 1'b0;
    assign proc_20_start_FIFO_blk[9] = 1'b0;
    assign proc_20_TLF_FIFO_blk[9] = 1'b0;
    assign proc_20_input_sync_blk[9] = 1'b0;
    assign proc_20_output_sync_blk[9] = 1'b0 | (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_20[9] = dl_detect_out ? proc_dep_vld_vec_20_reg[9] : (proc_20_data_FIFO_blk[9] | proc_20_data_PIPO_blk[9] | proc_20_start_FIFO_blk[9] | proc_20_TLF_FIFO_blk[9] | proc_20_input_sync_blk[9] | proc_20_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_20_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_20_reg <= proc_dep_vld_vec_20;
        end
    end
    assign in_chan_dep_vld_vec_20[0] = dep_chan_vld_3_20;
    assign in_chan_dep_data_vec_20[24 : 0] = dep_chan_data_3_20;
    assign token_in_vec_20[0] = token_3_20;
    assign in_chan_dep_vld_vec_20[1] = dep_chan_vld_8_20;
    assign in_chan_dep_data_vec_20[49 : 25] = dep_chan_data_8_20;
    assign token_in_vec_20[1] = token_8_20;
    assign in_chan_dep_vld_vec_20[2] = dep_chan_vld_11_20;
    assign in_chan_dep_data_vec_20[74 : 50] = dep_chan_data_11_20;
    assign token_in_vec_20[2] = token_11_20;
    assign in_chan_dep_vld_vec_20[3] = dep_chan_vld_14_20;
    assign in_chan_dep_data_vec_20[99 : 75] = dep_chan_data_14_20;
    assign token_in_vec_20[3] = token_14_20;
    assign in_chan_dep_vld_vec_20[4] = dep_chan_vld_17_20;
    assign in_chan_dep_data_vec_20[124 : 100] = dep_chan_data_17_20;
    assign token_in_vec_20[4] = token_17_20;
    assign in_chan_dep_vld_vec_20[5] = dep_chan_vld_19_20;
    assign in_chan_dep_data_vec_20[149 : 125] = dep_chan_data_19_20;
    assign token_in_vec_20[5] = token_19_20;
    assign in_chan_dep_vld_vec_20[6] = dep_chan_vld_21_20;
    assign in_chan_dep_data_vec_20[174 : 150] = dep_chan_data_21_20;
    assign token_in_vec_20[6] = token_21_20;
    assign in_chan_dep_vld_vec_20[7] = dep_chan_vld_22_20;
    assign in_chan_dep_data_vec_20[199 : 175] = dep_chan_data_22_20;
    assign token_in_vec_20[7] = token_22_20;
    assign in_chan_dep_vld_vec_20[8] = dep_chan_vld_23_20;
    assign in_chan_dep_data_vec_20[224 : 200] = dep_chan_data_23_20;
    assign token_in_vec_20[8] = token_23_20;
    assign in_chan_dep_vld_vec_20[9] = dep_chan_vld_24_20;
    assign in_chan_dep_data_vec_20[249 : 225] = dep_chan_data_24_20;
    assign token_in_vec_20[9] = token_24_20;
    assign dep_chan_vld_20_19 = out_chan_dep_vld_vec_20[0];
    assign dep_chan_data_20_19 = out_chan_dep_data_20;
    assign token_20_19 = token_out_vec_20[0];
    assign dep_chan_vld_20_3 = out_chan_dep_vld_vec_20[1];
    assign dep_chan_data_20_3 = out_chan_dep_data_20;
    assign token_20_3 = token_out_vec_20[1];
    assign dep_chan_vld_20_8 = out_chan_dep_vld_vec_20[2];
    assign dep_chan_data_20_8 = out_chan_dep_data_20;
    assign token_20_8 = token_out_vec_20[2];
    assign dep_chan_vld_20_11 = out_chan_dep_vld_vec_20[3];
    assign dep_chan_data_20_11 = out_chan_dep_data_20;
    assign token_20_11 = token_out_vec_20[3];
    assign dep_chan_vld_20_14 = out_chan_dep_vld_vec_20[4];
    assign dep_chan_data_20_14 = out_chan_dep_data_20;
    assign token_20_14 = token_out_vec_20[4];
    assign dep_chan_vld_20_17 = out_chan_dep_vld_vec_20[5];
    assign dep_chan_data_20_17 = out_chan_dep_data_20;
    assign token_20_17 = token_out_vec_20[5];
    assign dep_chan_vld_20_21 = out_chan_dep_vld_vec_20[6];
    assign dep_chan_data_20_21 = out_chan_dep_data_20;
    assign token_20_21 = token_out_vec_20[6];
    assign dep_chan_vld_20_22 = out_chan_dep_vld_vec_20[7];
    assign dep_chan_data_20_22 = out_chan_dep_data_20;
    assign token_20_22 = token_out_vec_20[7];
    assign dep_chan_vld_20_23 = out_chan_dep_vld_vec_20[8];
    assign dep_chan_data_20_23 = out_chan_dep_data_20;
    assign token_20_23 = token_out_vec_20[8];
    assign dep_chan_vld_20_24 = out_chan_dep_vld_vec_20[9];
    assign dep_chan_data_20_24 = out_chan_dep_data_20;
    assign token_20_24 = token_out_vec_20[9];

    // Process: tie_off_tcp_open_connection_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 21, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_21 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_21),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_21),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_21),
        .token_in_vec(token_in_vec_21),
        .dl_detect_in(dl_detect_out),
        .origin(origin[21]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_21),
        .out_chan_dep_data(out_chan_dep_data_21),
        .token_out_vec(token_out_vec_21),
        .dl_detect_out(dl_in_vec[21]));

    assign proc_21_data_FIFO_blk[0] = 1'b0;
    assign proc_21_data_PIPO_blk[0] = 1'b0;
    assign proc_21_start_FIFO_blk[0] = 1'b0;
    assign proc_21_TLF_FIFO_blk[0] = 1'b0;
    assign proc_21_input_sync_blk[0] = 1'b0 | (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready);
    assign proc_21_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_21[0] = dl_detect_out ? proc_dep_vld_vec_21_reg[0] : (proc_21_data_FIFO_blk[0] | proc_21_data_PIPO_blk[0] | proc_21_start_FIFO_blk[0] | proc_21_TLF_FIFO_blk[0] | proc_21_input_sync_blk[0] | proc_21_output_sync_blk[0]);
    assign proc_21_data_FIFO_blk[1] = 1'b0;
    assign proc_21_data_PIPO_blk[1] = 1'b0;
    assign proc_21_start_FIFO_blk[1] = 1'b0;
    assign proc_21_TLF_FIFO_blk[1] = 1'b0;
    assign proc_21_input_sync_blk[1] = 1'b0 | (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready);
    assign proc_21_output_sync_blk[1] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_21[1] = dl_detect_out ? proc_dep_vld_vec_21_reg[1] : (proc_21_data_FIFO_blk[1] | proc_21_data_PIPO_blk[1] | proc_21_start_FIFO_blk[1] | proc_21_TLF_FIFO_blk[1] | proc_21_input_sync_blk[1] | proc_21_output_sync_blk[1]);
    assign proc_21_data_FIFO_blk[2] = 1'b0;
    assign proc_21_data_PIPO_blk[2] = 1'b0;
    assign proc_21_start_FIFO_blk[2] = 1'b0;
    assign proc_21_TLF_FIFO_blk[2] = 1'b0;
    assign proc_21_input_sync_blk[2] = 1'b0 | (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready);
    assign proc_21_output_sync_blk[2] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_21[2] = dl_detect_out ? proc_dep_vld_vec_21_reg[2] : (proc_21_data_FIFO_blk[2] | proc_21_data_PIPO_blk[2] | proc_21_start_FIFO_blk[2] | proc_21_TLF_FIFO_blk[2] | proc_21_input_sync_blk[2] | proc_21_output_sync_blk[2]);
    assign proc_21_data_FIFO_blk[3] = 1'b0;
    assign proc_21_data_PIPO_blk[3] = 1'b0;
    assign proc_21_start_FIFO_blk[3] = 1'b0;
    assign proc_21_TLF_FIFO_blk[3] = 1'b0;
    assign proc_21_input_sync_blk[3] = 1'b0 | (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready);
    assign proc_21_output_sync_blk[3] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_21[3] = dl_detect_out ? proc_dep_vld_vec_21_reg[3] : (proc_21_data_FIFO_blk[3] | proc_21_data_PIPO_blk[3] | proc_21_start_FIFO_blk[3] | proc_21_TLF_FIFO_blk[3] | proc_21_input_sync_blk[3] | proc_21_output_sync_blk[3]);
    assign proc_21_data_FIFO_blk[4] = 1'b0;
    assign proc_21_data_PIPO_blk[4] = 1'b0;
    assign proc_21_start_FIFO_blk[4] = 1'b0;
    assign proc_21_TLF_FIFO_blk[4] = 1'b0;
    assign proc_21_input_sync_blk[4] = 1'b0;
    assign proc_21_output_sync_blk[4] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_21[4] = dl_detect_out ? proc_dep_vld_vec_21_reg[4] : (proc_21_data_FIFO_blk[4] | proc_21_data_PIPO_blk[4] | proc_21_start_FIFO_blk[4] | proc_21_TLF_FIFO_blk[4] | proc_21_input_sync_blk[4] | proc_21_output_sync_blk[4]);
    assign proc_21_data_FIFO_blk[5] = 1'b0;
    assign proc_21_data_PIPO_blk[5] = 1'b0;
    assign proc_21_start_FIFO_blk[5] = 1'b0;
    assign proc_21_TLF_FIFO_blk[5] = 1'b0;
    assign proc_21_input_sync_blk[5] = 1'b0;
    assign proc_21_output_sync_blk[5] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_21[5] = dl_detect_out ? proc_dep_vld_vec_21_reg[5] : (proc_21_data_FIFO_blk[5] | proc_21_data_PIPO_blk[5] | proc_21_start_FIFO_blk[5] | proc_21_TLF_FIFO_blk[5] | proc_21_input_sync_blk[5] | proc_21_output_sync_blk[5]);
    assign proc_21_data_FIFO_blk[6] = 1'b0;
    assign proc_21_data_PIPO_blk[6] = 1'b0;
    assign proc_21_start_FIFO_blk[6] = 1'b0;
    assign proc_21_TLF_FIFO_blk[6] = 1'b0;
    assign proc_21_input_sync_blk[6] = 1'b0;
    assign proc_21_output_sync_blk[6] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_21[6] = dl_detect_out ? proc_dep_vld_vec_21_reg[6] : (proc_21_data_FIFO_blk[6] | proc_21_data_PIPO_blk[6] | proc_21_start_FIFO_blk[6] | proc_21_TLF_FIFO_blk[6] | proc_21_input_sync_blk[6] | proc_21_output_sync_blk[6]);
    assign proc_21_data_FIFO_blk[7] = 1'b0;
    assign proc_21_data_PIPO_blk[7] = 1'b0;
    assign proc_21_start_FIFO_blk[7] = 1'b0;
    assign proc_21_TLF_FIFO_blk[7] = 1'b0;
    assign proc_21_input_sync_blk[7] = 1'b0;
    assign proc_21_output_sync_blk[7] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_21[7] = dl_detect_out ? proc_dep_vld_vec_21_reg[7] : (proc_21_data_FIFO_blk[7] | proc_21_data_PIPO_blk[7] | proc_21_start_FIFO_blk[7] | proc_21_TLF_FIFO_blk[7] | proc_21_input_sync_blk[7] | proc_21_output_sync_blk[7]);
    assign proc_21_data_FIFO_blk[8] = 1'b0;
    assign proc_21_data_PIPO_blk[8] = 1'b0;
    assign proc_21_start_FIFO_blk[8] = 1'b0;
    assign proc_21_TLF_FIFO_blk[8] = 1'b0;
    assign proc_21_input_sync_blk[8] = 1'b0;
    assign proc_21_output_sync_blk[8] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_21[8] = dl_detect_out ? proc_dep_vld_vec_21_reg[8] : (proc_21_data_FIFO_blk[8] | proc_21_data_PIPO_blk[8] | proc_21_start_FIFO_blk[8] | proc_21_TLF_FIFO_blk[8] | proc_21_input_sync_blk[8] | proc_21_output_sync_blk[8]);
    assign proc_21_data_FIFO_blk[9] = 1'b0;
    assign proc_21_data_PIPO_blk[9] = 1'b0;
    assign proc_21_start_FIFO_blk[9] = 1'b0;
    assign proc_21_TLF_FIFO_blk[9] = 1'b0;
    assign proc_21_input_sync_blk[9] = 1'b0;
    assign proc_21_output_sync_blk[9] = 1'b0 | (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_21[9] = dl_detect_out ? proc_dep_vld_vec_21_reg[9] : (proc_21_data_FIFO_blk[9] | proc_21_data_PIPO_blk[9] | proc_21_start_FIFO_blk[9] | proc_21_TLF_FIFO_blk[9] | proc_21_input_sync_blk[9] | proc_21_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_21_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_21_reg <= proc_dep_vld_vec_21;
        end
    end
    assign in_chan_dep_vld_vec_21[0] = dep_chan_vld_0_21;
    assign in_chan_dep_data_vec_21[24 : 0] = dep_chan_data_0_21;
    assign token_in_vec_21[0] = token_0_21;
    assign in_chan_dep_vld_vec_21[1] = dep_chan_vld_3_21;
    assign in_chan_dep_data_vec_21[49 : 25] = dep_chan_data_3_21;
    assign token_in_vec_21[1] = token_3_21;
    assign in_chan_dep_vld_vec_21[2] = dep_chan_vld_8_21;
    assign in_chan_dep_data_vec_21[74 : 50] = dep_chan_data_8_21;
    assign token_in_vec_21[2] = token_8_21;
    assign in_chan_dep_vld_vec_21[3] = dep_chan_vld_11_21;
    assign in_chan_dep_data_vec_21[99 : 75] = dep_chan_data_11_21;
    assign token_in_vec_21[3] = token_11_21;
    assign in_chan_dep_vld_vec_21[4] = dep_chan_vld_14_21;
    assign in_chan_dep_data_vec_21[124 : 100] = dep_chan_data_14_21;
    assign token_in_vec_21[4] = token_14_21;
    assign in_chan_dep_vld_vec_21[5] = dep_chan_vld_17_21;
    assign in_chan_dep_data_vec_21[149 : 125] = dep_chan_data_17_21;
    assign token_in_vec_21[5] = token_17_21;
    assign in_chan_dep_vld_vec_21[6] = dep_chan_vld_20_21;
    assign in_chan_dep_data_vec_21[174 : 150] = dep_chan_data_20_21;
    assign token_in_vec_21[6] = token_20_21;
    assign in_chan_dep_vld_vec_21[7] = dep_chan_vld_22_21;
    assign in_chan_dep_data_vec_21[199 : 175] = dep_chan_data_22_21;
    assign token_in_vec_21[7] = token_22_21;
    assign in_chan_dep_vld_vec_21[8] = dep_chan_vld_23_21;
    assign in_chan_dep_data_vec_21[224 : 200] = dep_chan_data_23_21;
    assign token_in_vec_21[8] = token_23_21;
    assign in_chan_dep_vld_vec_21[9] = dep_chan_vld_24_21;
    assign in_chan_dep_data_vec_21[249 : 225] = dep_chan_data_24_21;
    assign token_in_vec_21[9] = token_24_21;
    assign dep_chan_vld_21_0 = out_chan_dep_vld_vec_21[0];
    assign dep_chan_data_21_0 = out_chan_dep_data_21;
    assign token_21_0 = token_out_vec_21[0];
    assign dep_chan_vld_21_22 = out_chan_dep_vld_vec_21[1];
    assign dep_chan_data_21_22 = out_chan_dep_data_21;
    assign token_21_22 = token_out_vec_21[1];
    assign dep_chan_vld_21_23 = out_chan_dep_vld_vec_21[2];
    assign dep_chan_data_21_23 = out_chan_dep_data_21;
    assign token_21_23 = token_out_vec_21[2];
    assign dep_chan_vld_21_24 = out_chan_dep_vld_vec_21[3];
    assign dep_chan_data_21_24 = out_chan_dep_data_21;
    assign token_21_24 = token_out_vec_21[3];
    assign dep_chan_vld_21_3 = out_chan_dep_vld_vec_21[4];
    assign dep_chan_data_21_3 = out_chan_dep_data_21;
    assign token_21_3 = token_out_vec_21[4];
    assign dep_chan_vld_21_8 = out_chan_dep_vld_vec_21[5];
    assign dep_chan_data_21_8 = out_chan_dep_data_21;
    assign token_21_8 = token_out_vec_21[5];
    assign dep_chan_vld_21_11 = out_chan_dep_vld_vec_21[6];
    assign dep_chan_data_21_11 = out_chan_dep_data_21;
    assign token_21_11 = token_out_vec_21[6];
    assign dep_chan_vld_21_14 = out_chan_dep_vld_vec_21[7];
    assign dep_chan_data_21_14 = out_chan_dep_data_21;
    assign token_21_14 = token_out_vec_21[7];
    assign dep_chan_vld_21_17 = out_chan_dep_vld_vec_21[8];
    assign dep_chan_data_21_17 = out_chan_dep_data_21;
    assign token_21_17 = token_out_vec_21[8];
    assign dep_chan_vld_21_20 = out_chan_dep_vld_vec_21[9];
    assign dep_chan_data_21_20 = out_chan_dep_data_21;
    assign token_21_20 = token_out_vec_21[9];

    // Process: tie_off_tcp_tx_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 22, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_22 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_22),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_22),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_22),
        .token_in_vec(token_in_vec_22),
        .dl_detect_in(dl_detect_out),
        .origin(origin[22]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_22),
        .out_chan_dep_data(out_chan_dep_data_22),
        .token_out_vec(token_out_vec_22),
        .dl_detect_out(dl_in_vec[22]));

    assign proc_22_data_FIFO_blk[0] = 1'b0;
    assign proc_22_data_PIPO_blk[0] = 1'b0;
    assign proc_22_start_FIFO_blk[0] = 1'b0;
    assign proc_22_TLF_FIFO_blk[0] = 1'b0;
    assign proc_22_input_sync_blk[0] = 1'b0 | (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready);
    assign proc_22_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_22[0] = dl_detect_out ? proc_dep_vld_vec_22_reg[0] : (proc_22_data_FIFO_blk[0] | proc_22_data_PIPO_blk[0] | proc_22_start_FIFO_blk[0] | proc_22_TLF_FIFO_blk[0] | proc_22_input_sync_blk[0] | proc_22_output_sync_blk[0]);
    assign proc_22_data_FIFO_blk[1] = 1'b0;
    assign proc_22_data_PIPO_blk[1] = 1'b0;
    assign proc_22_start_FIFO_blk[1] = 1'b0;
    assign proc_22_TLF_FIFO_blk[1] = 1'b0;
    assign proc_22_input_sync_blk[1] = 1'b0 | (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready);
    assign proc_22_output_sync_blk[1] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_22[1] = dl_detect_out ? proc_dep_vld_vec_22_reg[1] : (proc_22_data_FIFO_blk[1] | proc_22_data_PIPO_blk[1] | proc_22_start_FIFO_blk[1] | proc_22_TLF_FIFO_blk[1] | proc_22_input_sync_blk[1] | proc_22_output_sync_blk[1]);
    assign proc_22_data_FIFO_blk[2] = 1'b0;
    assign proc_22_data_PIPO_blk[2] = 1'b0;
    assign proc_22_start_FIFO_blk[2] = 1'b0;
    assign proc_22_TLF_FIFO_blk[2] = 1'b0;
    assign proc_22_input_sync_blk[2] = 1'b0 | (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready);
    assign proc_22_output_sync_blk[2] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_22[2] = dl_detect_out ? proc_dep_vld_vec_22_reg[2] : (proc_22_data_FIFO_blk[2] | proc_22_data_PIPO_blk[2] | proc_22_start_FIFO_blk[2] | proc_22_TLF_FIFO_blk[2] | proc_22_input_sync_blk[2] | proc_22_output_sync_blk[2]);
    assign proc_22_data_FIFO_blk[3] = 1'b0;
    assign proc_22_data_PIPO_blk[3] = 1'b0;
    assign proc_22_start_FIFO_blk[3] = 1'b0;
    assign proc_22_TLF_FIFO_blk[3] = 1'b0;
    assign proc_22_input_sync_blk[3] = 1'b0 | (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready);
    assign proc_22_output_sync_blk[3] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_22[3] = dl_detect_out ? proc_dep_vld_vec_22_reg[3] : (proc_22_data_FIFO_blk[3] | proc_22_data_PIPO_blk[3] | proc_22_start_FIFO_blk[3] | proc_22_TLF_FIFO_blk[3] | proc_22_input_sync_blk[3] | proc_22_output_sync_blk[3]);
    assign proc_22_data_FIFO_blk[4] = 1'b0;
    assign proc_22_data_PIPO_blk[4] = 1'b0;
    assign proc_22_start_FIFO_blk[4] = 1'b0;
    assign proc_22_TLF_FIFO_blk[4] = 1'b0;
    assign proc_22_input_sync_blk[4] = 1'b0;
    assign proc_22_output_sync_blk[4] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_22[4] = dl_detect_out ? proc_dep_vld_vec_22_reg[4] : (proc_22_data_FIFO_blk[4] | proc_22_data_PIPO_blk[4] | proc_22_start_FIFO_blk[4] | proc_22_TLF_FIFO_blk[4] | proc_22_input_sync_blk[4] | proc_22_output_sync_blk[4]);
    assign proc_22_data_FIFO_blk[5] = 1'b0;
    assign proc_22_data_PIPO_blk[5] = 1'b0;
    assign proc_22_start_FIFO_blk[5] = 1'b0;
    assign proc_22_TLF_FIFO_blk[5] = 1'b0;
    assign proc_22_input_sync_blk[5] = 1'b0;
    assign proc_22_output_sync_blk[5] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_22[5] = dl_detect_out ? proc_dep_vld_vec_22_reg[5] : (proc_22_data_FIFO_blk[5] | proc_22_data_PIPO_blk[5] | proc_22_start_FIFO_blk[5] | proc_22_TLF_FIFO_blk[5] | proc_22_input_sync_blk[5] | proc_22_output_sync_blk[5]);
    assign proc_22_data_FIFO_blk[6] = 1'b0;
    assign proc_22_data_PIPO_blk[6] = 1'b0;
    assign proc_22_start_FIFO_blk[6] = 1'b0;
    assign proc_22_TLF_FIFO_blk[6] = 1'b0;
    assign proc_22_input_sync_blk[6] = 1'b0;
    assign proc_22_output_sync_blk[6] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_22[6] = dl_detect_out ? proc_dep_vld_vec_22_reg[6] : (proc_22_data_FIFO_blk[6] | proc_22_data_PIPO_blk[6] | proc_22_start_FIFO_blk[6] | proc_22_TLF_FIFO_blk[6] | proc_22_input_sync_blk[6] | proc_22_output_sync_blk[6]);
    assign proc_22_data_FIFO_blk[7] = 1'b0;
    assign proc_22_data_PIPO_blk[7] = 1'b0;
    assign proc_22_start_FIFO_blk[7] = 1'b0;
    assign proc_22_TLF_FIFO_blk[7] = 1'b0;
    assign proc_22_input_sync_blk[7] = 1'b0;
    assign proc_22_output_sync_blk[7] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_22[7] = dl_detect_out ? proc_dep_vld_vec_22_reg[7] : (proc_22_data_FIFO_blk[7] | proc_22_data_PIPO_blk[7] | proc_22_start_FIFO_blk[7] | proc_22_TLF_FIFO_blk[7] | proc_22_input_sync_blk[7] | proc_22_output_sync_blk[7]);
    assign proc_22_data_FIFO_blk[8] = 1'b0;
    assign proc_22_data_PIPO_blk[8] = 1'b0;
    assign proc_22_start_FIFO_blk[8] = 1'b0;
    assign proc_22_TLF_FIFO_blk[8] = 1'b0;
    assign proc_22_input_sync_blk[8] = 1'b0;
    assign proc_22_output_sync_blk[8] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_22[8] = dl_detect_out ? proc_dep_vld_vec_22_reg[8] : (proc_22_data_FIFO_blk[8] | proc_22_data_PIPO_blk[8] | proc_22_start_FIFO_blk[8] | proc_22_TLF_FIFO_blk[8] | proc_22_input_sync_blk[8] | proc_22_output_sync_blk[8]);
    assign proc_22_data_FIFO_blk[9] = 1'b0;
    assign proc_22_data_PIPO_blk[9] = 1'b0;
    assign proc_22_start_FIFO_blk[9] = 1'b0;
    assign proc_22_TLF_FIFO_blk[9] = 1'b0;
    assign proc_22_input_sync_blk[9] = 1'b0;
    assign proc_22_output_sync_blk[9] = 1'b0 | (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_22[9] = dl_detect_out ? proc_dep_vld_vec_22_reg[9] : (proc_22_data_FIFO_blk[9] | proc_22_data_PIPO_blk[9] | proc_22_start_FIFO_blk[9] | proc_22_TLF_FIFO_blk[9] | proc_22_input_sync_blk[9] | proc_22_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_22_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_22_reg <= proc_dep_vld_vec_22;
        end
    end
    assign in_chan_dep_vld_vec_22[0] = dep_chan_vld_0_22;
    assign in_chan_dep_data_vec_22[24 : 0] = dep_chan_data_0_22;
    assign token_in_vec_22[0] = token_0_22;
    assign in_chan_dep_vld_vec_22[1] = dep_chan_vld_3_22;
    assign in_chan_dep_data_vec_22[49 : 25] = dep_chan_data_3_22;
    assign token_in_vec_22[1] = token_3_22;
    assign in_chan_dep_vld_vec_22[2] = dep_chan_vld_8_22;
    assign in_chan_dep_data_vec_22[74 : 50] = dep_chan_data_8_22;
    assign token_in_vec_22[2] = token_8_22;
    assign in_chan_dep_vld_vec_22[3] = dep_chan_vld_11_22;
    assign in_chan_dep_data_vec_22[99 : 75] = dep_chan_data_11_22;
    assign token_in_vec_22[3] = token_11_22;
    assign in_chan_dep_vld_vec_22[4] = dep_chan_vld_14_22;
    assign in_chan_dep_data_vec_22[124 : 100] = dep_chan_data_14_22;
    assign token_in_vec_22[4] = token_14_22;
    assign in_chan_dep_vld_vec_22[5] = dep_chan_vld_17_22;
    assign in_chan_dep_data_vec_22[149 : 125] = dep_chan_data_17_22;
    assign token_in_vec_22[5] = token_17_22;
    assign in_chan_dep_vld_vec_22[6] = dep_chan_vld_20_22;
    assign in_chan_dep_data_vec_22[174 : 150] = dep_chan_data_20_22;
    assign token_in_vec_22[6] = token_20_22;
    assign in_chan_dep_vld_vec_22[7] = dep_chan_vld_21_22;
    assign in_chan_dep_data_vec_22[199 : 175] = dep_chan_data_21_22;
    assign token_in_vec_22[7] = token_21_22;
    assign in_chan_dep_vld_vec_22[8] = dep_chan_vld_23_22;
    assign in_chan_dep_data_vec_22[224 : 200] = dep_chan_data_23_22;
    assign token_in_vec_22[8] = token_23_22;
    assign in_chan_dep_vld_vec_22[9] = dep_chan_vld_24_22;
    assign in_chan_dep_data_vec_22[249 : 225] = dep_chan_data_24_22;
    assign token_in_vec_22[9] = token_24_22;
    assign dep_chan_vld_22_0 = out_chan_dep_vld_vec_22[0];
    assign dep_chan_data_22_0 = out_chan_dep_data_22;
    assign token_22_0 = token_out_vec_22[0];
    assign dep_chan_vld_22_21 = out_chan_dep_vld_vec_22[1];
    assign dep_chan_data_22_21 = out_chan_dep_data_22;
    assign token_22_21 = token_out_vec_22[1];
    assign dep_chan_vld_22_23 = out_chan_dep_vld_vec_22[2];
    assign dep_chan_data_22_23 = out_chan_dep_data_22;
    assign token_22_23 = token_out_vec_22[2];
    assign dep_chan_vld_22_24 = out_chan_dep_vld_vec_22[3];
    assign dep_chan_data_22_24 = out_chan_dep_data_22;
    assign token_22_24 = token_out_vec_22[3];
    assign dep_chan_vld_22_3 = out_chan_dep_vld_vec_22[4];
    assign dep_chan_data_22_3 = out_chan_dep_data_22;
    assign token_22_3 = token_out_vec_22[4];
    assign dep_chan_vld_22_8 = out_chan_dep_vld_vec_22[5];
    assign dep_chan_data_22_8 = out_chan_dep_data_22;
    assign token_22_8 = token_out_vec_22[5];
    assign dep_chan_vld_22_11 = out_chan_dep_vld_vec_22[6];
    assign dep_chan_data_22_11 = out_chan_dep_data_22;
    assign token_22_11 = token_out_vec_22[6];
    assign dep_chan_vld_22_14 = out_chan_dep_vld_vec_22[7];
    assign dep_chan_data_22_14 = out_chan_dep_data_22;
    assign token_22_14 = token_out_vec_22[7];
    assign dep_chan_vld_22_17 = out_chan_dep_vld_vec_22[8];
    assign dep_chan_data_22_17 = out_chan_dep_data_22;
    assign token_22_17 = token_out_vec_22[8];
    assign dep_chan_vld_22_20 = out_chan_dep_vld_vec_22[9];
    assign dep_chan_data_22_20 = out_chan_dep_data_22;
    assign token_22_20 = token_out_vec_22[9];

    // Process: tie_off_udp_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 23, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_23 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_23),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_23),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_23),
        .token_in_vec(token_in_vec_23),
        .dl_detect_in(dl_detect_out),
        .origin(origin[23]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_23),
        .out_chan_dep_data(out_chan_dep_data_23),
        .token_out_vec(token_out_vec_23),
        .dl_detect_out(dl_in_vec[23]));

    assign proc_23_data_FIFO_blk[0] = 1'b0;
    assign proc_23_data_PIPO_blk[0] = 1'b0;
    assign proc_23_start_FIFO_blk[0] = 1'b0;
    assign proc_23_TLF_FIFO_blk[0] = 1'b0;
    assign proc_23_input_sync_blk[0] = 1'b0 | (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready);
    assign proc_23_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_23[0] = dl_detect_out ? proc_dep_vld_vec_23_reg[0] : (proc_23_data_FIFO_blk[0] | proc_23_data_PIPO_blk[0] | proc_23_start_FIFO_blk[0] | proc_23_TLF_FIFO_blk[0] | proc_23_input_sync_blk[0] | proc_23_output_sync_blk[0]);
    assign proc_23_data_FIFO_blk[1] = 1'b0;
    assign proc_23_data_PIPO_blk[1] = 1'b0;
    assign proc_23_start_FIFO_blk[1] = 1'b0;
    assign proc_23_TLF_FIFO_blk[1] = 1'b0;
    assign proc_23_input_sync_blk[1] = 1'b0 | (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready);
    assign proc_23_output_sync_blk[1] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_23[1] = dl_detect_out ? proc_dep_vld_vec_23_reg[1] : (proc_23_data_FIFO_blk[1] | proc_23_data_PIPO_blk[1] | proc_23_start_FIFO_blk[1] | proc_23_TLF_FIFO_blk[1] | proc_23_input_sync_blk[1] | proc_23_output_sync_blk[1]);
    assign proc_23_data_FIFO_blk[2] = 1'b0;
    assign proc_23_data_PIPO_blk[2] = 1'b0;
    assign proc_23_start_FIFO_blk[2] = 1'b0;
    assign proc_23_TLF_FIFO_blk[2] = 1'b0;
    assign proc_23_input_sync_blk[2] = 1'b0 | (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready);
    assign proc_23_output_sync_blk[2] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_23[2] = dl_detect_out ? proc_dep_vld_vec_23_reg[2] : (proc_23_data_FIFO_blk[2] | proc_23_data_PIPO_blk[2] | proc_23_start_FIFO_blk[2] | proc_23_TLF_FIFO_blk[2] | proc_23_input_sync_blk[2] | proc_23_output_sync_blk[2]);
    assign proc_23_data_FIFO_blk[3] = 1'b0;
    assign proc_23_data_PIPO_blk[3] = 1'b0;
    assign proc_23_start_FIFO_blk[3] = 1'b0;
    assign proc_23_TLF_FIFO_blk[3] = 1'b0;
    assign proc_23_input_sync_blk[3] = 1'b0 | (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready);
    assign proc_23_output_sync_blk[3] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done);
    assign proc_dep_vld_vec_23[3] = dl_detect_out ? proc_dep_vld_vec_23_reg[3] : (proc_23_data_FIFO_blk[3] | proc_23_data_PIPO_blk[3] | proc_23_start_FIFO_blk[3] | proc_23_TLF_FIFO_blk[3] | proc_23_input_sync_blk[3] | proc_23_output_sync_blk[3]);
    assign proc_23_data_FIFO_blk[4] = 1'b0;
    assign proc_23_data_PIPO_blk[4] = 1'b0;
    assign proc_23_start_FIFO_blk[4] = 1'b0;
    assign proc_23_TLF_FIFO_blk[4] = 1'b0;
    assign proc_23_input_sync_blk[4] = 1'b0;
    assign proc_23_output_sync_blk[4] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_23[4] = dl_detect_out ? proc_dep_vld_vec_23_reg[4] : (proc_23_data_FIFO_blk[4] | proc_23_data_PIPO_blk[4] | proc_23_start_FIFO_blk[4] | proc_23_TLF_FIFO_blk[4] | proc_23_input_sync_blk[4] | proc_23_output_sync_blk[4]);
    assign proc_23_data_FIFO_blk[5] = 1'b0;
    assign proc_23_data_PIPO_blk[5] = 1'b0;
    assign proc_23_start_FIFO_blk[5] = 1'b0;
    assign proc_23_TLF_FIFO_blk[5] = 1'b0;
    assign proc_23_input_sync_blk[5] = 1'b0;
    assign proc_23_output_sync_blk[5] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_23[5] = dl_detect_out ? proc_dep_vld_vec_23_reg[5] : (proc_23_data_FIFO_blk[5] | proc_23_data_PIPO_blk[5] | proc_23_start_FIFO_blk[5] | proc_23_TLF_FIFO_blk[5] | proc_23_input_sync_blk[5] | proc_23_output_sync_blk[5]);
    assign proc_23_data_FIFO_blk[6] = 1'b0;
    assign proc_23_data_PIPO_blk[6] = 1'b0;
    assign proc_23_start_FIFO_blk[6] = 1'b0;
    assign proc_23_TLF_FIFO_blk[6] = 1'b0;
    assign proc_23_input_sync_blk[6] = 1'b0;
    assign proc_23_output_sync_blk[6] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_23[6] = dl_detect_out ? proc_dep_vld_vec_23_reg[6] : (proc_23_data_FIFO_blk[6] | proc_23_data_PIPO_blk[6] | proc_23_start_FIFO_blk[6] | proc_23_TLF_FIFO_blk[6] | proc_23_input_sync_blk[6] | proc_23_output_sync_blk[6]);
    assign proc_23_data_FIFO_blk[7] = 1'b0;
    assign proc_23_data_PIPO_blk[7] = 1'b0;
    assign proc_23_start_FIFO_blk[7] = 1'b0;
    assign proc_23_TLF_FIFO_blk[7] = 1'b0;
    assign proc_23_input_sync_blk[7] = 1'b0;
    assign proc_23_output_sync_blk[7] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_23[7] = dl_detect_out ? proc_dep_vld_vec_23_reg[7] : (proc_23_data_FIFO_blk[7] | proc_23_data_PIPO_blk[7] | proc_23_start_FIFO_blk[7] | proc_23_TLF_FIFO_blk[7] | proc_23_input_sync_blk[7] | proc_23_output_sync_blk[7]);
    assign proc_23_data_FIFO_blk[8] = 1'b0;
    assign proc_23_data_PIPO_blk[8] = 1'b0;
    assign proc_23_start_FIFO_blk[8] = 1'b0;
    assign proc_23_TLF_FIFO_blk[8] = 1'b0;
    assign proc_23_input_sync_blk[8] = 1'b0;
    assign proc_23_output_sync_blk[8] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_23[8] = dl_detect_out ? proc_dep_vld_vec_23_reg[8] : (proc_23_data_FIFO_blk[8] | proc_23_data_PIPO_blk[8] | proc_23_start_FIFO_blk[8] | proc_23_TLF_FIFO_blk[8] | proc_23_input_sync_blk[8] | proc_23_output_sync_blk[8]);
    assign proc_23_data_FIFO_blk[9] = 1'b0;
    assign proc_23_data_PIPO_blk[9] = 1'b0;
    assign proc_23_start_FIFO_blk[9] = 1'b0;
    assign proc_23_TLF_FIFO_blk[9] = 1'b0;
    assign proc_23_input_sync_blk[9] = 1'b0;
    assign proc_23_output_sync_blk[9] = 1'b0 | (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_23[9] = dl_detect_out ? proc_dep_vld_vec_23_reg[9] : (proc_23_data_FIFO_blk[9] | proc_23_data_PIPO_blk[9] | proc_23_start_FIFO_blk[9] | proc_23_TLF_FIFO_blk[9] | proc_23_input_sync_blk[9] | proc_23_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_23_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_23_reg <= proc_dep_vld_vec_23;
        end
    end
    assign in_chan_dep_vld_vec_23[0] = dep_chan_vld_0_23;
    assign in_chan_dep_data_vec_23[24 : 0] = dep_chan_data_0_23;
    assign token_in_vec_23[0] = token_0_23;
    assign in_chan_dep_vld_vec_23[1] = dep_chan_vld_3_23;
    assign in_chan_dep_data_vec_23[49 : 25] = dep_chan_data_3_23;
    assign token_in_vec_23[1] = token_3_23;
    assign in_chan_dep_vld_vec_23[2] = dep_chan_vld_8_23;
    assign in_chan_dep_data_vec_23[74 : 50] = dep_chan_data_8_23;
    assign token_in_vec_23[2] = token_8_23;
    assign in_chan_dep_vld_vec_23[3] = dep_chan_vld_11_23;
    assign in_chan_dep_data_vec_23[99 : 75] = dep_chan_data_11_23;
    assign token_in_vec_23[3] = token_11_23;
    assign in_chan_dep_vld_vec_23[4] = dep_chan_vld_14_23;
    assign in_chan_dep_data_vec_23[124 : 100] = dep_chan_data_14_23;
    assign token_in_vec_23[4] = token_14_23;
    assign in_chan_dep_vld_vec_23[5] = dep_chan_vld_17_23;
    assign in_chan_dep_data_vec_23[149 : 125] = dep_chan_data_17_23;
    assign token_in_vec_23[5] = token_17_23;
    assign in_chan_dep_vld_vec_23[6] = dep_chan_vld_20_23;
    assign in_chan_dep_data_vec_23[174 : 150] = dep_chan_data_20_23;
    assign token_in_vec_23[6] = token_20_23;
    assign in_chan_dep_vld_vec_23[7] = dep_chan_vld_21_23;
    assign in_chan_dep_data_vec_23[199 : 175] = dep_chan_data_21_23;
    assign token_in_vec_23[7] = token_21_23;
    assign in_chan_dep_vld_vec_23[8] = dep_chan_vld_22_23;
    assign in_chan_dep_data_vec_23[224 : 200] = dep_chan_data_22_23;
    assign token_in_vec_23[8] = token_22_23;
    assign in_chan_dep_vld_vec_23[9] = dep_chan_vld_24_23;
    assign in_chan_dep_data_vec_23[249 : 225] = dep_chan_data_24_23;
    assign token_in_vec_23[9] = token_24_23;
    assign dep_chan_vld_23_0 = out_chan_dep_vld_vec_23[0];
    assign dep_chan_data_23_0 = out_chan_dep_data_23;
    assign token_23_0 = token_out_vec_23[0];
    assign dep_chan_vld_23_21 = out_chan_dep_vld_vec_23[1];
    assign dep_chan_data_23_21 = out_chan_dep_data_23;
    assign token_23_21 = token_out_vec_23[1];
    assign dep_chan_vld_23_22 = out_chan_dep_vld_vec_23[2];
    assign dep_chan_data_23_22 = out_chan_dep_data_23;
    assign token_23_22 = token_out_vec_23[2];
    assign dep_chan_vld_23_24 = out_chan_dep_vld_vec_23[3];
    assign dep_chan_data_23_24 = out_chan_dep_data_23;
    assign token_23_24 = token_out_vec_23[3];
    assign dep_chan_vld_23_3 = out_chan_dep_vld_vec_23[4];
    assign dep_chan_data_23_3 = out_chan_dep_data_23;
    assign token_23_3 = token_out_vec_23[4];
    assign dep_chan_vld_23_8 = out_chan_dep_vld_vec_23[5];
    assign dep_chan_data_23_8 = out_chan_dep_data_23;
    assign token_23_8 = token_out_vec_23[5];
    assign dep_chan_vld_23_11 = out_chan_dep_vld_vec_23[6];
    assign dep_chan_data_23_11 = out_chan_dep_data_23;
    assign token_23_11 = token_out_vec_23[6];
    assign dep_chan_vld_23_14 = out_chan_dep_vld_vec_23[7];
    assign dep_chan_data_23_14 = out_chan_dep_data_23;
    assign token_23_14 = token_out_vec_23[7];
    assign dep_chan_vld_23_17 = out_chan_dep_vld_vec_23[8];
    assign dep_chan_data_23_17 = out_chan_dep_data_23;
    assign token_23_17 = token_out_vec_23[8];
    assign dep_chan_vld_23_20 = out_chan_dep_vld_vec_23[9];
    assign dep_chan_data_23_20 = out_chan_dep_data_23;
    assign token_23_20 = token_out_vec_23[9];

    // Process: tie_off_tcp_close_con_U0
    hls_recv_krnl_hls_deadlock_detect_unit #(25, 24, 10, 10) hls_recv_krnl_hls_deadlock_detect_unit_24 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_24),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_24),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_24),
        .token_in_vec(token_in_vec_24),
        .dl_detect_in(dl_detect_out),
        .origin(origin[24]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_24),
        .out_chan_dep_data(out_chan_dep_data_24),
        .token_out_vec(token_out_vec_24),
        .dl_detect_out(dl_in_vec[24]));

    assign proc_24_data_FIFO_blk[0] = 1'b0;
    assign proc_24_data_PIPO_blk[0] = 1'b0;
    assign proc_24_start_FIFO_blk[0] = 1'b0;
    assign proc_24_TLF_FIFO_blk[0] = 1'b0;
    assign proc_24_input_sync_blk[0] = 1'b0 | (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready);
    assign proc_24_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_24[0] = dl_detect_out ? proc_dep_vld_vec_24_reg[0] : (proc_24_data_FIFO_blk[0] | proc_24_data_PIPO_blk[0] | proc_24_start_FIFO_blk[0] | proc_24_TLF_FIFO_blk[0] | proc_24_input_sync_blk[0] | proc_24_output_sync_blk[0]);
    assign proc_24_data_FIFO_blk[1] = 1'b0;
    assign proc_24_data_PIPO_blk[1] = 1'b0;
    assign proc_24_start_FIFO_blk[1] = 1'b0;
    assign proc_24_TLF_FIFO_blk[1] = 1'b0;
    assign proc_24_input_sync_blk[1] = 1'b0 | (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready);
    assign proc_24_output_sync_blk[1] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done);
    assign proc_dep_vld_vec_24[1] = dl_detect_out ? proc_dep_vld_vec_24_reg[1] : (proc_24_data_FIFO_blk[1] | proc_24_data_PIPO_blk[1] | proc_24_start_FIFO_blk[1] | proc_24_TLF_FIFO_blk[1] | proc_24_input_sync_blk[1] | proc_24_output_sync_blk[1]);
    assign proc_24_data_FIFO_blk[2] = 1'b0;
    assign proc_24_data_PIPO_blk[2] = 1'b0;
    assign proc_24_start_FIFO_blk[2] = 1'b0;
    assign proc_24_TLF_FIFO_blk[2] = 1'b0;
    assign proc_24_input_sync_blk[2] = 1'b0 | (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready);
    assign proc_24_output_sync_blk[2] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done);
    assign proc_dep_vld_vec_24[2] = dl_detect_out ? proc_dep_vld_vec_24_reg[2] : (proc_24_data_FIFO_blk[2] | proc_24_data_PIPO_blk[2] | proc_24_start_FIFO_blk[2] | proc_24_TLF_FIFO_blk[2] | proc_24_input_sync_blk[2] | proc_24_output_sync_blk[2]);
    assign proc_24_data_FIFO_blk[3] = 1'b0;
    assign proc_24_data_PIPO_blk[3] = 1'b0;
    assign proc_24_start_FIFO_blk[3] = 1'b0;
    assign proc_24_TLF_FIFO_blk[3] = 1'b0;
    assign proc_24_input_sync_blk[3] = 1'b0 | (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready);
    assign proc_24_output_sync_blk[3] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~tie_off_udp_U0.ap_done);
    assign proc_dep_vld_vec_24[3] = dl_detect_out ? proc_dep_vld_vec_24_reg[3] : (proc_24_data_FIFO_blk[3] | proc_24_data_PIPO_blk[3] | proc_24_start_FIFO_blk[3] | proc_24_TLF_FIFO_blk[3] | proc_24_input_sync_blk[3] | proc_24_output_sync_blk[3]);
    assign proc_24_data_FIFO_blk[4] = 1'b0;
    assign proc_24_data_PIPO_blk[4] = 1'b0;
    assign proc_24_start_FIFO_blk[4] = 1'b0;
    assign proc_24_TLF_FIFO_blk[4] = 1'b0;
    assign proc_24_input_sync_blk[4] = 1'b0;
    assign proc_24_output_sync_blk[4] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~listenPorts_U0.ap_done);
    assign proc_dep_vld_vec_24[4] = dl_detect_out ? proc_dep_vld_vec_24_reg[4] : (proc_24_data_FIFO_blk[4] | proc_24_data_PIPO_blk[4] | proc_24_start_FIFO_blk[4] | proc_24_TLF_FIFO_blk[4] | proc_24_input_sync_blk[4] | proc_24_output_sync_blk[4]);
    assign proc_24_data_FIFO_blk[5] = 1'b0;
    assign proc_24_data_PIPO_blk[5] = 1'b0;
    assign proc_24_start_FIFO_blk[5] = 1'b0;
    assign proc_24_TLF_FIFO_blk[5] = 1'b0;
    assign proc_24_input_sync_blk[5] = 1'b0;
    assign proc_24_output_sync_blk[5] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~recvData_U0.ap_done);
    assign proc_dep_vld_vec_24[5] = dl_detect_out ? proc_dep_vld_vec_24_reg[5] : (proc_24_data_FIFO_blk[5] | proc_24_data_PIPO_blk[5] | proc_24_start_FIFO_blk[5] | proc_24_TLF_FIFO_blk[5] | proc_24_input_sync_blk[5] | proc_24_output_sync_blk[5]);
    assign proc_24_data_FIFO_blk[6] = 1'b0;
    assign proc_24_data_PIPO_blk[6] = 1'b0;
    assign proc_24_start_FIFO_blk[6] = 1'b0;
    assign proc_24_TLF_FIFO_blk[6] = 1'b0;
    assign proc_24_input_sync_blk[6] = 1'b0;
    assign proc_24_output_sync_blk[6] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~backgroundclock_U0.ap_done);
    assign proc_dep_vld_vec_24[6] = dl_detect_out ? proc_dep_vld_vec_24_reg[6] : (proc_24_data_FIFO_blk[6] | proc_24_data_PIPO_blk[6] | proc_24_start_FIFO_blk[6] | proc_24_TLF_FIFO_blk[6] | proc_24_input_sync_blk[6] | proc_24_output_sync_blk[6]);
    assign proc_24_data_FIFO_blk[7] = 1'b0;
    assign proc_24_data_PIPO_blk[7] = 1'b0;
    assign proc_24_start_FIFO_blk[7] = 1'b0;
    assign proc_24_TLF_FIFO_blk[7] = 1'b0;
    assign proc_24_input_sync_blk[7] = 1'b0;
    assign proc_24_output_sync_blk[7] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~consumetrans_U0.ap_done);
    assign proc_dep_vld_vec_24[7] = dl_detect_out ? proc_dep_vld_vec_24_reg[7] : (proc_24_data_FIFO_blk[7] | proc_24_data_PIPO_blk[7] | proc_24_start_FIFO_blk[7] | proc_24_TLF_FIFO_blk[7] | proc_24_input_sync_blk[7] | proc_24_output_sync_blk[7]);
    assign proc_24_data_FIFO_blk[8] = 1'b0;
    assign proc_24_data_PIPO_blk[8] = 1'b0;
    assign proc_24_start_FIFO_blk[8] = 1'b0;
    assign proc_24_TLF_FIFO_blk[8] = 1'b0;
    assign proc_24_input_sync_blk[8] = 1'b0;
    assign proc_24_output_sync_blk[8] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~consumesha_U0.ap_done);
    assign proc_dep_vld_vec_24[8] = dl_detect_out ? proc_dep_vld_vec_24_reg[8] : (proc_24_data_FIFO_blk[8] | proc_24_data_PIPO_blk[8] | proc_24_start_FIFO_blk[8] | proc_24_TLF_FIFO_blk[8] | proc_24_input_sync_blk[8] | proc_24_output_sync_blk[8]);
    assign proc_24_data_FIFO_blk[9] = 1'b0;
    assign proc_24_data_PIPO_blk[9] = 1'b0;
    assign proc_24_start_FIFO_blk[9] = 1'b0;
    assign proc_24_TLF_FIFO_blk[9] = 1'b0;
    assign proc_24_input_sync_blk[9] = 1'b0;
    assign proc_24_output_sync_blk[9] = 1'b0 | (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~consumeaes_U0.ap_done);
    assign proc_dep_vld_vec_24[9] = dl_detect_out ? proc_dep_vld_vec_24_reg[9] : (proc_24_data_FIFO_blk[9] | proc_24_data_PIPO_blk[9] | proc_24_start_FIFO_blk[9] | proc_24_TLF_FIFO_blk[9] | proc_24_input_sync_blk[9] | proc_24_output_sync_blk[9]);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_24_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_24_reg <= proc_dep_vld_vec_24;
        end
    end
    assign in_chan_dep_vld_vec_24[0] = dep_chan_vld_0_24;
    assign in_chan_dep_data_vec_24[24 : 0] = dep_chan_data_0_24;
    assign token_in_vec_24[0] = token_0_24;
    assign in_chan_dep_vld_vec_24[1] = dep_chan_vld_3_24;
    assign in_chan_dep_data_vec_24[49 : 25] = dep_chan_data_3_24;
    assign token_in_vec_24[1] = token_3_24;
    assign in_chan_dep_vld_vec_24[2] = dep_chan_vld_8_24;
    assign in_chan_dep_data_vec_24[74 : 50] = dep_chan_data_8_24;
    assign token_in_vec_24[2] = token_8_24;
    assign in_chan_dep_vld_vec_24[3] = dep_chan_vld_11_24;
    assign in_chan_dep_data_vec_24[99 : 75] = dep_chan_data_11_24;
    assign token_in_vec_24[3] = token_11_24;
    assign in_chan_dep_vld_vec_24[4] = dep_chan_vld_14_24;
    assign in_chan_dep_data_vec_24[124 : 100] = dep_chan_data_14_24;
    assign token_in_vec_24[4] = token_14_24;
    assign in_chan_dep_vld_vec_24[5] = dep_chan_vld_17_24;
    assign in_chan_dep_data_vec_24[149 : 125] = dep_chan_data_17_24;
    assign token_in_vec_24[5] = token_17_24;
    assign in_chan_dep_vld_vec_24[6] = dep_chan_vld_20_24;
    assign in_chan_dep_data_vec_24[174 : 150] = dep_chan_data_20_24;
    assign token_in_vec_24[6] = token_20_24;
    assign in_chan_dep_vld_vec_24[7] = dep_chan_vld_21_24;
    assign in_chan_dep_data_vec_24[199 : 175] = dep_chan_data_21_24;
    assign token_in_vec_24[7] = token_21_24;
    assign in_chan_dep_vld_vec_24[8] = dep_chan_vld_22_24;
    assign in_chan_dep_data_vec_24[224 : 200] = dep_chan_data_22_24;
    assign token_in_vec_24[8] = token_22_24;
    assign in_chan_dep_vld_vec_24[9] = dep_chan_vld_23_24;
    assign in_chan_dep_data_vec_24[249 : 225] = dep_chan_data_23_24;
    assign token_in_vec_24[9] = token_23_24;
    assign dep_chan_vld_24_0 = out_chan_dep_vld_vec_24[0];
    assign dep_chan_data_24_0 = out_chan_dep_data_24;
    assign token_24_0 = token_out_vec_24[0];
    assign dep_chan_vld_24_21 = out_chan_dep_vld_vec_24[1];
    assign dep_chan_data_24_21 = out_chan_dep_data_24;
    assign token_24_21 = token_out_vec_24[1];
    assign dep_chan_vld_24_22 = out_chan_dep_vld_vec_24[2];
    assign dep_chan_data_24_22 = out_chan_dep_data_24;
    assign token_24_22 = token_out_vec_24[2];
    assign dep_chan_vld_24_23 = out_chan_dep_vld_vec_24[3];
    assign dep_chan_data_24_23 = out_chan_dep_data_24;
    assign token_24_23 = token_out_vec_24[3];
    assign dep_chan_vld_24_3 = out_chan_dep_vld_vec_24[4];
    assign dep_chan_data_24_3 = out_chan_dep_data_24;
    assign token_24_3 = token_out_vec_24[4];
    assign dep_chan_vld_24_8 = out_chan_dep_vld_vec_24[5];
    assign dep_chan_data_24_8 = out_chan_dep_data_24;
    assign token_24_8 = token_out_vec_24[5];
    assign dep_chan_vld_24_11 = out_chan_dep_vld_vec_24[6];
    assign dep_chan_data_24_11 = out_chan_dep_data_24;
    assign token_24_11 = token_out_vec_24[6];
    assign dep_chan_vld_24_14 = out_chan_dep_vld_vec_24[7];
    assign dep_chan_data_24_14 = out_chan_dep_data_24;
    assign token_24_14 = token_out_vec_24[7];
    assign dep_chan_vld_24_17 = out_chan_dep_vld_vec_24[8];
    assign dep_chan_data_24_17 = out_chan_dep_data_24;
    assign token_24_17 = token_out_vec_24[8];
    assign dep_chan_vld_24_20 = out_chan_dep_vld_vec_24[9];
    assign dep_chan_data_24_20 = out_chan_dep_data_24;
    assign token_24_20 = token_out_vec_24[9];


`include "hls_recv_krnl_hls_deadlock_report_unit.vh"
