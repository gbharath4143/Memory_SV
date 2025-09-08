class monitor_mem;
  txn_mem txn;
  virtual interface interface_mem vif;
    task run();
      $display("############## MON START ###############");
      forever begin
        @(posedge vif.clk);
        if(vif.ready && vif.valid) begin
          txn=new();
          txn.wr_rd = vif.wr_rd;
          txn.addr  = vif.addr;
          txn.wdata = vif.wdata;
          txn.rdata = vif.rdata;
          txn.valid = vif.valid;
          txn.ready = vif.ready;
          common_mem::mon2sbd.put(txn);
          common_mem::mon2cov.put(txn);
        end
      end
    endtask
    endclass