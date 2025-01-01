/**************************************************************************/
// MODULE: TESTBED
// FILE NAME: TESTBED.v
// VERSRION: 1.0
// DATE: Dec 28, 2024
// AUTHOR: Cheng-Hsuan Hong, NYCU AIGP
// CODE TYPE: RTL or Behavioral Level (Verilog)
// 
/**************************************************************************/

`timescale 1ns/1ps

// PATTERN
	`include "PATTERN.v"
// DESIGN
`ifdef RTL
	`include "R2P.v"
`elsif GATE
	`include "R2P_SYN.v"
`endif


module TESTBED();

// Parameter
parameter WIDTH = 31;

reg                    clk;
reg                    rst_n;
reg                    in_valid;
reg   signed [WIDTH:0] x_in;
reg   signed [WIDTH:0] y_in;
wire  signed [WIDTH:0] radius;
wire  signed [8:0]     angle;
wire                   out_valid;

initial begin
 	`ifdef RTL
    	$fsdbDumpfile("R2P.fsdb");
		//$fsdbDumpfile("R2P_cor.fsdb");
		$fsdbDumpvars(0,"+mda");
	`elsif GATE
		$fsdbDumpfile("R2P_SYN.fsdb");
		$fsdbDumpvars(0,"+mda");
		$sdf_annotate("R2P_SYN.sdf", I_R2P); 
	`endif
end

`ifdef RTL
	R2P #(.WIDTH(WIDTH)) u_R2P(
		.clk(clk), 
		.rst_n(rst_n),
		.in_valid(in_valid),
		.x_in(x_in),
		.y_in(y_in),
		.radius(radius),
		.angle(angle),
		.out_valid(out_valid)
	);
`elsif GATE
	R2P I_R2P(
		.clk(clk), 
		.rst_n(rst_n),
		.in_valid(in_valid),
		.x_in(x_in),
		.y_in(y_in),
		.radius(radius),
		.angle(angle),
		.out_valid(out_valid)
	);
`endif

PATTERN #(.WIDTH(WIDTH)) u_PATTERN(
	.clk(clk), 
	.rst_n(rst_n),
	.in_valid(in_valid),
	.x_in(x_in),
	.y_in(y_in),
	.radius(radius),
	.angle(angle),
	.out_valid(out_valid)
);

endmodule
