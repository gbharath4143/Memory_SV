class coverage_mem;

  txn_mem rtxn;

  covergroup cg();
    
     coverpoint rtxn.wr_rd{
      bins WRITES={1'b1};
      bins READS={1'b0};
    }
    
    coverpoint rtxn.addr{
      option.auto_bin_max=5;
    }
    
    coverpoint rtxn.rdata{
      option.auto_bin_max=10;
    }
    coverpoint rtxn.wdata{
      option.auto_bin_max=10;
    }

  endgroup

  function new();
    cg = new();
  endfunction

  task run();
    $display("############## COV START ###############");
    forever begin	
      common_mem::mon2cov.get(rtxn);
      cg.sample();
    end
  endtask

endclass