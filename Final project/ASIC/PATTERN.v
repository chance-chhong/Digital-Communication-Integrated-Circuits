`ifdef RTL
    `define CYCLE_TIME 50
`endif
`ifdef GATE
    `define CYCLE_TIME 50
`endif


module PATTERN #(parameter WIDTH = 31)(
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






// String control
// Should use %0s
reg[9*8:1]  reset_color       = "\033[1;0m";
reg[10*8:1] txt_black_prefix  = "\033[1;30m";
reg[10*8:1] txt_red_prefix    = "\033[1;31m";
reg[10*8:1] txt_green_prefix  = "\033[1;32m";
reg[10*8:1] txt_yellow_prefix = "\033[1;33m";
reg[10*8:1] txt_blue_prefix   = "\033[1;34m";

reg[10*8:1] bkg_black_prefix  = "\033[40;1m";
reg[10*8:1] bkg_red_prefix    = "\033[41;1m";
reg[10*8:1] bkg_green_prefix  = "\033[42;1m";
reg[10*8:1] bkg_yellow_prefix = "\033[43;1m";
reg[10*8:1] bkg_blue_prefix   = "\033[44;1m";
reg[10*8:1] bkg_white_prefix  = "\033[47;1m";

parameter CYCLE = `CYCLE_TIME;
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
    $display("%0sGolden: %11f%0s Your: %4f%13s",txt_blue_prefix, golden_angle, txt_green_prefix, angle, reset_color);
end endtask


task display_task; begin
    error_rate_radius = error_rate_radius / TOTAL_PATNUM;
    error_rate_angle = error_rate_angle / TOTAL_PATNUM;
    $display("%0sTotal pat: %8d %0sError_rate_radius: %f%0s Error_rate_angle: %3f%13s",txt_blue_prefix, TOTAL_PATNUM, txt_green_prefix, error_rate_radius, txt_yellow_prefix, error_rate_angle, reset_color);
    $finish;
end endtask
endmodule