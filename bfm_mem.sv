class bfm_mem;
  virtual interface interface_mem vif;
  task run();
    $display("############## BFM START ###############");
    forever begin
      txn_mem txn;
      common_mem::gen2bfm.get(txn);
      @(vif.bfm_cb);
      vif.bfm_cb.addr<=txn.addr;
      vif.bfm_cb.wr_rd<=txn.wr_rd;
      vif.bfm_cb.wdata<=txn.wdata;
      vif.bfm_cb.valid<=1;
      wait(vif.bfm_cb.ready==1)
      txn.rdata=vif.bfm_cb.rdata;
      txn.print("BFM");
      @(vif.bfm_cb);
      vif.bfm_cb.wr_rd<=0;
      vif.bfm_cb.addr<=0;
      vif.bfm_cb.wdata<=0;
      vif.bfm_cb.valid<=0;
    end
  endtask
endclass