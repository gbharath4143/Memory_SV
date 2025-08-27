class env_mem;
  virtual interface interface_mem vif;
  agent_mem agent;
  task run();
    $display("ENV");
    agent=new();
    agent.vif=vif;
    agent.run();
  endtask
endclass