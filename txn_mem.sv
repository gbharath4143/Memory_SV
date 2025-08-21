class txn_mem();
	rand bit wr_rd,valid;
	rand bit [`ADDR_WIDTH-1:0] addr;
	rand bit [`WIDTH-1:0] wdata,rdata;

	bit ready;
	bit [`WIDTH-1:0] rdata;
endclass
