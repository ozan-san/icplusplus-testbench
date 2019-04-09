# icplusplus-testbench
A testbench created for HW3-2019 for CENG232 - Logic Design class.

## Properties
+ Rising clocks at every 6n+3 nanoseconds
+ Falling clocks at every 6n nanoseconds
+ Checks happen at every 6n+4 nanoseconds
+ Inputs given at every 6n+1 nanoseconds, propagating to the next test

## Q: How do I use this?
Either:
+ Use "Add Copy Of Source" option in the left pane in Xilinx ISE, or:
+ Copy & Paste the document to your testbench_icplusplus.v file.

## Q: How do I add testcases?
Do the following:
+ (Optionally) Add a "successful test count" variable at the top (See example: ozanTests)
+ Set the inside components of the module by issuing Set 0, or Set 1 calls
+ Determine the output (by hand)
+ Test the output by an if statement
+ (Optionally) Increment your testCount variable
+ Advance the clock.


## Q: The code does not compile, why?
Check:
+ You have named your modulename, and variables correctly, as specified in the PDF
+ Check your syntax again
+ If there's nothing wrong with your syntax, try to run the code in an inek machine.

## Q: Why isn't my Xilinx ISE installation working?
Answer: Probably nobody knows. This software is... bizarre.
