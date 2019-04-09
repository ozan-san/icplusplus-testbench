`timescale 1ns / 1ps

module testbench_icplusplus;

	// Inputs
	reg d0;
	reg f0;
	reg d1;
	reg f1;
	reg clk;

	// Outputs
	wire q0;
	wire q1;
	wire y;

	// Instantiate the Unit Under Test (UUT)
	icplusplus uut (
		.d0(d0), 
		.f0(f0), 
		.d1(d1), 
		.f1(f1), 
		.clk(clk), 
		.q0(q0), 
		.q1(q1), 
		.y(y)
	);
    // At 5, 15, 25, Clock RISES 
    // At 10, 20, 30, .. Clock FALLS
   initial clk = 0;
   always #5 clk = ~clk;
    
   initial begin
		$monitor("TIME=%t | d0=%b f0=%b d1=%b f1=%b | Q0=%b Y=%b Q1=%b",
					 $time,    d0,   f0,   d1,   f1,     q0,   y,   q1);
		// Initialize Inputs
		d0 = 0;
		f0 = 0;
		d1 = 0;
		f1 = 0;

		// Wait 5 ns for global reset to finish
		#5; //t = 5
        
		// Add stimulus here
		d1=0; f1=1; d0=0; f0=1;
		#10; // t=15, clock FALLS
		//There should be no change!
		if (q0 != 
    end
      
endmodule


