class coverage_mem;
  task run();		
    $display("COV");
    forever begin	
      txn_mem rtxn;
      common_mem::mon2sbd.get(rtxn);
      rtxn.print("COV");
    end
  endtask
endclass