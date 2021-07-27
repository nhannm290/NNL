module Global_AVG_Pooling #(
    parameter DATA_WIDHT = 32,
    parameter IMG_WIDTH = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*7-1:0] Data_In,
    input Valid_In,
    input clk,
    input rst,
    output [DATA_WIDHT*7-1:0] Data_Out,
    output Valid_Out
);
    wire adder_Valid_Out;
    
    wire[DATA_WIDHT*7-1:0] Adder_Data_Out;

    reg [DATA_WIDHT*7-1:0] Data_Out_Temp;

    reg [31:0] Counter = 0;

    always @(posedge clk or negedge rst) begin
        if (~rst) Counter = 0;
        else if (Valid_In) begin
            if (Counter < IMG_WIDTH*IMG_HEIGHT) Counter <= Counter +1'b1;
            else if (Counter == IMG_WIDTH*IMG_HEIGHT ) Counter <= 0;
        end
        else Counter <= Counter;
    end

    always @(posedge clk or negedge rst) begin
        if(~rst) Data_Out_Temp <= 224'b0;
        else if (Valid_In) begin
            if (Counter == 0)  Data_Out_Temp <= 224'b0;
            else Data_Out_Temp <= Adder_Data_Out;
        end
        else Data_Out_Temp <= Data_Out_Temp;
    end

    assign Valid_Out = (Counter == IMG_WIDTH*IMG_HEIGHT )? 1 :0;

    FP_Adder add[6:0](
        .Data_A({Data_In[DATA_WIDHT-1:0],Data_In[DATA_WIDHT*2-1:DATA_WIDHT],Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2],Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3],Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4],Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5],Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .Data_B({Data_Out_Temp[DATA_WIDHT-1:0],Data_Out_Temp[DATA_WIDHT*2-1:DATA_WIDHT],Data_Out_Temp[DATA_WIDHT*3-1:DATA_WIDHT*2],Data_Out_Temp[DATA_WIDHT*4-1:DATA_WIDHT*3],Data_Out_Temp[DATA_WIDHT*5-1:DATA_WIDHT*4],Data_Out_Temp[DATA_WIDHT*6-1:DATA_WIDHT*5],Data_Out_Temp[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .Valid_In(Valid_In),
        .Mode(1'b0),
        .RMode(2'b0),
        .Data_Out({Adder_Data_Out[DATA_WIDHT-1:0],Adder_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Adder_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Adder_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Adder_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Adder_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Adder_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .Valid_Out(adder_Valid_Out)
    );
    FP_Mul mul[6:0] (
        .data_iA({Adder_Data_Out[DATA_WIDHT-1:0],Adder_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Adder_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Adder_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Adder_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Adder_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Adder_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .data_iB({32'h3a0767ab,32'h3a0767ab,32'h3a0767ab,32'h3a0767ab,32'h3a0767ab,32'h3a0767ab,32'h3a0767ab}),
        .Valid_In(adder_Valid_Out),
        .data_o({Data_Out[DATA_WIDHT-1:0],Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]}),
        .Valid_Out()
    );


endmodule