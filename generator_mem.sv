class generator_mem();
	task run();
		$display("GEN");
		txn_mem txn;
		txn=new();
		txn.randomize();
	endtask
endclass
