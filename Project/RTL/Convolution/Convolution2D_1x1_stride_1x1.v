module Convolution2D_1x1_stride_1x1 (
    input [31:0] Data_In,
    input [31:0] Kernel,
    input Valid_In,
    input clk,
    input rst,
    output [31:0] Data_Out,
    output Valid_Out
    
);
    wire [31:0] reg_Data_Out;


    assign Valid_Out= (Valid_In)? 1:0;

    nbit_Dff #(
        .DATA_WIDHT(32)
    ) 
    reg0(
        .Data_In(Data_In),
        .clk(clk),
        .enable(Valid_In),
        .rst(rst),
        .Data_Out(reg_Data_Out)
    );

    Convo_Core_1x1 core(
        .Data_In(reg_Data_Out),
        .Kernel(Kernel),
        .Valid_In(1'b1),
        .Data_Out(Data_Out),
        .Valid_Out()
    );


    
endmodule