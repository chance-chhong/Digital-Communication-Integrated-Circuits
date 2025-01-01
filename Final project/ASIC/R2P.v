//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   DCIC 2024
//   Final Project		: Rectangular-to-Polar conversion 
//   Author     		: Cheng-Hsuan Hong (chance.chhong@gmail.com)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : R2P.v
//   Module Name : R2P
//   Release version : V1.0 (Release Date: 2024-10)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

module R2P #(parameter WIDTH = 31) (
	clk, 
	rst_n,
	in_valid,
	x_in,
	y_in,
	radius,
	angle,
	out_valid
);

input                   clk;
input                   rst_n;
input                   in_valid;
input signed [WIDTH:0]  x_in;
input signed [WIDTH:0]  y_in;
output reg              out_valid;
output reg   [WIDTH:0]  radius;
output reg signed [8:0] angle;


//==============================================//
//   Low Latency Scaling-Free Pipeline CORDIC   //
//==============================================//



//==================================================================
// parameter & integer
//==================================================================

integer i, j;
parameter angle_0 = 16'd23040;  //180
parameter angle_1 = 16'd11520;  //90
parameter angle_2 = 16'd3400;   //26.565
parameter angle_3 = 16'd1797;   //14.036
parameter angle_4 = 16'd912;    //7.125
parameter angle_5 = 16'd458;    //3.576
parameter angle_6 = 16'd229;    //1.790
parameter angle_7 = 16'd115;    //0.895
parameter angle_8 = 16'd14;     //0.112



//==================================================================
// reg & wire
//==================================================================
reg signed [WIDTH:0] x[0:6];
reg signed [WIDTH:0] y[0:6];
reg signed [15:0] z[0:6];
reg out_valid_temp[0:6];


wire signed [WIDTH:0] abs_x_in, abs_y_in;
wire range45;
reg flag;

wire signed [WIDTH:0] stage2_x, stage2_y, stage2_x_taylor, stage2_y_taylor, stage2x, stage2y;
wire [3:0] stage2_cos_shift, stage2_sin_shift1,  stage2_sin_shift2,  stage2_sin_shift3;

wire signed [WIDTH:0] stage3_x, stage3_y, stage3_x_taylor, stage3_y_taylor, stage3x, stage3y;
wire [3:0] stage3_cos_shift, stage3_sin_shift;

wire signed [WIDTH:0] stage4y;
wire [WIDTH:0] stage4_y, stage4_y_update;
wire angle_modfied_flag;


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) flag <= 0;
    else if(in_valid) flag <= 0;
    else flag <= !flag;
end


assign abs_x_in = x_in[WIDTH] ? -x_in : x_in;
assign abs_y_in = y_in[WIDTH] ? -y_in : y_in;
assign range45 = abs_x_in > abs_y_in;


assign stage2x = stage2_x - (stage2_x >>> stage2_cos_shift) + (stage2_y[WIDTH] ? -stage2_y_taylor : stage2_y_taylor);
assign stage2_x = flag ? x[5] : x[4];
assign stage2_y = flag ? y[5] : y[4];
assign stage2_y_taylor = (stage2_y >>> stage2_sin_shift1) - (stage2_y >>> stage2_sin_shift2) - (stage2_y >>> stage2_sin_shift3);
assign stage2_cos_shift = flag ? 5 : 7;
assign stage2_sin_shift1 = flag ? 2 : 3;
assign stage2_sin_shift2 = flag ? 9 : 12;
assign stage2_sin_shift3 = flag ? 11 : 14;


assign stage3x = stage3_x - (stage3_x >>> stage3_cos_shift) + (stage3_y[WIDTH] ? -stage3_y_taylor : stage3_y_taylor);
assign stage3_x = flag ? x[3] : x[2];
assign stage3_y = flag ? y[3] : y[2];
assign stage3_y_taylor = (stage3_y >>> stage3_sin_shift);
assign stage3_cos_shift = flag ? 9 : 11;
assign stage3_sin_shift = flag ? 4 : 5;


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 7; i = i + 1) begin
            x[i] <= 0;
        end
    end
    else if(in_valid) begin
        x[6] <= range45 ? (x_in[WIDTH] ? -x_in : x_in) : (y_in[WIDTH] ? -y_in : y_in);  //-45~45
    end
    else begin
        x[5] <= x[6] - (x[6] >>> 3) + (x[6] >>> 9) + (x[6] >>> 11) + (x[6] >>> 12) + (y[6][WIDTH] ? -((y[6] >>> 1) - (y[6] >>> 6) - (y[6] >>> 8) - (y[6] >>> 10)) : ((y[6] >>> 1) - (y[6] >>> 6) - (y[6] >>> 8) - (y[6] >>> 10)));
        x[4] <= stage2x;
        x[3] <= stage2x;
        x[2] <= stage3x;
        x[1] <= stage3x;
        x[0] <= x[1] + (y[1][WIDTH] ? -((y[1] >>> 6)) : ((y[1] >>> 6)));
    end
