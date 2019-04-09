`timescale 1ns / 1ps
/* Author: Ozan San
	Date: 9.4.2019
*/
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

	// TestCount variables
	integer ozanTests;

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
    // At 3, 9, 15, Clock RISES 
    // At 6, 12, 18, .. Clock FALLS
   initial clk = 0;
	always #3 clk = ~clk;
    
	initial begin
		$monitor("TIME=%t | d0=%b f0=%b d1=%b f1=%b | Q0=%b Y=%b Q1=%b",
					 $time,    d0,   f0,   d1,   f1,     q0,   y,   q1);
		// Initialize Inputs
		d0 = 0;
		f0 = 0;
		d1 = 0;
		f1 = 0;
		
		// Initialize testCount variables:
		
		ozanTests = 0;
		// Wait 4 ns for first rising clk
		#4; //t = 4
        
		
		//Test1: Initial
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test1 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=0; d0=0; f0=1; // Change 1 -> Test 2
		#3; // Wait for clk rise to check inputs.
		
		//Test2
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test2 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=0; d0=1; f0=0; // Change 2 -> Test 3
		#3; // Wait for clk rise to check inputs.
		
		//Test3
		if ((q1) && (~y) && (~q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test3 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=0; d0=1; f0=1; // Change 3 -> Test 4
		#3; // Wait for clk rise to check inputs.
		
		//Test4
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test4 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=1; d0=0; f0=0; // Change 4 -> Test 5
		#3; // Wait for clk rise to check inputs.
		
		// PART 1: Done.
		
		//Test5
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test5 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=1; d0=0; f0=1; // Change 5 -> Test 6
		#3; // Wait for clk rise to check inputs.
		
		//Test6
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test6 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=1; d0=1; f0=0; // Change 6 -> Test 7
		#3; // Wait for clk rise to check inputs.
		
		//Test7
		if ((q1) && (~y) && (~q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test7 failed.");
		#3; // Wait for low clock to change inputs.
		d1=0; f1=1; d0=1; f0=1; // Change 7 -> Test 8
		#3; // Wait for clk rise to check inputs.
		
		//Test8
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test8 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=0; d0=0; f0=0; // Change 8 -> Test 9
		#3; // Wait for clk rise to check inputs.
		
		// PART 2: Done.
		
		//Test9
		if ((~q1) && (~y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test9 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=0; d0=0; f0=1; // Change 9 -> Test 10
		#3; // Wait for clk rise to check inputs.
		
		//Test10
		if ((~q1) && (~y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test10 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=0; d0=1; f0=0; // Change 10 -> Test 11
		#3; // Wait for clk rise to check inputs.
		
		//Test11
		if ((~q1) && (y) && (~q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test11 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=0; d0=1; f0=1; // Change 11 -> Test 12
		#3; // Wait for clk rise to check inputs.
		
		//Test12
		if ((~q1) && (~y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test12 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=1; d0=0; f0=0; // Change 12 -> Test 13
		#3; // Wait for clk rise to check inputs.
		
		// PART 3: Done.
		
		//Test13
		if ((q1) && (y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test13 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=1; d0=0; f0=1; // Change 13 -> Test 14
		#3; // Wait for clk rise to check inputs.
		
		//Test14
		if ((~q1) && (~y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test14 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=1; d0=1; f0=0; // Change 14 -> Test 15
		#3; // Wait for clk rise to check inputs.
		
		//Test15
		if ((q1) && (~y) && (~q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test15 failed.");
		#3; // Wait for low clock to change inputs.
		d1=1; f1=1; d0=1; f0=1; // Change 15 -> Test 16
		#3; // Wait for clk rise to check inputs.
		
		//Test16
		if ((~q1) && (~y) && (q0)) begin $display("Successful"); ozanTests = ozanTests + 1; end
		else $display("Test16 failed.");
		#3; // Wait for low clock to change inputs.
		// NO CHANGE.
		$display("Ozan's test results: %d / 16", ozanTests);
		// PART 4: Done.
		
		/* ADD ADDITIONAL TEST CASES HERE */
		
		/* ADDITIONAL TEST CASES END */
		$finish;
	end
      
endmodule


