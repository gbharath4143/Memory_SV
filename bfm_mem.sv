class bfm_mem;
virtual interface interface_mem vif;
  task run();		 
    $display("BFM");
    forever begin
      txn_mem txn;
      common_mem::gen2bfm.get(txn);
      txn.print("BFM");
      vif.wr_rd = txn.wr_rd;
      vif.addr  = txn.addr;
      vif.wdata = txn.wdata;
      vif.valid = txn.valid;
    end
  endtask
endclass