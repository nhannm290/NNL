module Find_Max_3x3 (
    input [31:0] Data_In0,
    input [31:0] Data_In1,
    input [31:0] Data_In2,
    input [31:0] Data_In3,
    input [31:0] Data_In4,
    input [31:0] Data_In5,
    input [31:0] Data_In6,
    input [31:0] Data_In7,
    input [31:0] Data_In8,
    input Valid_In,
    input clk,
    input rst,
    output [31:0] Data_Out,
    output Valid_Out
);
    reg[31:0] Counter = 0;
    //Controler
    assign Valid_Out= (Valid_In ==1)? 1'd1:1'd0;


    // 1F Pipeline
    wire [31:0] sub0_Data_Out0,sub0_Data_Out1,sub0_Data_Out2,sub0_Data_Out3;

    FP_Adder sub0[3:0] (
        .Data_A({Data_In0,Data_In2,Data_In4,Data_In6}),
        .Data_B({Data_In1,Data_In3,Data_In5,Data_In7}),
        .Valid_In(Valid_In),
        .Mode(1'b1),
        .RMode(2'b0),
        .Data_Out({sub0_Data_Out0,sub0_Data_Out1,sub0_Data_Out2,sub0_Data_Out3}),
        .Valid_Out()
    );
    
    wire [31:0] mux0_Data_Out0,mux0_Data_Out1,mux0_Data_Out2,mux0_Data_Out3;

    Mux_nbit #(.DATA_WIDHT(32))
        mux0 [3:0](
            .Data_A({Data_In0,Data_In2,Data_In4,Data_In6}),
            .Data_B({Data_In1,Data_In3,Data_In5,Data_In7}),
            .Select({sub0_Data_Out0[31],sub0_Data_Out1[31],sub0_Data_Out2[31],sub0_Data_Out3[31]}),
            .Data_Out({mux0_Data_Out0,mux0_Data_Out1,mux0_Data_Out2,mux0_Data_Out3})
        );

    wire [31:0] reg0_Data_Out0,reg0_Data_Out1,reg0_Data_Out2,reg0_Data_Out3,reg0_Data_Out4;



    wire [31:0] sub1_Data_Out0,sub1_Data_Out1;

    FP_Adder sub1 [1:0] (
        .Data_A({mux0_Data_Out0,mux0_Data_Out2}),
        .Data_B({mux0_Data_Out1,mux0_Data_Out3}),
        .Valid_In(Valid_In),
        .Mode(1'b1),
        .RMode(2'b0),
        .Data_Out({sub1_Data_Out0,sub1_Data_Out1}),
        .Valid_Out()
    );

    wire [31:0] mux1_Data_Out0,mux1_Data_Out1;

    Mux_nbit #(.DATA_WIDHT(32))
        mux1 [1:0] (
            .Data_A({mux0_Data_Out0,mux0_Data_Out2}),
            .Data_B({mux0_Data_Out1,mux0_Data_Out3}),
            .Select({sub1_Data_Out0[31],sub1_Data_Out1[31]}),
            .Data_Out({mux1_Data_Out0,mux1_Data_Out1})
        );

    wire [31:0] reg1_Data_Out0,reg1_Data_Out1,reg1_Data_Out2;



    wire [31:0] sub2_Data_Out;

    FP_Adder sub2 (
        .Data_A(mux1_Data_Out0),
        .Data_B(mux1_Data_Out1),
        .Valid_In(Valid_In),
        .Mode(1'b1),
        .RMode(2'b0),
        .Data_Out(sub2_Data_Out),
        .Valid_Out()
    );

    wire [31:0] mux2_Data_Out;

    Mux_nbit#(.DATA_WIDHT(32)) 
        mux2 (
            .Data_A(mux1_Data_Out0),
            .Data_B(mux1_Data_Out1),
            .Select(sub2_Data_Out[31]),
            .Data_Out(mux2_Data_Out)
        );
    
    wire [31:0] reg2_Data_Out0,reg2_Data_Out1;



    wire [31:0] sub3_Data_Out;
    wire sub3_Valid_Out;

    FP_Adder sub3 (
        .Data_A(mux2_Data_Out),
        .Data_B(Data_In8),
        .Valid_In(Valid_In),
        .Mode(1'b1),
        .RMode(2'b0),
        .Data_Out(sub3_Data_Out),
        .Valid_Out(sub3_Valid_Out)
    );
    
    wire [31:0] mux3_Data_Out;

    Mux_nbit #(.DATA_WIDHT(32)) 
        mux3(
            .Data_A(mux2_Data_Out),
            .Data_B(Data_In8),
            .Select(sub3_Data_Out[31]),
            .Data_Out(Data_Out)
        );


endmodule