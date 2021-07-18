module Separable_Convolution_8Channel #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDTH = 44,
    parameter IMG_HEIGHT = 44
)
(
    input[DATA_WIDHT*8-1:0] Data_In,
    input Valid_In,
    input clk,
    input rst,
    output[DATA_WIDHT*16-1:0] Data_Out,
    output Valid_Out
);
    wire [DATA_WIDHT*8-1:0] p1_Data_Out;
    wire p2_Valid_Out;
    Depthwise_Part1_Separable_8CHANNEL #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDTH),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
    p1(
        .Data_In(Data_In),
        .clk(clk),
        .rst(rst),
        .Valid_In(Valid_In),
        .Data_Out(p1_Data_Out),
        .Valid_Out(p2_Valid_Out)
    );

    Depthwise_Part2_Separable_8CHANNEL #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDTH),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
    p2 (
        .Data_In(p1_Data_Out),
        .clk(clk),
        .rst(rst),
        .Valid_In(p2_Valid_Out),
        .Data_Out(Data_Out),
        .Valid_Out(Valid_Out)
    );
    
endmodule