class scoreboard_mem;
  reg [`WIDTH-1:0] ref_mem [`DEPTH-1:0];
  task run();
    common_mem::sbd_s=0;
    common_mem::sbd_f=0;
    $display("############## SBD START ###############");
    forever begin
      txn_mem rtxn;
      common_mem::mon2sbd.get(rtxn);
      if(rtxn.ready && rtxn.valid) begin
        if(rtxn.res) begin
          foreach(ref_mem[i]) ref_mem[i]=0;
        end
        else begin
          if(rtxn.wr_rd) ref_mem[rtxn.addr]=rtxn.wdata;
          else begin
            if (ref_mem[rtxn.addr]==rtxn.rdata) common_mem::sbd_s++;
            else common_mem::sbd_f++;
          end
        end
      end
    end
  endtask  
endclass