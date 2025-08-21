class agent_mem();

	generator_mem gen;
	bfm_mem bfm;
	monitor_mem monitor;
	scoreboard_mem scoreboard;
	coverage_mem coverage;

	function void run();
		$display("AGENT");

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
