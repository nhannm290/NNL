module Residual_Block #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*8-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*128-1:0] Data_Out,
    output Valid_Out    
);
    wire [DATA_WIDHT*16-1:0] Residual_Block0_Data_Out;
    wire [DATA_WIDHT*32-1:0] Residual_Block1_Data_Out;
    wire [DATA_WIDHT*64-1:0] Residual_Block2_Data_Out;
    wire [DATA_WIDHT*128-1:0] Residual_Block3_Data_Out;

    wire Residual_Block0_Valid_Out,Residual_Block1_Valid_Out,Residual_Block2_Valid_Out,Residual_Block3_Valid_Out;
    
    Layer3 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
        )
        Residual_Block0 (
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Residual_Block0_Data_Out),
            .Valid_Out(Residual_Block0_Valid_Out)
        );

    Layer4 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
        )
        Residual_Block1 (
            .Data_In(Residual_Block0_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(Residual_Block0_Valid_Out),
            .Data_Out(Residual_Block1_Data_Out),
            .Valid_Out(Residual_Block1_Valid_Out)
        );
    
    Layer5 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
        )
        Residual_Block2 (
            .Data_In(Residual_Block1_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(Residual_Block1_Valid_Out),
            .Data_Out(Residual_Block2_Data_Out),
            .Valid_Out(Residual_Block2_Valid_Out)
        );

    Layer6 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
        )
        Residual_Block3 (
            .Data_In(Residual_Block2_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(Residual_Block2_Valid_Out),
            .Data_Out(Data_Out),
            .Valid_Out(Valid_Out)
        );

endmodule