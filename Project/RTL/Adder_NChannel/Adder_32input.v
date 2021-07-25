module Adder_32input(
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
    input [31:0] Data17,
    input [31:0] Data18,
    input [31:0] Data19,
    input [31:0] Data20,
    input [31:0] Data21,
    input [31:0] Data22,
    input [31:0] Data23,
    input [31:0] Data24,
    input [31:0] Data25,
    input [31:0] Data26,
    input [31:0] Data27,
    input [31:0] Data28,
    input [31:0] Data29,
    input [31:0] Data30,
    input [31:0] Data31,
    input [31:0] Data32,
    input Valid_In,
    output [31:0] Data_Out,
    output Valid_Out
);  
    wire[31:0] Data_Out1,Data_Out2;
    wire add0_Valid_Out;

    Adder_16input add0[1:0] (
        .Data1({Data1,Data17}),
        .Data2({Data2,Data18}),
        .Data3({Data3,Data19}),
        .Data4({Data4,Data20}),
        .Data5({Data5,Data21}),
        .Data6({Data6,Data22}),
        .Data7({Data7,Data23}),
        .Data8({Data8,Data24}),
        .Data9({Data9,Data25}),
        .Data10({Data10,Data26}),
        .Data11({Data11,Data27}),
        .Data12({Data12,Data28}),
        .Data13({Data13,Data29}),
        .Data14({Data14,Data30}),
        .Data15({Data15,Data31}),
        .Data16({Data16,Data32}),
        .Valid_In(Valid_In),
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