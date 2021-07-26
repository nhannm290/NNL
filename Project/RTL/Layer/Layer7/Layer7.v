module Layer7 #(
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
    wire [DATA_WIDHT*7-1:0] Convo_Data_Out;
    wire Convo_Valid_Out;

    Convo_Layer7 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        convo (
            .Data_In(Data_In),
            .Valid_In(Valid_In),
            .clk(clk),
            .rst(rst),
            .Data_Out(Convo_Data_Out),
            .Valid_Out(Convo_Valid_Out)
        );
    
    Global_AVG_Pooling #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        gl_avg(
             .Data_In(Convo_Data_Out),
            .Valid_In(Convo_Valid_Out),
            .clk(clk),
            .rst(rst),
            .Data_Out(Data_Out),
            .Valid_Out(Valid_Out)
        );
endmodule