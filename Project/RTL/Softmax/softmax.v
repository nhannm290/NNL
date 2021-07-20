`define f2r(z) ({z[31], z[30], {3{~z[30]}}, z[29:23], z[22:0], {29{1'b0}}})
`define r2f(z) ({z[63], z[62], z[58:52], z[51:29]})
module softmax(
    clk,
    rst,
    valid_in,
    class0,class1,class2,class3,class4,class5,class6,
    out0,out1,out2,out3,out4,out5,out6,
    valid_out
    );
    input clk;
	input rst;
	input valid_in;
    input [31:0] class0,class1,class2,class3,class4,class5,class6;
    output [31:0] out0,out1,out2,out3,out4,out5,out6;
    output reg valid_out;

    reg s1,s2,s3;
    reg [63:0] num0,num1,num2,num3,num4,num5,num6,percent0,percent1,percent2,percent3,percent4,percent5,percent6;
    real r0,r1,r2,r3,r4,r5,r6,Eout_sum,Eout0,Eout1,Eout2,Eout3,Eout4,Eout5,Eout6;
    assign out0 = `r2f(percent0);
    assign out1 = `r2f(percent1);
    assign out2 = `r2f(percent2);
    assign out3 = `r2f(percent3);
    assign out4 = `r2f(percent4);
    assign out5 = `r2f(percent5);
    assign out6 = `r2f(percent6);
    always @ (posedge clk or negedge rst)begin
        if (rst == 1'b0)begin
            num0 <= 0;
            num1 <= 0;
            num2 <= 0;
            num3 <= 0;
            num4 <= 0;
            num5 <= 0;
            num6 <= 0;
            s1 <= 0;
        end
        else if(valid_in == 1'b1)begin
            num0 <= `f2r(class0);
            num1 <= `f2r(class1);
            num2 <= `f2r(class2);
            num3 <= `f2r(class3);
            num4 <= `f2r(class4);
            num5 <= `f2r(class5);
            num6 <= `f2r(class6);
            s1 <= valid_in;
        end
        else begin
            num0 <= num0;
            num1 <= num1;
            num2 <= num2;
            num3 <= num3;
            num4 <= num4;
            num5 <= num5;
            num6 <= num6;
            s1 <= 0;
        end
    end
    always @ (posedge clk or negedge rst)begin
        if (rst == 1'b0)begin
            r0 <= 0;
            r1 <= 0;
            r2 <= 0;
            r3 <= 0;
            r4 <= 0;
            r5 <= 0;
            r6 <= 0;
            s2 <= 0;
        end
        else if(s1 == 1'b1)begin
            r0 <= 2.71828182846**$bitstoreal(num0);
            r1 <= 2.71828182846**$bitstoreal(num1);
            r2 <= 2.71828182846**$bitstoreal(num2);
            r3 <= 2.71828182846**$bitstoreal(num3);
            r4 <= 2.71828182846**$bitstoreal(num4);
            r5 <= 2.71828182846**$bitstoreal(num5);
            r6 <= 2.71828182846**$bitstoreal(num6);
            s2 <= s1;
        end
        else begin
            r0 <= r0;
            r1 <= r1;
            r2 <= r2;
            r3 <= r3;
            r4 <= r4;
            r5 <= r5;
            r6 <= r6;
            s2 <= 0;
        end
    end
    always @ (posedge clk or negedge rst)begin
        if (rst == 1'b0)begin
            Eout_sum <= 0;
            s3 <= 0;
            Eout0 <= 0;
            Eout1 <= 0;
            Eout2 <= 0;
            Eout3 <= 0;
            Eout4 <= 0;
            Eout5 <= 0;
            Eout6 <= 0;
        end
        else if(s2 == 1'b1)begin
            Eout_sum <= r0 + r1 + r2 + r3 + r4 + r5 + r6;
            Eout0 <= r0;
            Eout1 <= r1;
            Eout2 <= r2;
            Eout3 <= r3;
            Eout4 <= r4;
            Eout5 <= r5;
            Eout6 <= r6;
            s3 <= s2;
        end
        else begin
            Eout_sum <= Eout_sum;
            Eout0 <= Eout0;
            Eout1 <= Eout1;
            Eout2 <= Eout2;
            Eout3 <= Eout3;
            Eout4 <= Eout4;
            Eout5 <= Eout5;
            Eout6 <= Eout6;
            s3 <= 0;
        end
    end
    always @ (posedge clk or negedge rst)begin
        if (rst == 1'b0)begin
            percent0 <= 0;
            percent1 <= 0;
            percent2 <= 0;
            percent3 <= 0;
            percent4 <= 0;
            percent5 <= 0;
            percent6 <= 0;
            valid_out <= 0;
        end
        else if(s3 == 1'b1)begin
            percent0 <= $realtobits(Eout0/Eout_sum);
            percent1 <= $realtobits(Eout1/Eout_sum);
            percent2 <= $realtobits(Eout2/Eout_sum);
            percent3 <= $realtobits(Eout3/Eout_sum);
            percent4 <= $realtobits(Eout4/Eout_sum);
            percent5 <= $realtobits(Eout5/Eout_sum);
            percent6 <= $realtobits(Eout6/Eout_sum);
            valid_out <= s3;
        end
        else begin
            percent0 <= percent0;
            percent1 <= percent1;
            percent2 <= percent2;
            percent3 <= percent3;
            percent4 <= percent4;
            percent5 <= percent5;
            percent6 <= percent6;
            valid_out <= 0;
        end
    end
endmodule