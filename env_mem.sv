class env_mem();
	agent_mem agent;
	function void run();
		agent=new();
		agent.run();
	endfunction
endclass

module env_mem_tb();
	env_mem env;
	initial begin
		env=new();
		env.run();
	end
endmodule
