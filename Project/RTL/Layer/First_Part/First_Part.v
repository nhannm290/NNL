module First_Part #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDHT = 48,
    parameter IMG_HEIGHT =48
)
(
    input [DATA_WIDHT-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output wire [DATA_WIDHT*8-1:0] Data_Out,
    output Valid_Out
);

    wire [DATA_WIDHT*8-1:0] l1_Data_Out;

    wire l1_Value_Out;
    Layer1 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        l1(
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(l1_Data_Out),
            .Valid_Out(l1_Value_Out)
        );
    
    Layer2 # (
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(IMG_WIDHT-2),
        .IMG_HEIGHT(IMG_HEIGHT-2)
    )
        l2(
            .Data_In(l1_Data_Out),
            .clk(clk),
            .rst(rst),
            .Valid_In(l1_Value_Out),
            .Data_Out(Data_Out),
            .Valid_Out(Valid_Out)
        );
endmodule