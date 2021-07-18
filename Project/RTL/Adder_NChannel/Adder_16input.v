module Adder_16input (
    input [31:0] Data1,
    input [31:0] Data2,
    input [31:0] Data3,
    input [31:0] Data4,
    input [31:0] Data5,
    input [31:0] Data6,
    input [31:0] Data7,
    input [31:0] Data8,
    input [31:0] Data9,
    input [31:0] Data10,
    input [31:0] Data11,
    input [31:0] Data12,
    input [31:0] Data13,
    input [31:0] Data14,
    input [31:0] Data15,
    input [31:0] Data16,
    input Valid_In,
    output [31:0] Data_Out,
    output Valid_Out
);  
    wire[31:0] Data_Out1,Data_Out2;
    wire add0_Valid_Out;

    Adder_8input add0[1:0] (
        .Data1({Data1,Data9}),
        .Data2({Data2,Data10}),
        .Data3({Data3,Data11}),
        .Data4({Data4,Data12}),
        .Data5({Data5,Data13}),
        .Data6({Data6,Data14}),
        .Data7({Data7,Data15}),
        .Data8({Data8,Data16}),
        .Vadi_In(Valid_In),
        .Data_Out({Data_Out1,Data_Out2}),
        .Valid_Out(add0_Valid_Out)
    );

    FP_Adder add2 (
        .Data_A(Data_Out1), 
        .Data_B(Data_Out2),
        .Valid_In(add0_Valid_Out),
        .Mode(1'b0),
        .RMode(2'b0),
        .Data_Out(Data_Out),
        .Valid_Out(Valid_Out)
    );
    
endmodule