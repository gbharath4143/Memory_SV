interface mem()
bit clk,res,wr_rd;
bit [`ADDR_WIDTH-1:0] addr;
bit [`WIDTH-1:0] wdata,rdata;
bit ready,valid;
endinterface
