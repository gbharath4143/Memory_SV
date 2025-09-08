class agent_mem;
  virtual interface interface_mem vif;
  generator_mem gen;
  bfm_mem bfm;
  monitor_mem mon;
  scoreboard_mem sbd;
  coverage_mem cov;
  task run();
    $display("############## AGT START ###############");
    gen=new();
    bfm=new();
    mon=new();
    sbd=new();
    cov=new();
    bfm.vif=vif;
    mon.vif=vif;
    fork
      gen.run();
      bfm.run();
      mon.run();
      sbd.run();
      cov.run();
    join
  endtask
endclass