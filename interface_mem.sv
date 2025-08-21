interface mem #(parameter WIDTH=8,DEPTH=256,ADDR_WIDTH=$clog2(DEPTH));
bit clk,res,wr_rd;
bit [`ADDR_WIDTH-1:0] addr;
bit [`WIDTH-1:0] wdata,rdata;
bit ready,valid;
endinterface
