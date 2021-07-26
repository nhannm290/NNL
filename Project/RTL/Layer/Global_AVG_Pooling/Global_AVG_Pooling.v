module Global_AVG_Pooling #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDTH = 34,
    parameter IMG_HEIGHT =34
)
(
    input [DATA_WIDHT*7-1:0] Data_In,
    input Valid_In,
    input clk,
    input rst,
    output [DATA_WIDHT*7-1:0] Data_Out,
    output reg Valid_Out
);
    wire [31:0] CHANNEL1_TEMP,CHANNEL2_TEMP,CHANNEL3_TEMP,CHANNEL4_TEMP,CHANNEL5_TEMP,CHANNEL6_TEMP,CHANNEL7_TEMP;
    wire [31:0] CHANNEL1_Data_Out,CHANNEL2_Data_Out,CHANNEL3_Data_Out,CHANNEL4_Data_Out,CHANNEL5_Data_Out,CHANNEL6_Data_Out,CHANNEL7_Data_Out;

    wire add_Valid_Out;

    wire [31:0] reg_Data_Out1,reg_Data_Out2,reg_Data_Out3,reg_Data_Out4,reg_Data_Out5,reg_Data_Out6,reg_Data_Out7;

    reg[9:0] Counter =0;


    assign CHANNEL1_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out1;
    assign CHANNEL2_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out2;
    assign CHANNEL3_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out3;
    assign CHANNEL4_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out4;
    assign CHANNEL5_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out5;
    assign CHANNEL6_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out6;
    assign CHANNEL7_TEMP = (Counter ==0) ? 32'd0:reg_Data_Out7;


    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            Counter <= 0;
            Valid_Out <=0;
        end
        else if (Valid_In) begin
            if (Counter != IMG_HEIGHT*IMG_WIDTH-1) Counter <= Counter +1'b1;
            else if (Counter == IMG_HEIGHT*IMG_WIDTH-1) begin
                Valid_Out <= 1'b1;
                Counter <=0;
            end
        end
        else Counter <= Counter;
    end

    FP_Adder add[6:0](
        .Data_A({Data_In[DATA_WIDHT-1:0],Data_In[DATA_WIDHT*2-1:DATA_WIDHT],Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2],Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3],Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4],Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5],Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .Data_B({CHANNEL1_TEMP,CHANNEL2_TEMP,CHANNEL3_TEMP,CHANNEL4_TEMP,CHANNEL5_TEMP,CHANNEL6_TEMP,CHANNEL7_TEMP}),
        .Valid_In(Valid_In),
        .Mode(1'b0),
        .RMode(2'b0),
        .Data_Out({CHANNEL1_Data_Out,CHANNEL2_Data_Out,CHANNEL3_Data_Out,CHANNEL4_Data_Out,CHANNEL5_Data_Out,CHANNEL6_Data_Out,CHANNEL7_Data_Out}),
        .Valid_Out(add_Valid_Out)
    );

    nbit_Dff #(.DATA_WIDHT(32)) reg0[6:0](
        .Data_In({{CHANNEL1_Data_Out,CHANNEL2_Data_Out,CHANNEL3_Data_Out,CHANNEL4_Data_Out,CHANNEL5_Data_Out,CHANNEL6_Data_Out,CHANNEL7_Data_Out}}),
        .clk(clk),
        .rst(rst),
        .enable(1'b1),
        .Data_Out({reg_Data_Out1,reg_Data_Out2,reg_Data_Out3,reg_Data_Out4,reg_Data_Out5,reg_Data_Out6,reg_Data_Out7})
    );

    FP_Mul mul[6:0] (
        .data_iA({reg_Data_Out1,reg_Data_Out2,reg_Data_Out3,reg_Data_Out4,reg_Data_Out5,reg_Data_Out6,reg_Data_Out7}),
        .data_iB({32'h3a62c4a6,32'h3a62c4a6,32'h3a62c4a6,32'h3a62c4a6,32'h3a62c4a6,32'h3a62c4a6,32'h3a62c4a6}),
        .Valid_In(add_Valid_Out),
        .data_o({Data_Out[DATA_WIDHT-1:0],Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .Valid_Out()
    );


endmodule