end



assign stage2_x_taylor = (stage2_x >>> stage2_sin_shift1) - (stage2_x >>> stage2_sin_shift2) - (stage2_x >>> stage2_sin_shift3);
assign stage2y = stage2_y - (stage2_y >>> stage2_cos_shift) + (stage2_y[WIDTH] ? stage2_x_taylor : -stage2_x_taylor);


assign stage3_x_taylor = (stage3_x >>> stage3_sin_shift);
assign stage3y = stage3_y - (stage3_y >>> stage3_cos_shift) + (stage3_y[WIDTH] ? stage3_x_taylor : -stage3_x_taylor);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 7; i = i + 1) begin
            y[i] <= 0;
        end
    end
    else if(in_valid) begin
        y[6] <= range45 ? (x_in[WIDTH] ? -y_in : y_in) : (y_in[WIDTH] ? x_in : -x_in);  //-45~45
    end
    else begin
        y[5] <= y[6] - (y[6] >>> 3) + (y[6] >>> 9) + (y[6] >>> 11) + (y[6] >>> 12) + (y[6][WIDTH] ? ((x[6] >>> 1) - (x[6] >>> 6) - (x[6] >>> 8) - (x[6] >>> 10)) : -((x[6] >>> 1) - (x[6] >>> 6) - (x[6] >>> 8) - (x[6] >>> 10)));
        y[4] <= stage2y;
        y[3] <= stage2y;
        y[2] <= stage3y;
        y[1] <= stage3y;
        y[0] <= y[1] + (y[1][WIDTH] ? ((x[1] >>> 6)) : -((x[1] >>> 6)));
    end
end


assign stage4_y = y[1][WIDTH] ? -y[1] : y[1];
assign stage4y = y[1] + (y[1][WIDTH] ? ((x[1] >>> 6)) : -((x[1] >>> 6)));
assign stage4_y_update = stage4y[WIDTH] ? -stage4y : stage4y;
assign angle_modfied_flag = (stage4_y_update < stage4_y) && (y[1][WIDTH] != stage4y[WIDTH]);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 7; i = i + 1) begin
            z[i] <= 0;
        end
    end
    else if(in_valid) begin
        z[6] <= range45 ? (x_in[WIDTH] ? (y_in[WIDTH] ? -angle_0 : angle_0) : 0) : (y_in[WIDTH] ? -angle_1 : angle_1);
    end
    else begin
        z[5] <= z[6] + (y[6][WIDTH] ? -angle_2 : angle_2);
        z[4] <= z[5] + (y[5][WIDTH] ? -angle_3 : angle_3);
        z[3] <= z[4] + (y[4][WIDTH] ? -angle_4 : angle_4);
        z[2] <= z[3] + (y[3][WIDTH] ? -angle_5 : angle_5);
        z[1] <= z[2] + (y[2][WIDTH] ? -angle_6 : angle_6);
        z[0] <= z[1] + (y[1][WIDTH] ? (angle_modfied_flag ? -angle_7 : -angle_8)  : (angle_modfied_flag ? angle_7 : angle_8));
    end

end


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 7; i = i + 1) begin
            out_valid_temp[i] <=  0;
        end
    end
    else begin
        out_valid_temp[6] <= in_valid;
        for(i = 0; i < 6; i = i + 1) begin
            out_valid_temp[i] <= out_valid_temp[i+1];
        end
    end
end


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) out_valid <= 0;
    else out_valid <= out_valid_temp[0];
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) radius <= 0;
    else if(out_valid_temp[0]) radius <= x[0];
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) angle <= 0;
    else if(out_valid_temp[0]) angle <= (z[0] >>> 7);
end






//==============================================//
//                    CORDIC                    //
//==============================================//


