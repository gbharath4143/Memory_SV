module memory(parameter WIDTH=8,DEPTH=256,ADDR_WIDTH=$clog2(DEPTH))(
  input bit clk,res,wr_rd,valid,
  input [ADDR_WIDTH-1:0] addr,
  input [WIDTH-1:0] wdata,
  output reg [WIDTH-1:0] rdata,
  output reg ready
);
  logic [WIDTH-1:0] mem [DEPTH-1:0]; 
  always @(posedge clk) begin
    if(res)begin
      rdata<=0;
      ready<=0;
    end
    else begin
      if(valid)begin
        if(wr_rd)begin
          mem[addr]<=wdata;
        end
        else begin
          rdata<=mem[addr];
        end
        ready<=1;
      end
      else ready<=0;
    end
  end
endmodule
