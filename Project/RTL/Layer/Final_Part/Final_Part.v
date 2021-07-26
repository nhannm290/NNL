module Final_Part #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)

(
    input [DATA_WIDHT*128-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*7-1:0] Data_Out,
    output Valid_Out    
);
    wire [DATA_WIDHT*7-1:0] layer7_block_Data_Out;
    Layer7 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
        )
        layer7_block (
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(layer7_block_Data_Out),
            .Valid_Out(layer7_block_Valid_Out)
        );
    
    softmax sm(
        .class0(layer7_block_Data_Out[DATA_WIDHT-1:0]),
        .class1(layer7_block_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT]),
        .class2(layer7_block_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2]),
        .class3(layer7_block_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3]),
        .class4(layer7_block_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4]),
        .class5(layer7_block_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5]),
        .class6(layer7_block_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]),
        .clk(clk),
        .rst(rst),
        .valid_in(layer7_block_Valid_Out),
        .out0(Data_Out[DATA_WIDHT-1:0]),
        .out1(Data_Out[DATA_WIDHT*2-1:DATA_WIDHT]),
        .out2(Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2]),
        .out3(Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3]),
        .out4(Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4]),
        .out5(Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5]),
        .out6(Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]),
        .valid_out(Valid_Out)
    );

endmodule