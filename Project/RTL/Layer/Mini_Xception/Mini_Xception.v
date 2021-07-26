module Mini_Xception #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDHT = 48,
    parameter IMG_HEIGHT =48
)
(
    input [DATA_WIDHT-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output wire [DATA_WIDHT*7-1:0] Data_Out,
    output Valid_Out
);
    wire [DATA_WIDHT*8-1:0] first_Data_Out;
    wire [DATA_WIDHT*128-1:0] residual_Data_Out;

    First_Part #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        first(
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(first_Data_Out),
            .Valid_Out(first_Value_Out)
        );

    Residual_Block #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(IMG_WIDHT-4),
        .IMG_HEIGHT(IMG_HEIGHT-4)
    )
        residual(
            .Data_In(first_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(first_Value_Out),
            .Data_Out(residual_Data_Out),
            .Valid_Out(residual_Value_Out)
        );    
    
    Final_Part #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(IMG_WIDHT-4),
        .IMG_HEIGHT(IMG_HEIGHT-4)
    )
        residual(
            .Data_In(residual_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(residual_Value_Out),
            .Data_Out(Data_Out),
            .Valid_Out(Valid_Out)
        );  
    
endmodule