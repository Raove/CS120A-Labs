`timescale 1ns / 1ps

module VerilogTest;

	// Inputs
	reg e;
	reg a;
	reg b;
	reg c;

	// Outputs
	wire d0;
	wire d1;
	wire d2;
	wire d3;
	wire d4;
	wire d5;
	wire d6;
	wire d7;

	// Instantiate the Unit Under Test (UUT)
	VerilogModule uut (
		.e(e), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d0(d0), 
		.d1(d1), 
		.d2(d2), 
		.d3(d3), 
		.d4(d4), 
		.d5(d5), 
		.d6(d6), 
		.d7(d7)
	);

	initial begin
e = 1;
a = 0;
b = 0;
c = 0;
#100; // Wait for 100 ns
$display("TC11 ");
if ( d0 != 1'b1 ) $display ("Result is wrong");
a = 0;
b = 0;
c = 1;
#100;
$display("TC12 ");
if ( d1 != 1'b1 ) $display ("Result is wrong");
a = 0;
b = 1;
c = 0;
#100;
$display("TC13 ");
if ( d2 != 1'b1 ) $display ("Result is wrong");
a = 0;
b = 1;
c = 1;
#100;
$display("TC14 ");
if ( d3 != 1'b1 ) $display ("Result is wrong");
a = 1;
b = 0;
c = 0;
#100;
$display("TC15 ");
if ( d4 != 1'b1 ) $display ("Result is wrong");
a = 1;
b = 0;
c = 1;
#100; 
$display("TC16 ");
if ( d5 != 1'b1 ) $display ("Result is wrong");
a = 1;
b = 1;
c = 0;
#100;
$display("TC17 ");
if ( d6 != 1'b1 ) $display ("Result is wrong");
a = 1;
b = 1;
c = 1;
#100;
$display("TC18 ");
if ( d7 != 1'b1 ) $display ("Result is wrong");
 // Your test cases *******************
end
      
endmodule

