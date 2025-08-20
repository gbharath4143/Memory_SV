class agent_mem();

	generator_mem gen;
	bfm_mem bfm;
	monitor_mem monitor;
	scoreboard_mem scoreboard;
	coverage_mem coverage;

	function void run();

		gen=new();
		bfm=new();
		monitor=new();
		scoreboard=new();
		coverage=new();

		fork
			gen.run();
			bfm.run();
			monitor.run();
			scoreboard.run();
			coverage.run();
		join

	endfunction
endclass

module agent_mem_tb();
	agent_mem agent;
	initial begin
		agent=new();
		agent.run();
	end
endmodule
