interface interface_mem(input bit clk,res);
  bit wr_rd;
  bit [`ADDR_WIDTH-1:0] addr;
  bit [`WIDTH-1:0] wdata,rdata;
  bit ready;
  bit valid;
endinterface