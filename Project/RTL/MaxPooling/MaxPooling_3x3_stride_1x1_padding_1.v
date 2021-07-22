module MaxPooling_3x3_stride_1x1_padding_1 #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [31:0] Data_In,
    input Valid_In,
    input clk,
    input rst,
    output [31:0] Data_Out,
    output Valid_Out
);
    wire [31:0] kernel_Data_Out1,kernel_Data_Out2,kernel_Data_Out3,kernel_Data_Out4,kernel_Data_Out5,kernel_Data_Out6,kernel_Data_Out7,kernel_Data_Out8,kernel_Data_Out9;
    wire kernel_Valid_Out;

    Kernel_3x3_stride_1x1_padding_1 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        kernel (
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_in(Valid_In),
            .Data_Out1(kernel_Data_Out1),
            .Data_Out2(kernel_Data_Out2),
            .Data_Out3(kernel_Data_Out3),
            .Data_Out4(kernel_Data_Out4),
            .Data_Out5(kernel_Data_Out5),
            .Data_Out6(kernel_Data_Out6),
            .Data_Out7(kernel_Data_Out7),
            .Data_Out8(kernel_Data_Out8),
            .Data_Out9(kernel_Data_Out9),
            .Valid_Out(kernel_Valid_Out)
        );
    
    Find_Max_3x3 
    max_core(
        .Data_In0(kernel_Data_Out1),
        .Data_In1(kernel_Data_Out2),
        .Data_In2(kernel_Data_Out3),
        .Data_In3(kernel_Data_Out4),
        .Data_In4(kernel_Data_Out5),
        .Data_In5(kernel_Data_Out6),
        .Data_In6(kernel_Data_Out7),
        .Data_In7(kernel_Data_Out8),
        .Data_In8(kernel_Data_Out9),
        .Valid_In(kernel_Valid_Out),
        .clk(clk),
        .rst(rst),
        .Data_Out(Data_Out),
        .Valid_Out(Valid_Out)
    );


endmodule