/* //==================================================================
// parameter & integer
//==================================================================

integer i, j;
parameter angle_ = 32'd5898240;    //90
parameter angle_0 = 32'd2949120;  //45
parameter angle_1 = 32'd1740967;  //26.565
parameter angle_2 = 32'd919879;   //14.036
parameter angle_3 = 32'd466945;   //7.125
parameter angle_4 = 32'd234379;   //3.576
parameter angle_5 = 32'd117304;   //1.790
parameter angle_6 = 32'd58666;    //0.895
parameter angle_7 = 32'd29335;    //0.448
parameter angle_8 = 32'd14668;    //0.224
parameter angle_9 = 32'd7334;     //0.112
parameter angle_10 = 32'd3667;    //0.056
parameter angle_11 = 32'd1833;    //0.028
parameter angle_12 = 32'd917;     //0.014
parameter angle_13 = 32'd458;     //0.007
parameter angle_14 = 32'd229;     //0.003
parameter angle_15 = 32'd115;     //0.002


//==================================================================
// reg & wire
//==================================================================
reg signed [WIDTH:0] x[0:16];
reg signed [WIDTH:0] y[0:16];
reg signed [31:0] z[0:16];



reg out_valid_temp[0:16];
reg [3:0] cnt;
reg [3:0] shift;
wire signed [WIDTH:0] x_sum;



always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
    end
    else if(in_valid) begin
        cnt <= 0;
    end
    else begin
        cnt <= cnt + 1;
    end
end



always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 17; i = i + 1) begin
            x[i] <= 0;
        end
    end
    else if(in_valid) begin
        if(x_in >= 0)begin
            x[16] <= x_in;
        end
        else if(y_in >= 0)begin
            x[16] <= y_in;
        end
        else begin
            x[16] <= -y_in;
        end
    end
    else begin
        for(i = 0; i < 16; i = i + 1) begin
            x[i] <= x[i + 1] + (y[i + 1][WIDTH] ? -(y[i + 1] >>> cnt) : (y[i + 1] >>> cnt));
        end
    end
end

assign x_sum = (x[0] >>> 3) + (x[0] >>> 3) + (x[0] >>> 3) + (x[0] >>> 3) + (x[0] >>> 3);



always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 17; i = i + 1) begin
            y[i] <= 0;
        end
    end
    else if(in_valid) begin
        if(x_in >= 0)begin
            y[16] <= y_in;
        end
        else if(y_in >= 0)begin
            y[16] <= -x_in;
        end
        else begin
            y[16] <= x_in;
        end
    end
    else begin
        for(i = 0; i < 16; i = i + 1) begin
            y[i] <= y[i + 1] + (y[i + 1][WIDTH] ? (x[i + 1] >>> cnt) : -(x[i + 1] >>> cnt));
        end
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 17; i = i + 1) begin
            z[i] <= 0;
        end
    end
    else if(in_valid) begin
        if(x_in >= 0)begin
            z[16] <= 0;
        end
        else if(y_in >= 0)begin
            z[16] <= angle_;
        end
        else begin
            z[16] <= -angle_;
        end
    end
    else begin
        z[15] <= z[16] + (y[16][WIDTH] ? -angle_0 : angle_0);
        z[14] <= z[15] + (y[15][WIDTH] ? -angle_1 : angle_1);
        z[13] <= z[14] + (y[14][WIDTH] ? -angle_2 : angle_2);
        z[12] <= z[13] + (y[13][WIDTH] ? -angle_3 : angle_3);
        z[11] <= z[12] + (y[12][WIDTH] ? -angle_4 : angle_4);
        z[10] <= z[11] + (y[11][WIDTH] ? -angle_5 : angle_5);
        z[9] <= z[10] + (y[10][WIDTH] ? -angle_6 : angle_6);
        z[8] <= z[9] + (y[9][WIDTH] ? -angle_7 : angle_7);
        z[7] <= z[8] + (y[8][WIDTH] ? -angle_8 : angle_8);
        z[6] <= z[7] + (y[7][WIDTH] ? -angle_9 : angle_9);
        z[5] <= z[6] + (y[6][WIDTH] ? -angle_10 : angle_10);
        z[4] <= z[5] + (y[5][WIDTH] ? -angle_11 : angle_11);
        z[3] <= z[4] + (y[4][WIDTH] ? -angle_12 : angle_12);
        z[2] <= z[3] + (y[3][WIDTH] ? -angle_13 : angle_13);
        z[1] <= z[2] + (y[2][WIDTH] ? -angle_14 : angle_14);
        z[0] <= z[1] + (y[1][WIDTH] ? -angle_15 : angle_15);
    end
end




always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(i = 0; i < 17; i = i + 1) begin
            out_valid_temp[i] <=  0;
        end
    end
    else begin
        out_valid_temp[16] <= in_valid;
        for(i = 0; i < 16; i = i + 1) begin
            out_valid_temp[i] <= out_valid_temp[i+1];
        end
    end
end


always @(posedge clk or negedge rst_n) begin
    if(!rst_n) out_valid <= 0;
    else out_valid <= out_valid_temp[0];
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) radius <= 0;
    else if(out_valid_temp[0]) radius <= x_sum;
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) angle <= 0;
    else if(out_valid_temp[0]) angle <= (z[0] >>> 16);
end */



endmodule
