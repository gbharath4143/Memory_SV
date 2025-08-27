`timescale 1ns/1ns

module top_mem();

  bit clk,res;
  env_mem env;
  interface_mem pif(clk,res);

  memory #(`WIDTH,`DEPTH, `ADDR_WIDTH) dut(
    .clk(pif.clk),
    .res(pif.res),
    .wr_rd(pif.wr_rd),
    .addr(pif.addr),
    .wdata(pif.wdata),
    .rdata(pif.rdata),
    .valid(pif.valid),
    .ready(pif.ready)
  );

  always #5 clk=~clk;

  initial begin
    clk=0;
    res=1;
    @(posedge clk);
    res=0;
    $display("TOP");
    env=new();
    env.vif=pif;
    env.run();
  end

  initial begin
    #5000;
    $finish;
  end
endmodule