module Depthwise_Part1_Separable_8CHANNEL #(
    parameter DATA_WIDHT = 32, 
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*8-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*8-1:0] Data_Out,
    output Valid_Out
);
    wire CHANNEL1_Valid_Out,CHANNEL2_Valid_Out,CHANNEL3_Valid_Out,CHANNEL4_Valid_Out,CHANNEL5_Valid_Out,CHANNEL6_Valid_Out,CHANNEL7_Valid_Out,CHANNEL8_Valid_Out;

    assign Valid_Out = CHANNEL1_Valid_Out&CHANNEL2_Valid_Out&CHANNEL3_Valid_Out&CHANNEL4_Valid_Out&CHANNEL5_Valid_Out&CHANNEL6_Valid_Out&CHANNEL7_Valid_Out&CHANNEL8_Valid_Out;


    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL1 (
            .Data_In(Data_In[DATA_WIDHT-1:0]),
            .Kernel0(32'b00111101100101001011110111101100),
            .Kernel1(32'b00111110100101110111010001000110),
            .Kernel2(32'b10111011000101001011100010101001),
            .Kernel3(32'b00111110100010001010110110001011),
            .Kernel4(32'b00111011111110000100010011100110),
            .Kernel5(32'b00111110101010100000101001101000),
            .Kernel6(32'b00111110110000110001110110011101),
            .Kernel7(32'b00111111010011010001101110001001),
            .Kernel8(32'b00111101110100101100111011011001),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT-1:0]),
            .Valid_Out(CHANNEL1_Valid_Out)
        );

    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL2 (
            .Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
            .Kernel0(32'b10111111000001100111110110011010),
            .Kernel1(32'b10111111001100101111010010111010),
            .Kernel2(32'b10111110111011100001110111110111),
            .Kernel3(32'b00111110011010001110011101000110),
            .Kernel4(32'b10111110110100100000111111111001),
            .Kernel5(32'b00111110111110001111110000101011),
            .Kernel6(32'b10111110111101111101010111111000),
            .Kernel7(32'b10111110000101110010000000110100),
            .Kernel8(32'b10111101010010111010110100010101),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*2-1:DATA_WIDHT]),
            .Valid_Out(CHANNEL2_Valid_Out)
        );

    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL3 (
            .Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
            .Kernel0(32'b00111100111100000100001100101001),
            .Kernel1(32'b00111101101101100001010011111110),
            .Kernel2(32'b00111101010011011010110011101111),
            .Kernel3(32'b00111110101100101000111011110011),
            .Kernel4(32'b00111111000110010011110011011011),
            .Kernel5(32'b10111111000111110100010010110111),
            .Kernel6(32'b00111110011111001100010100110010),
            .Kernel7(32'b00111110100101000010101111101110),
            .Kernel8(32'b10111111000110100110100100010001),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2]),
            .Valid_Out(CHANNEL3_Valid_Out)
        );

    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL4 (
            .Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
            .Kernel0(32'b10111110010000111100001001101111),
            .Kernel1(32'b10111110110111101100111111010011),
            .Kernel2(32'b10111110111001111001111011000111),
            .Kernel3(32'b00111110100001000110111101001111),
            .Kernel4(32'b10111110110001011110101011101010),
            .Kernel5(32'b10111011001100011111010000001110),
            .Kernel6(32'b10111110110100001101101111001000),
            .Kernel7(32'b00111110110000110111111110001111),
            .Kernel8(32'b10111111001010110101101100010000),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3]),
            .Valid_Out(CHANNEL4_Valid_Out)
        );

    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL5 (
            .Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
            .Kernel0(32'b00111110010001110101001101101000),
            .Kernel1(32'b00111110001101001100101110000011),
            .Kernel2(32'b10111101111001011011010011011001),
            .Kernel3(32'b00111111001010111000010010000100),
            .Kernel4(32'b10111110101100001111100111011011),
            .Kernel5(32'b00111111000000011110100001000110),
            .Kernel6(32'b00111110111101100010100111111110),
            .Kernel7(32'b10111111000111000010010001110110),
            .Kernel8(32'b10111110011001011101011011111100),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4]),
            .Valid_Out(CHANNEL5_Valid_Out)
        );


    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL6 (
            .Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
            .Kernel0(32'b00111110001001100011011100010000),
            .Kernel1(32'b00111110100101110010111110010101),
            .Kernel2(32'b00111101001010100000000110000110),
            .Kernel3(32'b10111111001010001000010011100000),
            .Kernel4(32'b00111111000101101000001011010001),
            .Kernel5(32'b10111111001100001000110100110010),
            .Kernel6(32'b10111110100011000010011001010100),
            .Kernel7(32'b10111110100111010111000110001101),
            .Kernel8(32'b10111110001101011110010011011101),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5]),
            .Valid_Out(CHANNEL6_Valid_Out)
        );

    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL7 (
            .Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
            .Kernel0(32'b10111110110000110101000100100010),
            .Kernel1(32'b00111110100100101000100000011011),
            .Kernel2(32'b10111110001001000011011011110000),
            .Kernel3(32'b00111111010000100000101111100010),
            .Kernel4(32'b00111101100101110001111100000101),
            .Kernel5(32'b00111110110001110001000011110011),
            .Kernel6(32'b10111110101101111111011101011000),
            .Kernel7(32'b10111101111100111111110100001001),
            .Kernel8(32'b10111110100111100111110001101000),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]),
            .Valid_Out(CHANNEL7_Valid_Out)
        );


    Convolution2D_3x3_stride_1x1_padding_1x1 #(
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        CHANNEL8 (
            .Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
            .Kernel0(32'b00111101100010011001010110101101),
            .Kernel1(32'b10111110111100011101011011111110),
            .Kernel2(32'b10111111001010101101100100101001),
            .Kernel3(32'b00111111001100010100101110011010),
            .Kernel4(32'b00111111000110010011010000100010),
            .Kernel5(32'b10111110001000100110100111001011),
            .Kernel6(32'b00111110110001111100101100000100),
            .Kernel7(32'b00111110110100011010011011011111),
            .Kernel8(32'b00111101110000010000110010010111),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7]),
            .Valid_Out(CHANNEL8_Valid_Out)
        );

endmodule