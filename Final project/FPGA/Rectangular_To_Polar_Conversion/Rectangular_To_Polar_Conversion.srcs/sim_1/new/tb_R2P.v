`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/30 21:45:58
// Design Name: 
// Module Name: tb_R2P
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_R2P #(parameter WIDTH = 31)(
	clk, 
	rst_n,
	in_valid,
	x_in,
	y_in,
	radius,
	angle,
	out_valid
);

output reg                    clk;
output reg                    rst_n;
output reg                    in_valid;
output reg   signed [WIDTH:0] x_in;
output reg   signed [WIDTH:0] y_in;
input wire  signed  [WIDTH:0] radius;
input wire  signed  [8:0]     angle;
input wire                    out_valid;

//======================================
//      PARAMETERS & VARIABLES
//======================================
// Can be modified by user
integer   TOTAL_PATNUM = 1000;
integer SEED = 5487;


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




parameter CYCLE = 50;
parameter PI = 3.14159265359;
integer tot_lat;
integer pat;

integer _x_in, _y_in;
integer golden_radius;
real golden_angle;
real error_rate_radius;
real error_rate_angle;



//======================================
//              MAIN
//======================================
initial begin
    reset_task;
    for(pat=0 ; pat<TOTAL_PATNUM ; pat=pat+1) begin
        input_task;
        cal_task;
    end
    display_task;
end

//======================================
//              CLOCK
//======================================
initial clk = 1'b0;
always #(CYCLE/2.0) clk = ~clk;






task reset_task; begin
    force clk = 0;
    rst_n = 1;
    in_valid = 0;
    x_in = 'dx;
    y_in = 'dx;

    tot_lat = 0;

    repeat(5) #(CYCLE/2.0) rst_n = 0;
    repeat(5) #(CYCLE/2.0) rst_n = 1;
    if(out_valid !== 0 || radius !== 0 || angle !== 0) begin
        $display("[ERROR] [Reset] Output signal should be 0 at %-12d ps  ", $time*1000);
        repeat(5) #(CYCLE);
        $finish;
    end
    #(CYCLE/2.0) release clk;

    error_rate_radius = 0;
    error_rate_angle = 0;
end endtask



task input_task; begin
    repeat(1) @(negedge clk);
    _x_in = $random(SEED)%1000000000;
    _y_in = $random(SEED)%1000000000;

    in_valid = 1;
    x_in = _x_in;
    y_in = _y_in;
    @(negedge clk);
    in_valid = 0;
    x_in = 'dx;
    y_in = 'dx;
end endtask


task cal_task;
    real temp;
    real temp_angle1, temp_angle2, temp_angle3;
begin
    golden_radius = $sqrt($pow(_x_in,2) + $pow(_y_in,2));
    golden_angle = $atan2(_y_in, _x_in)*180/PI;
    while(out_valid !== 1) begin
        @(negedge clk);
    end
    if(out_valid === 1) begin
        temp = (golden_radius > radius) ? (golden_radius - radius) : (radius - golden_radius);
        error_rate_radius = error_rate_radius + temp/golden_radius;

        temp_angle1 = (golden_angle > 0) ? golden_angle : -golden_angle;
        temp_angle2 = (angle > 0) ? angle : -angle;
        temp_angle3 = (temp_angle1 > temp_angle2) ? (temp_angle1 - temp_angle2) : (temp_angle2 - temp_angle1);
        error_rate_angle = error_rate_angle + temp_angle3/temp_angle1;
    end
    $display("Golden: %11f Your: %4f", golden_angle, angle);
end endtask


task display_task; begin
    error_rate_radius = error_rate_radius / TOTAL_PATNUM;
    error_rate_angle = error_rate_angle / TOTAL_PATNUM;
    $display("Total pat: %8d Error_rate_radius: %f Error_rate_angle: %3f", TOTAL_PATNUM, error_rate_radius, error_rate_angle);
    $finish;
end endtask
endmodule
