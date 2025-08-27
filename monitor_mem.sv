class monitor_mem;
virtual interface interface_mem vif;
  task run();		
    $display("Monitor");
    forever begin
      @(posedge vif.clk)
      if(vif.ready && vif.valid) begin
        txn_mem rtxn;
        rtxn=new();
        rtxn.wr_rd = vif.wr_rd;
        rtxn.addr  = vif.addr;
        rtxn.wdata = vif.wdata;
        rtxn.valid = vif.valid;
        rtxn.ready = vif.ready;
        rtxn.print("MON");
        common_mem::mon2sbd.put(rtxn);
        common_mem::mon2cov.put(rtxn);
      end
    end
  endtask
endclass