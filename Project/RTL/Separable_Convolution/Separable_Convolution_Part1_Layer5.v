module Separable_Convolution_Part1_Layer5 #(
    parameter DATA_WIDHT = 32, 
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*32-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*64-1:0] Data_Out,
    output Valid_Out

);

   wire [DATA_WIDHT*32-1:0] part1_Data_Out;
    wire part1_Valid_Out;

    Depthwise_Part1_Separable_32CHANNEL_Layer5 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        part1(
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(part1_Data_Out),
            .Valid_Out(part1_Valid_Out)
        );
    
    Depthwise_Part2_Separable_64CHANNEL_Layer5  #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        part2(
            .Data_In(part1_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(part1_Valid_Out),
            .Data_Out(Data_Out),
            .Valid_Out(Valid_Out)
        );
    
endmodule