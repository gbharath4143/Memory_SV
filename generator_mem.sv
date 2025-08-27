class generator_mem;
 txn_mem txn;
 int taddr;
  task run();
    $display("GEN");
    txn=new();
    void'(txn.randomize()with{wr_rd == 1; valid == 1;});
    taddr=txn.addr;
    txn.print("GEN");
    common_mem::gen2bfm.put(txn);
    txn.wr_rd = 0;
    txn.addr=taddr;
    txn.print("GEN");
    common_mem::gen2bfm.put(txn);
  endtask
endclass