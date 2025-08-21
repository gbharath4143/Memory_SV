class top_mem();
	env_mem env;
	function void new();
		env=new();
		env.run();
	endfunction
endclass

module top_mem_tb();
	top_mem top;
	initial begin
		$display("TOP");
		top=new();
		top.run();
	end
endmodule
