class generator_mem;
  txn_mem txn;
  static bit [`ADDR_WIDTH-1:0] que[$];
  task run();
    $display("############## GEN START ###############");
    repeat (64) begin
      txn=new();
      void'(txn.randomize()with{txn.wr_rd == 1; txn.valid == 1;!(txn.addr inside {que});});
      que.push_front(txn.addr);
      common_mem::gen2bfm.put(txn);
      txn.print("GEN");
    end
    repeat (64) begin
      txn=new();
      void'(txn.randomize()with{txn.wr_rd == 0; txn.valid == 1; txn.rdata == 0; txn.addr == que.pop_back();});
      common_mem::gen2bfm.put(txn);
    end
  endtask
endclass