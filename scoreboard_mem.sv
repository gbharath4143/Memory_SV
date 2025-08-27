class scoreboard_mem;
  task run();		
    $display("SBD");
    forever begin
  	txn_mem rtxn;
      common_mem::mon2sbd.get(rtxn);
      rtxn.print("SBD");
    end
  endtask
endclass