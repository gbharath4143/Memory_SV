class env_mem();
	agent_mem agent;
	function void run();
		$display("ENV");
		agent=new();
		agent.run();
	endfunction
endclass
