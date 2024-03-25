   
    parameter PROC_NUM = 25;
    parameter ST_IDLE = 2'b0;
    parameter ST_DL_DETECTED = 2'b1;
    parameter ST_DL_REPORT = 2'b10;
   

    reg find_df_deadlock = 0;
    reg [1:0] CS_fsm;
    reg [1:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    integer i;
    integer fp;

    // FSM State machine
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end
    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg) begin
        NS_fsm = CS_fsm;
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if (dl_detect_reg != dl_done_reg) begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = |dl_detect_reg;

    // dl_done_reg record the cycles has been reported
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    always @ (CS_fsm or dl_detect_reg or dl_done_reg) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_detect_reg[i] & ~dl_done_reg[i] & ~(|origin)) begin
                    origin = 'b1 << i;
                end
            end
        end
        else begin
            origin = 'b0;
        end
    end
    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [704:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0";
                end
                1 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0";
                end
                2 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0";
                end
                3 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.listenPorts_U0";
                end
                4 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0";
                end
                5 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_Block_split2_proc_U0";
                end
                6 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listen_port_handler_U0";
                end
                7 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.listenPorts_U0.port_status_handler_U0";
                end
                8 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.recvData_U0";
                end
                9 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0";
                end
                10 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0";
                end
                11 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.backgroundclock_U0";
                end
                12 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.partition_U0";
                end
                13 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0";
                end
                14 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.consumetrans_U0";
                end
                15 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.prepare_sha_U0";
                end
                16 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.mysha_U0";
                end
                17 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.consumesha_U0";
                end
                18 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.prepare_aes_U0";
                end
                19 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.myaes_U0";
                end
                20 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.consumeaes_U0";
                end
                21 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0";
                end
                22 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0";
                end
                23 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0";
                end
                24 : begin
                    proc_path = "hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [704:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", record_time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [704:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [616:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin
                    case(index2)
                    1: begin
                        if (~hls_recv_krnl_entry3_U0.useConn_out_blk_n) begin
                            if (~useConn_c1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c1_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~useConn_c1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c1_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry3_U0.basePort_out_blk_n) begin
                            if (~basePort_c2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c2_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~basePort_c2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c2_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry3_U0.expectedRxByteCnt_out_blk_n) begin
                            if (~expectedRxByteCnt_c3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry3_U0.out_time_out_blk_n) begin
                            if (~out_time_c4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c4_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~out_time_c4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c4_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_hls_recv_krnl_entry45_U0_U.if_full_n & hls_recv_krnl_entry3_U0.ap_start & ~hls_recv_krnl_entry3_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~start_for_hls_recv_krnl_entry45_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_hls_recv_krnl_entry45_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0',");
                        end
                    end
                    21: begin
                        if (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_sync_hls_recv_krnl_entry3_U0_ap_ready & hls_recv_krnl_entry3_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    endcase
                end
                1 : begin
                    case(index2)
                    0: begin
                        if (~hls_recv_krnl_entry45_U0.useConn_blk_n) begin
                            if (~useConn_c1_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c1_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~useConn_c1_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c1_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c1_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry45_U0.basePort_blk_n) begin
                            if (~basePort_c2_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c2_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~basePort_c2_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c2_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c2_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry45_U0.expectedRxByteCnt_blk_n) begin
                            if (~expectedRxByteCnt_c3_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c3_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c3_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry45_U0.out_time_blk_n) begin
                            if (~out_time_c4_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c4_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c4_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~out_time_c4_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c4_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c4_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_hls_recv_krnl_entry45_U0_U.if_empty_n & hls_recv_krnl_entry45_U0.ap_idle & ~start_for_hls_recv_krnl_entry45_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_hls_recv_krnl_entry45_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0',");
                        end
                    end
                    4: begin
                        if (~hls_recv_krnl_entry45_U0.useConn_out_blk_n) begin
                            if (~useConn_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~useConn_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~hls_recv_krnl_entry45_U0.basePort_out_blk_n) begin
                            if (~basePort_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~basePort_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    2: begin
                        if (~hls_recv_krnl_entry45_U0.expectedRxByteCnt_out_blk_n) begin
                            if (~expectedRxByteCnt_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_Block_split11_proc_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_Block_split11_proc_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_Block_split11_proc_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0',");
                        end
                    end
                    9: begin
                        if (~hls_recv_krnl_entry45_U0.expectedRxByteCnt_out1_blk_n) begin
                            if (~expectedRxByteCnt_c44_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c44_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    11: begin
                        if (~hls_recv_krnl_entry45_U0.out_time_out_blk_n) begin
                            if (~out_time_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~out_time_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_backgroundclock_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_backgroundclock_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_backgroundclock_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0',");
                        end
                    end
                    3: begin
                        if (~start_for_listenPorts_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_listenPorts_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_listenPorts_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0',");
                        end
                    end
                    8: begin
                        if (~start_for_recvData_U0_U.if_full_n & hls_recv_krnl_entry45_U0.ap_start & ~hls_recv_krnl_entry45_U0.real_start & (trans_in_cnt_1 == trans_out_cnt_1) & ~start_for_recvData_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_recvData_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0',");
                        end
                    end
                    endcase
                end
                2 : begin
                    case(index2)
                    1: begin
                        if (~Block_split11_proc_U0.expectedRxByteCnt_blk_n) begin
                            if (~expectedRxByteCnt_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_Block_split11_proc_U0_U.if_empty_n & Block_split11_proc_U0.ap_idle & ~start_for_Block_split11_proc_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_Block_split11_proc_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0',");
                        end
                    end
                    13: begin
                        if (~Block_split11_proc_U0.ComputeWordCnt_out_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    12: begin
                        if (~start_for_partition_U0_U.if_full_n & Block_split11_proc_U0.ap_start & ~Block_split11_proc_U0.real_start & (trans_in_cnt_2 == trans_out_cnt_2) & ~start_for_partition_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_partition_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0',");
                        end
                    end
                    endcase
                end
                3 : begin
                    case(index2)
                    1: begin
                        if (~listenPorts_U0.listenPorts_entry37_U0.basePort_blk_n) begin
                            if (~basePort_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~basePort_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~listenPorts_U0.listenPorts_entry37_U0.useConn_blk_n) begin
                            if (~useConn_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~useConn_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_listenPorts_U0_U.if_empty_n & listenPorts_U0.ap_idle & ~start_for_listenPorts_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_listenPorts_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0',");
                        end
                    end
                    8: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    21: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_udp_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_done_reg_1 & listenPorts_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    endcase
                end
                4 : begin
                    case(index2)
                    1: begin
                        if (~listenPorts_U0.listenPorts_entry37_U0.basePort_blk_n) begin
                            if (~basePort_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~basePort_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.basePort_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.basePort_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~listenPorts_U0.listenPorts_entry37_U0.useConn_blk_n) begin
                            if (~useConn_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~useConn_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.useConn_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.useConn_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    5: begin
                        if (~listenPorts_U0.listenPorts_entry37_U0.basePort_out_blk_n) begin
                            if (~listenPorts_U0.basePort_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_Block_split2_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.basePort_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_Block_split2_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (~listenPorts_U0.listenPorts_entry37_U0.useConn_out_blk_n) begin
                            if (~listenPorts_U0.useConn_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listen_port_handler_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.useConn_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listen_port_handler_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin
                        if (~listenPorts_U0.listenPorts_entry37_U0.useConn_out1_blk_n) begin
                            if (~listenPorts_U0.useConn_c8_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.port_status_handler_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.useConn_c8_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.port_status_handler_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                5 : begin
                    case(index2)
                    4: begin
                        if (~listenPorts_U0.listenPorts_Block_split2_proc_U0.basePort_blk_n) begin
                            if (~listenPorts_U0.basePort_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.basePort_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                6 : begin
                    case(index2)
                    5: begin
                        if (~listenPorts_U0.basePort_cast_loc_i_channel_U.if_empty_n & listenPorts_U0.listen_port_handler_U0.ap_idle & ~listenPorts_U0.basePort_cast_loc_i_channel_U.if_write) begin
                            if (~listenPorts_U0.basePort_cast_loc_i_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_cast_loc_i_channel_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_Block_split2_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_cast_loc_i_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.basePort_cast_loc_i_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_cast_loc_i_channel_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_Block_split2_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.basePort_cast_loc_i_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    4: begin
                        if (~listenPorts_U0.listen_port_handler_U0.useConn_blk_n) begin
                            if (~listenPorts_U0.useConn_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.useConn_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    7: begin
                        if (ap_done_reg_0 & listenPorts_U0.listen_port_handler_U0.ap_done & ~listenPorts_U0.port_status_handler_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.port_status_handler_U0'");
                        end
                    end
                    endcase
                end
                7 : begin
                    case(index2)
                    4: begin
                        if (~listenPorts_U0.port_status_handler_U0.useConn_blk_n) begin
                            if (~listenPorts_U0.useConn_c8_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~listenPorts_U0.useConn_c8_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listenPorts_entry37_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.listenPorts_U0.useConn_c8_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    6: begin
                        if (ap_done_reg_11 & listenPorts_U0.port_status_handler_U0.ap_done & ~listenPorts_U0.listen_port_handler_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0.listen_port_handler_U0'");
                        end
                    end
                    endcase
                end
                8 : begin
                    case(index2)
                    1: begin
                        if (~recvData_U0.recvData_handshake_U0.expRxBytePerSession_blk_n) begin
                            if (~expectedRxByteCnt_c44_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c44_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_recvData_U0_U.if_empty_n & recvData_U0.ap_idle & ~start_for_recvData_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_recvData_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0',");
                        end
                    end
                    13: begin
                        if (~recvData_U0.recvData_consumeData_U0.s_data_net_out_blk_n) begin
                            if (~s_data_net_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_net_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    3: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    21: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_udp_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_done_reg_2 & recvData_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    endcase
                end
                9 : begin
                    case(index2)
                    10: begin
                        if (~recvData_U0.recvData_handshake_U0.nextRxPacketLength3_blk_n) begin
                            if (~recvData_U0.nextRxPacketLength_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~recvData_U0.nextRxPacketLength_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~recvData_U0.recvData_handshake_U0.expRxBytePerSession_out_blk_n) begin
                            if (~recvData_U0.expRxBytePerSession_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~recvData_U0.expRxBytePerSession_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (ap_done_reg_12 & recvData_U0.recvData_handshake_U0.ap_done & ~recvData_U0.recvData_consumeData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                        end
                    end
                    1: begin
                        if (~recvData_U0.recvData_handshake_U0.expRxBytePerSession_blk_n) begin
                            if (~expectedRxByteCnt_c44_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~expectedRxByteCnt_c44_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.expectedRxByteCnt_c44_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                10 : begin
                    case(index2)
                    9: begin
                        if (~recvData_U0.recvData_consumeData_U0.nextRxPacketLength3_blk_n) begin
                            if (~recvData_U0.nextRxPacketLength_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~recvData_U0.nextRxPacketLength_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.nextRxPacketLength_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~recvData_U0.recvData_consumeData_U0.expRxBytePerSession_blk_n) begin
                            if (~recvData_U0.expRxBytePerSession_c_i_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~recvData_U0.expRxBytePerSession_c_i_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.recvData_U0.expRxBytePerSession_c_i_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (ap_done_reg_13 & recvData_U0.recvData_consumeData_U0.ap_done & ~recvData_U0.recvData_handshake_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_handshake_U0'");
                        end
                    end
                    13: begin
                        if (~recvData_U0.recvData_consumeData_U0.s_data_net_out_blk_n) begin
                            if (~s_data_net_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_net_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                11 : begin
                    case(index2)
                    16: begin
                        if (~backgroundclock_U0.timesha_blk_n) begin
                            if (~timesha_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.timesha_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timesha_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~timesha_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.timesha_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timesha_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    19: begin
                        if (~backgroundclock_U0.timeaes_blk_n) begin
                            if (~timeaes_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.timeaes_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timeaes_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~timeaes_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.timeaes_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timeaes_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    1: begin
                        if (~backgroundclock_U0.out_time_blk_n) begin
                            if (~out_time_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~out_time_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.out_time_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.out_time_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_backgroundclock_U0_U.if_empty_n & backgroundclock_U0.ap_idle & ~start_for_backgroundclock_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_backgroundclock_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry45_U0',");
                        end
                    end
                    3: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    21: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_udp_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_done_reg_3 & backgroundclock_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    endcase
                end
                12 : begin
                    case(index2)
                    2: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.scalar_ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_partition_U0_U.if_empty_n & partition_U0.ap_idle & ~start_for_partition_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_partition_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0',");
                        end
                    end
                    14: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c45_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c45_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_out_blk_n) begin
                            if (~s_data_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_consumetrans_U0_U.if_full_n & partition_U0.ap_start & ~partition_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~start_for_consumetrans_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_consumetrans_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0',");
                        end
                    end
                    15: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out1_blk_n) begin
                            if (~ComputeWordCnt_loc_c46_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c46_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_cal_blk_n) begin
                            if (~s_data_cal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_cal_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_cal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_cal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_cal_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_cal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_prepare_sha_U0_U.if_full_n & partition_U0.ap_start & ~partition_U0.real_start & (trans_in_cnt_3 == trans_out_cnt_3) & ~start_for_prepare_sha_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_prepare_sha_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0',");
                        end
                    end
                    10: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_net_out_blk_n) begin
                            if (~s_data_net_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_net_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                13 : begin
                    case(index2)
                    2: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.scalar_ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U' written by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U' read by process 'hls_recv_krnl_hls_recv_krnl.Block_split11_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    14: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c45_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c45_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_out_blk_n) begin
                            if (~s_data_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    15: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.ComputeWordCnt_loc_out1_blk_n) begin
                            if (~ComputeWordCnt_loc_c46_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c46_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_cal_blk_n) begin
                            if (~s_data_cal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_cal_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_cal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_cal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_cal_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_cal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    10: begin
                        if (~partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0.s_data_net_out_blk_n) begin
                            if (~s_data_net_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_net_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_net_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.recvData_U0.recvData_consumeData_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_net_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                14 : begin
                    case(index2)
                    13: begin
                        if (~consumetrans_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c45_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c45_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c45_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~consumetrans_U0.s_data_out_blk_n) begin
                            if (~s_data_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    3: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    21: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_udp_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_done_reg_4 & consumetrans_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    12: begin
                        if (~start_for_consumetrans_U0_U.if_empty_n & consumetrans_U0.ap_idle & ~start_for_consumetrans_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_consumetrans_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0',");
                        end
                    end
                    endcase
                end
                15 : begin
                    case(index2)
                    13: begin
                        if (~prepare_sha_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c46_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c46_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c46_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_sha_U0.s_data_cal_blk_n) begin
                            if (~s_data_cal_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_cal_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_cal_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~s_data_cal_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.s_data_cal_U' read by process 'hls_recv_krnl_hls_recv_krnl.partition_U0.partition_Loop_VITIS_LOOP_71_1_proc2761_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.s_data_cal_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    16: begin
                        if (~prepare_sha_U0.ComputeWordCnt_loc_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c47_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c47_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_sha_U0.endMsgLenStrm_blk_n) begin
                            if (~endMsgLenStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endMsgLenStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_sha_U0.msgLenStrm_blk_n) begin
                            if (~msgLenStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.msgLenStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~msgLenStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.msgLenStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_sha_U0.msgStrm_blk_n) begin
                            if (~msgStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.msgStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~msgStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.msgStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_sha_U0.sha_in_blk_n) begin
                            if (~sha_in_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.sha_in_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_in_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~sha_in_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.sha_in_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_in_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_mysha_U0_U.if_full_n & prepare_sha_U0.ap_start & ~prepare_sha_U0.real_start & (trans_in_cnt_4 == trans_out_cnt_4) & ~start_for_mysha_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_mysha_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0',");
                        end
                    end
                    12: begin
                        if (~start_for_prepare_sha_U0_U.if_empty_n & prepare_sha_U0.ap_idle & ~start_for_prepare_sha_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_prepare_sha_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.partition_U0',");
                        end
                    end
                    endcase
                end
                16 : begin
                    case(index2)
                    11: begin
                        if (~mysha_U0.timesha_blk_n) begin
                            if (~timesha_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.timesha_U' written by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timesha_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~timesha_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.timesha_U' read by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timesha_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    15: begin
                        if (~mysha_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c47_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c47_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c47_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.sha_in_blk_n) begin
                            if (~sha_in_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.sha_in_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_in_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~sha_in_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.sha_in_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_in_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.grp_sha3Digest_32u_s_fu_120.endMsgLenStrm_blk_n) begin
                            if (~endMsgLenStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endMsgLenStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endMsgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.grp_sha3Digest_32u_s_fu_120.msgLenStrm_blk_n) begin
                            if (~msgLenStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.msgLenStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~msgLenStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.msgLenStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgLenStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.grp_sha3Digest_32u_s_fu_120.msgStrm_blk_n) begin
                            if (~msgStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.msgStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~msgStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.msgStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.msgStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_mysha_U0_U.if_empty_n & mysha_U0.ap_idle & ~start_for_mysha_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_mysha_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_sha_U0',");
                        end
                    end
                    17: begin
                        if (~mysha_U0.ComputeWordCnt_loc_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c48_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c48_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.grp_sha3Digest_32u_s_fu_120.digestStrm_blk_n) begin
                            if (~digestStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.digestStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.digestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~digestStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.digestStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.digestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.grp_sha3Digest_32u_s_fu_120.endDigestStrm_blk_n) begin
                            if (~endDigestStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endDigestStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endDigestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endDigestStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endDigestStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endDigestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_consumesha_U0_U.if_full_n & mysha_U0.ap_start & ~mysha_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~start_for_consumesha_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_consumesha_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumesha_U0',");
                        end
                    end
                    18: begin
                        if (~mysha_U0.ComputeWordCnt_loc_out1_blk_n) begin
                            if (~ComputeWordCnt_loc_c49_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c49_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~mysha_U0.sha_out_blk_n) begin
                            if (~sha_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.sha_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~sha_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.sha_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_prepare_aes_U0_U.if_full_n & mysha_U0.ap_start & ~mysha_U0.real_start & (trans_in_cnt_5 == trans_out_cnt_5) & ~start_for_prepare_aes_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_prepare_aes_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0',");
                        end
                    end
                    endcase
                end
                17 : begin
                    case(index2)
                    16: begin
                        if (~consumesha_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c48_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c48_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c48_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~consumesha_U0.endDigestStrm_blk_n) begin
                            if (~endDigestStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endDigestStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endDigestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endDigestStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endDigestStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endDigestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~consumesha_U0.digestStrm_blk_n) begin
                            if (~digestStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.digestStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.digestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~digestStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.digestStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.digestStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_consumesha_U0_U.if_empty_n & consumesha_U0.ap_idle & ~start_for_consumesha_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_consumesha_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0',");
                        end
                    end
                    3: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    21: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_udp_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_done_reg_5 & consumesha_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    endcase
                end
                18 : begin
                    case(index2)
                    19: begin
                        if (~prepare_aes_U0.ciphertextStrm_blk_n) begin
                            if (~ciphertextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ciphertextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_aes_U0.endCiphertextStrm_blk_n) begin
                            if (~endCiphertextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endCiphertextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_aes_U0.cipherkeyStrm_blk_n) begin
                            if (~cipherkeyStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~cipherkeyStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_aes_U0.IVStrm_blk_n) begin
                            if (~IVStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.IVStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.IVStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~IVStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.IVStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.IVStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_aes_U0.ComputeWordCnt_loc_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c50_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c50_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_myaes_U0_U.if_full_n & prepare_aes_U0.ap_start & ~prepare_aes_U0.real_start & (trans_in_cnt_6 == trans_out_cnt_6) & ~start_for_myaes_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_myaes_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0',");
                        end
                    end
                    16: begin
                        if (~prepare_aes_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c49_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c49_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c49_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~prepare_aes_U0.sha_out_blk_n) begin
                            if (~sha_out_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.sha_out_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_out_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~sha_out_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.sha_out_U' read by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.sha_out_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_prepare_aes_U0_U.if_empty_n & prepare_aes_U0.ap_idle & ~start_for_prepare_aes_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_prepare_aes_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.mysha_U0',");
                        end
                    end
                    endcase
                end
                19 : begin
                    case(index2)
                    18: begin
                        if (~myaes_U0.ciphertextStrm_blk_n) begin
                            if (~ciphertextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ciphertextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ciphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~myaes_U0.endCiphertextStrm_blk_n) begin
                            if (~endCiphertextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endCiphertextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endCiphertextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~myaes_U0.cipherkeyStrm_blk_n) begin
                            if (~cipherkeyStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~cipherkeyStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.cipherkeyStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~myaes_U0.IVStrm_blk_n) begin
                            if (~IVStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.IVStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.IVStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~IVStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.IVStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.IVStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~myaes_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c50_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c50_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U' read by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c50_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_myaes_U0_U.if_empty_n & myaes_U0.ap_idle & ~start_for_myaes_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_myaes_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.prepare_aes_U0',");
                        end
                    end
                    20: begin
                        if (~myaes_U0.plaintextStrm_blk_n) begin
                            if (~plaintextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.plaintextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.plaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~plaintextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.plaintextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.plaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~myaes_U0.endPlaintextStrm_blk_n) begin
                            if (~endPlaintextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endPlaintextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~myaes_U0.ComputeWordCnt_loc_out_blk_n) begin
                            if (~ComputeWordCnt_loc_c51_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U' written by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c51_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_consumeaes_U0_U.if_full_n & myaes_U0.ap_start & ~myaes_U0.real_start & (trans_in_cnt_7 == trans_out_cnt_7) & ~start_for_consumeaes_U0_U.if_read) begin
                            $display("//      Blocked by full output start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_consumeaes_U0_U' read by process 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0',");
                        end
                    end
                    11: begin
                        if (~myaes_U0.timeaes_blk_n) begin
                            if (~timeaes_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.timeaes_U' written by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timeaes_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~timeaes_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.timeaes_U' read by process 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.timeaes_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
                20 : begin
                    case(index2)
                    19: begin
                        if (~consumeaes_U0.plaintextStrm_blk_n) begin
                            if (~plaintextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.plaintextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.plaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~plaintextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.plaintextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.plaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~consumeaes_U0.endPlaintextStrm_blk_n) begin
                            if (~endPlaintextStrm_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~endPlaintextStrm_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.endPlaintextStrm_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~consumeaes_U0.ComputeWordCnt_loc_blk_n) begin
                            if (~ComputeWordCnt_loc_c51_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~ComputeWordCnt_loc_c51_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U' read by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0'");
                                $fdisplay(fp, "Dependence_Channel_path hls_recv_krnl_hls_recv_krnl.ComputeWordCnt_loc_c51_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                        if (~start_for_consumeaes_U0_U.if_empty_n & consumeaes_U0.ap_idle & ~start_for_consumeaes_U0_U.if_write) begin
                            $display("//      Blocked by missing 'ap_start' from start propagation FIFO 'hls_recv_krnl_hls_recv_krnl.start_for_consumeaes_U0_U' written by process 'hls_recv_krnl_hls_recv_krnl.myaes_U0',");
                        end
                    end
                    3: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    21: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_tcp_open_connection_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_tcp_tx_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_udp_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_done_reg_6 & consumeaes_U0.ap_done & ~tie_off_tcp_close_con_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    endcase
                end
                21 : begin
                    case(index2)
                    0: begin
                        if (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                        end
                    end
                    22: begin
                        if (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_sync_tie_off_tcp_open_connection_U0_ap_ready & tie_off_tcp_open_connection_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    3: begin
                        if (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_7 & tie_off_tcp_open_connection_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    endcase
                end
                22 : begin
                    case(index2)
                    0: begin
                        if (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                        end
                    end
                    21: begin
                        if (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    23: begin
                        if (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    24: begin
                        if (ap_sync_tie_off_tcp_tx_U0_ap_ready & tie_off_tcp_tx_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    3: begin
                        if (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_8 & tie_off_tcp_tx_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    endcase
                end
                23 : begin
                    case(index2)
                    0: begin
                        if (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                        end
                    end
                    21: begin
                        if (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    24: begin
                        if (ap_sync_tie_off_udp_U0_ap_ready & tie_off_udp_U0.ap_idle & ~ap_sync_tie_off_tcp_close_con_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_close_con_U0'");
                        end
                    end
                    3: begin
                        if (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_9 & tie_off_udp_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    endcase
                end
                24 : begin
                    case(index2)
                    0: begin
                        if (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_hls_recv_krnl_entry3_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.hls_recv_krnl_entry3_U0'");
                        end
                    end
                    21: begin
                        if (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_tie_off_tcp_open_connection_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_open_connection_U0'");
                        end
                    end
                    22: begin
                        if (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_tie_off_tcp_tx_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_tcp_tx_U0'");
                        end
                    end
                    23: begin
                        if (ap_sync_tie_off_tcp_close_con_U0_ap_ready & tie_off_tcp_close_con_U0.ap_idle & ~ap_sync_tie_off_udp_U0_ap_ready) begin
                            $display("//      Blocked by input sync logic with process : 'hls_recv_krnl_hls_recv_krnl.tie_off_udp_U0'");
                        end
                    end
                    3: begin
                        if (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~listenPorts_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.listenPorts_U0'");
                        end
                    end
                    8: begin
                        if (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~recvData_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.recvData_U0'");
                        end
                    end
                    11: begin
                        if (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~backgroundclock_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.backgroundclock_U0'");
                        end
                    end
                    14: begin
                        if (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~consumetrans_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumetrans_U0'");
                        end
                    end
                    17: begin
                        if (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~consumesha_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumesha_U0'");
                        end
                    end
                    20: begin
                        if (ap_done_reg_10 & tie_off_tcp_close_con_U0.ap_done & ~consumeaes_U0.ap_done) begin
                            $display("//      Blocked by output sync logic with process : 'hls_recv_krnl_hls_recv_krnl.consumeaes_U0'");
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        find_df_deadlock = 1;
                        @(negedge clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
