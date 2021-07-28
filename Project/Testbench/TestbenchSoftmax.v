module TestbenchSoftmax(
    
    );
    parameter CLK = 20;
    parameter Period = CLK*2;
    
    reg [31:0] class0,class1,class2,class3,class4,class5,class6;
    reg clk,rst,Valid_in;
    
    wire [31:0] out0,out1,out2,out3,out4,out5,out6;
    wire Valid_Out;
    
    integer file_read,Data,file_write;
    initial begin
        clk = 0;
        rst = 0;
        Valid_in =0;
        #Period
        rst = 1;
        Valid_in = 1;
        #CLK
        class0=32'h43764bb2; //1
        class1=32'hc516295c; //2
        class2=32'h43b80c81; //3
        class3=32'h44395d40;//4
        class4=32'hc4450898;//5
        class5=32'hc41c8fbf;//6
        class6=32'h441f61c4;//7
        $finish;
    end
always  #CLK clk =~clk;
    softmax softmax_inst0(
                        .clk(clk),
                        .rst(rst),
                        .valid_in(Valid_in),
                        .class0(class0),
                        .class1(class1),
                        .class2(class2),
                        .class3(class3),
                        .class4(class4),
                        .class5(class5),
                        .class6(class6),
                        .out0(out0),
                        .out1(out1),
                        .out2(out2),
                        .out3(out3),
                        .out4(out4),
                        .out5(out5),
                        .out6(out6),
                        .valid_out(Valid_Out)
                        );

endmodule
