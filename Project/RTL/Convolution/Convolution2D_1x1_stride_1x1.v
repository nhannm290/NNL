module Convolution2D_1x1_stride_1x1 (
    input [31:0] Data_In,
    input [31:0] Kernel,
    input Valid_In,
    input clk,
    input rst,
    output [31:0] Data_Out,
    output Valid_Out
    
);
    wire [31:0] core_Data_Out;


    assign Valid_Out= (Valid_In)? 1:0;

    Convo_Core_1x1 core(
        .Data_In(Data_In),
        .Kernel(Kernel),
        .Valid_In(Valid_In),
        .Data_Out(core_Data_Out),
        .Valid_Out()
    );

    nbit_Dff #(
        .DATA_WIDHT(32)
    ) 
    reg0(
        .Data_In(core_Data_Out),
        .clk(clk),
        .enable(1'b1),
        .rst(rst),
        .Data_Out(Data_Out)
    );

    
endmodule