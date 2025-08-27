class txn_mem;
  rand bit wr_rd,valid;
  rand bit [`ADDR_WIDTH-1:0] addr;
  rand bit [`WIDTH-1:0] wdata;
bit ready;

function void print(string str="Txn_Mem");
$display("############## %s ##############",str);
$display("%s from addr %0d with data %0d",wr_rd?"WRITE":"READ",addr,wdata);
endfunction
endclass