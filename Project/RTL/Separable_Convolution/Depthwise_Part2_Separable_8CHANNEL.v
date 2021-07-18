module Depthwise_Part2_Separable_8CHANNEL #(
    parameter DATA_WIDHT = 32, 
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*8-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*16-1:0] Data_Out,
    output Valid_Out
);
    wire [DATA_WIDHT*16-1:0] Data_Out_Kernel1,Data_Out_Kernel2,Data_Out_Kernel3,Data_Out_Kernel4,Data_Out_Kernel5,Data_Out_Kernel6,Data_Out_Kernel7,Data_Out_Kernel8,Data_Out_Kernel9,Data_Out_Kernel10,Data_Out_Kernel11,Data_Out_Kernel12,Data_Out_Kernel13,Data_Out_Kernel14,Data_Out_Kernel15,Data_Out_Kernel16;

	wire channel1_Kernel1_Valid_Out, channel2_Kernel1_Valid_Out, channel3_Kernel1_Valid_Out, channel4_Kernel1_Valid_Out, channel5_Kernel1_Valid_Out, channel6_Kernel1_Valid_Out, channel7_Kernel1_Valid_Out, channel8_Kernel1_Valid_Out;

	assign add_kernel1=channel1_Kernel1_Valid_Out & channel2_Kernel1_Valid_Out & channel3_Kernel1_Valid_Out & channel4_Kernel1_Valid_Out & channel5_Kernel1_Valid_Out & channel6_Kernel1_Valid_Out & channel7_Kernel1_Valid_Out & channel8_Kernel1_Valid_Out;


	wire channel1_Kernel2_Valid_Out, channel2_Kernel2_Valid_Out, channel3_Kernel2_Valid_Out, channel4_Kernel2_Valid_Out, channel5_Kernel2_Valid_Out, channel6_Kernel2_Valid_Out, channel7_Kernel2_Valid_Out, channel8_Kernel2_Valid_Out;

	assign add_kernel2=channel1_Kernel2_Valid_Out & channel2_Kernel2_Valid_Out & channel3_Kernel2_Valid_Out & channel4_Kernel2_Valid_Out & channel5_Kernel2_Valid_Out & channel6_Kernel2_Valid_Out & channel7_Kernel2_Valid_Out & channel8_Kernel2_Valid_Out;


	wire channel1_Kernel3_Valid_Out, channel2_Kernel3_Valid_Out, channel3_Kernel3_Valid_Out, channel4_Kernel3_Valid_Out, channel5_Kernel3_Valid_Out, channel6_Kernel3_Valid_Out, channel7_Kernel3_Valid_Out, channel8_Kernel3_Valid_Out;

	assign add_kernel3=channel1_Kernel3_Valid_Out & channel2_Kernel3_Valid_Out & channel3_Kernel3_Valid_Out & channel4_Kernel3_Valid_Out & channel5_Kernel3_Valid_Out & channel6_Kernel3_Valid_Out & channel7_Kernel3_Valid_Out & channel8_Kernel3_Valid_Out;


	wire channel1_Kernel4_Valid_Out, channel2_Kernel4_Valid_Out, channel3_Kernel4_Valid_Out, channel4_Kernel4_Valid_Out, channel5_Kernel4_Valid_Out, channel6_Kernel4_Valid_Out, channel7_Kernel4_Valid_Out, channel8_Kernel4_Valid_Out;

	assign add_kernel4=channel1_Kernel4_Valid_Out & channel2_Kernel4_Valid_Out & channel3_Kernel4_Valid_Out & channel4_Kernel4_Valid_Out & channel5_Kernel4_Valid_Out & channel6_Kernel4_Valid_Out & channel7_Kernel4_Valid_Out & channel8_Kernel4_Valid_Out;


	wire channel1_Kernel5_Valid_Out, channel2_Kernel5_Valid_Out, channel3_Kernel5_Valid_Out, channel4_Kernel5_Valid_Out, channel5_Kernel5_Valid_Out, channel6_Kernel5_Valid_Out, channel7_Kernel5_Valid_Out, channel8_Kernel5_Valid_Out;

	assign add_kernel5=channel1_Kernel5_Valid_Out & channel2_Kernel5_Valid_Out & channel3_Kernel5_Valid_Out & channel4_Kernel5_Valid_Out & channel5_Kernel5_Valid_Out & channel6_Kernel5_Valid_Out & channel7_Kernel5_Valid_Out & channel8_Kernel5_Valid_Out;


	wire channel1_Kernel6_Valid_Out, channel2_Kernel6_Valid_Out, channel3_Kernel6_Valid_Out, channel4_Kernel6_Valid_Out, channel5_Kernel6_Valid_Out, channel6_Kernel6_Valid_Out, channel7_Kernel6_Valid_Out, channel8_Kernel6_Valid_Out;

	assign add_kernel6=channel1_Kernel6_Valid_Out & channel2_Kernel6_Valid_Out & channel3_Kernel6_Valid_Out & channel4_Kernel6_Valid_Out & channel5_Kernel6_Valid_Out & channel6_Kernel6_Valid_Out & channel7_Kernel6_Valid_Out & channel8_Kernel6_Valid_Out;


	wire channel1_Kernel7_Valid_Out, channel2_Kernel7_Valid_Out, channel3_Kernel7_Valid_Out, channel4_Kernel7_Valid_Out, channel5_Kernel7_Valid_Out, channel6_Kernel7_Valid_Out, channel7_Kernel7_Valid_Out, channel8_Kernel7_Valid_Out;

	assign add_kernel7=channel1_Kernel7_Valid_Out & channel2_Kernel7_Valid_Out & channel3_Kernel7_Valid_Out & channel4_Kernel7_Valid_Out & channel5_Kernel7_Valid_Out & channel6_Kernel7_Valid_Out & channel7_Kernel7_Valid_Out & channel8_Kernel7_Valid_Out;


	wire channel1_Kernel8_Valid_Out, channel2_Kernel8_Valid_Out, channel3_Kernel8_Valid_Out, channel4_Kernel8_Valid_Out, channel5_Kernel8_Valid_Out, channel6_Kernel8_Valid_Out, channel7_Kernel8_Valid_Out, channel8_Kernel8_Valid_Out;

	assign add_kernel8=channel1_Kernel8_Valid_Out & channel2_Kernel8_Valid_Out & channel3_Kernel8_Valid_Out & channel4_Kernel8_Valid_Out & channel5_Kernel8_Valid_Out & channel6_Kernel8_Valid_Out & channel7_Kernel8_Valid_Out & channel8_Kernel8_Valid_Out;


	wire channel1_Kernel9_Valid_Out, channel2_Kernel9_Valid_Out, channel3_Kernel9_Valid_Out, channel4_Kernel9_Valid_Out, channel5_Kernel9_Valid_Out, channel6_Kernel9_Valid_Out, channel7_Kernel9_Valid_Out, channel8_Kernel9_Valid_Out;

	assign add_kernel9=channel1_Kernel9_Valid_Out & channel2_Kernel9_Valid_Out & channel3_Kernel9_Valid_Out & channel4_Kernel9_Valid_Out & channel5_Kernel9_Valid_Out & channel6_Kernel9_Valid_Out & channel7_Kernel9_Valid_Out & channel8_Kernel9_Valid_Out;


	wire channel1_Kernel10_Valid_Out, channel2_Kernel10_Valid_Out, channel3_Kernel10_Valid_Out, channel4_Kernel10_Valid_Out, channel5_Kernel10_Valid_Out, channel6_Kernel10_Valid_Out, channel7_Kernel10_Valid_Out, channel8_Kernel10_Valid_Out;

	assign add_kernel10=channel1_Kernel10_Valid_Out & channel2_Kernel10_Valid_Out & channel3_Kernel10_Valid_Out & channel4_Kernel10_Valid_Out & channel5_Kernel10_Valid_Out & channel6_Kernel10_Valid_Out & channel7_Kernel10_Valid_Out & channel8_Kernel10_Valid_Out;


	wire channel1_Kernel11_Valid_Out, channel2_Kernel11_Valid_Out, channel3_Kernel11_Valid_Out, channel4_Kernel11_Valid_Out, channel5_Kernel11_Valid_Out, channel6_Kernel11_Valid_Out, channel7_Kernel11_Valid_Out, channel8_Kernel11_Valid_Out;

	assign add_kernel11=channel1_Kernel11_Valid_Out & channel2_Kernel11_Valid_Out & channel3_Kernel11_Valid_Out & channel4_Kernel11_Valid_Out & channel5_Kernel11_Valid_Out & channel6_Kernel11_Valid_Out & channel7_Kernel11_Valid_Out & channel8_Kernel11_Valid_Out;


	wire channel1_Kernel12_Valid_Out, channel2_Kernel12_Valid_Out, channel3_Kernel12_Valid_Out, channel4_Kernel12_Valid_Out, channel5_Kernel12_Valid_Out, channel6_Kernel12_Valid_Out, channel7_Kernel12_Valid_Out, channel8_Kernel12_Valid_Out;

	assign add_kernel12=channel1_Kernel12_Valid_Out & channel2_Kernel12_Valid_Out & channel3_Kernel12_Valid_Out & channel4_Kernel12_Valid_Out & channel5_Kernel12_Valid_Out & channel6_Kernel12_Valid_Out & channel7_Kernel12_Valid_Out & channel8_Kernel12_Valid_Out;


	wire channel1_Kernel13_Valid_Out, channel2_Kernel13_Valid_Out, channel3_Kernel13_Valid_Out, channel4_Kernel13_Valid_Out, channel5_Kernel13_Valid_Out, channel6_Kernel13_Valid_Out, channel7_Kernel13_Valid_Out, channel8_Kernel13_Valid_Out;

	assign add_kernel13=channel1_Kernel13_Valid_Out & channel2_Kernel13_Valid_Out & channel3_Kernel13_Valid_Out & channel4_Kernel13_Valid_Out & channel5_Kernel13_Valid_Out & channel6_Kernel13_Valid_Out & channel7_Kernel13_Valid_Out & channel8_Kernel13_Valid_Out;


	wire channel1_Kernel14_Valid_Out, channel2_Kernel14_Valid_Out, channel3_Kernel14_Valid_Out, channel4_Kernel14_Valid_Out, channel5_Kernel14_Valid_Out, channel6_Kernel14_Valid_Out, channel7_Kernel14_Valid_Out, channel8_Kernel14_Valid_Out;

	assign add_kernel14=channel1_Kernel14_Valid_Out & channel2_Kernel14_Valid_Out & channel3_Kernel14_Valid_Out & channel4_Kernel14_Valid_Out & channel5_Kernel14_Valid_Out & channel6_Kernel14_Valid_Out & channel7_Kernel14_Valid_Out & channel8_Kernel14_Valid_Out;


	wire channel1_Kernel15_Valid_Out, channel2_Kernel15_Valid_Out, channel3_Kernel15_Valid_Out, channel4_Kernel15_Valid_Out, channel5_Kernel15_Valid_Out, channel6_Kernel15_Valid_Out, channel7_Kernel15_Valid_Out, channel8_Kernel15_Valid_Out;

	assign add_kernel15=channel1_Kernel15_Valid_Out & channel2_Kernel15_Valid_Out & channel3_Kernel15_Valid_Out & channel4_Kernel15_Valid_Out & channel5_Kernel15_Valid_Out & channel6_Kernel15_Valid_Out & channel7_Kernel15_Valid_Out & channel8_Kernel15_Valid_Out;


	wire channel1_Kernel16_Valid_Out, channel2_Kernel16_Valid_Out, channel3_Kernel16_Valid_Out, channel4_Kernel16_Valid_Out, channel5_Kernel16_Valid_Out, channel6_Kernel16_Valid_Out, channel7_Kernel16_Valid_Out, channel8_Kernel16_Valid_Out;

	assign add_kernel16=channel1_Kernel16_Valid_Out & channel2_Kernel16_Valid_Out & channel3_Kernel16_Valid_Out & channel4_Kernel16_Valid_Out & channel5_Kernel16_Valid_Out & channel6_Kernel16_Valid_Out & channel7_Kernel16_Valid_Out & channel8_Kernel16_Valid_Out;


    wire[31:0] add_k1_Data_Out, add_k2_Data_Out, add_k3_Data_Out, add_k4_Data_Out, add_k5_Data_Out, add_k6_Data_Out, add_k7_Data_Out, add_k8_Data_Out, add_k9_Data_Out, add_k10_Data_Out, add_k11_Data_Out, add_k12_Data_Out, add_k13_Data_Out, add_k14_Data_Out, add_k15_Data_Out, add_k16_Data_Out;

	wire [31:0] bn1_Data_Out, bn2_Data_Out, bn3_Data_Out, bn4_Data_Out, bn5_Data_Out, bn6_Data_Out, bn7_Data_Out, bn8_Data_Out, bn9_Data_Out, bn10_Data_Out, bn11_Data_Out, bn12_Data_Out, bn13_Data_Out, bn14_Data_Out, bn15_Data_Out, bn16_Data_Out;

	wire bn1_Valid_Out, bn2_Valid_Out, bn3_Valid_Out, bn4_Valid_Out, bn5_Valid_Out, bn6_Valid_Out, bn7_Valid_Out, bn8_Valid_Out, bn9_Valid_Out, bn10_Valid_Out, bn11_Valid_Out, bn12_Valid_Out, bn13_Valid_Out, bn14_Valid_Out, bn15_Valid_Out, bn16_Valid_Out;

	wire rl1_Valid_Out, rl2_Valid_Out, rl3_Valid_Out, rl4_Valid_Out, rl5_Valid_Out, rl6_Valid_Out, rl7_Valid_Out, rl8_Valid_Out, rl9_Valid_Out, rl10_Valid_Out, rl11_Valid_Out, rl12_Valid_Out, rl13_Valid_Out, rl14_Valid_Out, rl15_Valid_Out, rl16_Valid_Out;

	assign Valid_Out = rl1_Valid_Out& rl2_Valid_Out& rl3_Valid_Out& rl4_Valid_Out& rl5_Valid_Out& rl6_Valid_Out& rl7_Valid_Out& rl8_Valid_Out& rl9_Valid_Out& rl10_Valid_Out& rl11_Valid_Out& rl12_Valid_Out& rl13_Valid_Out& rl14_Valid_Out& rl15_Valid_Out& rl16_Valid_Out;

//////////KERNEL1//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110010111010111101010011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111100100101010000010001011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Valid_Out(channel2_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101011110101111111100000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010000100100101110001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111011111000010011011111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101101011100101101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110100100110101001100110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111000111110010110100001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel1_Valid_Out)
	);
	Adder_8input add_k1(
		.Data1(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel1),
		.Data_Out(add_k1_Data_Out),
		.Valid_Out(add_kernel1_Valid_Out)
	);
	Batch_Norm bn_kernel1(
		.Data_A(32'b00111111010000011000011001101000),
		.Data_B(32'b10111110011000010011010010000110),
		.Data_In(add_k1_Data_Out),
		.Valid_In(add_kernel1_Valid_Out),
		.Data_Out(bn1_Data_Out),
		.Valid_Out(bn1_Valid_Out)
	);
	Relu_Core rl_kernel1(
		.Data_In(bn1_Data_Out),
		.Valid_In(bn1_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT-1:0]),
		.Valid_Out(rl1_Valid_Out)
	);
//////////KERNEL2//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110101010000101110011110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110110000101000000100100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111011111111111101010010101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111011110010110110101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110001110110000110100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101101101011010111000101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101001101100111010111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111010000110101100000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel2_Valid_Out)
	);
	Adder_8input add_k2(
		.Data1(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel2),
		.Data_Out(add_k2_Data_Out),
		.Valid_Out(add_kernel2_Valid_Out)
	);
	Batch_Norm bn_kernel2(
		.Data_A(32'b00111111010000110011000101100110),
		.Data_B(32'b10111110111010110110101101111110),
		.Data_In(add_k2_Data_Out),
		.Valid_In(add_kernel2_Valid_Out),
		.Data_Out(bn2_Data_Out),
		.Valid_Out(bn2_Valid_Out)
	);
	Relu_Core rl_kernel2(
		.Data_In(bn2_Data_Out),
		.Valid_In(bn2_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Valid_Out(rl2_Valid_Out)
	);
//////////KERNEL3//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110110111101011000000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110101011110000101001101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110100111110001110111001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111000100110101100001001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110101001110001001000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111001100110000001010011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101001100101000101101110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110010111100111001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel3_Valid_Out)
	);
	Adder_8input add_k3(
		.Data1(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel3),
		.Data_Out(add_k3_Data_Out),
		.Valid_Out(add_kernel3_Valid_Out)
	);
	Batch_Norm bn_kernel3(
		.Data_A(32'b00111111011000011110011111111101),
		.Data_B(32'b00111110101111111110001011100010),
		.Data_In(add_k3_Data_Out),
		.Valid_In(add_kernel3_Valid_Out),
		.Data_Out(bn3_Data_Out),
		.Valid_Out(bn3_Valid_Out)
	);
	Relu_Core rl_kernel3(
		.Data_In(bn3_Data_Out),
		.Valid_In(bn3_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(rl3_Valid_Out)
	);
//////////KERNEL4//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111111001101001111110000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101011111010110110100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100100100111111110110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111101000001011001010111001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110100000100001100111101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110000001001000000100001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110110100101111000000011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110111110000111100000100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel4_Valid_Out)
	);
	Adder_8input add_k4(
		.Data1(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel4),
		.Data_Out(add_k4_Data_Out),
		.Valid_Out(add_kernel4_Valid_Out)
	);
	Batch_Norm bn_kernel4(
		.Data_A(32'b00111111010101101111000010110110),
		.Data_B(32'b10111111001011001010000010010000),
		.Data_In(add_k4_Data_Out),
		.Valid_In(add_kernel4_Valid_Out),
		.Data_Out(bn4_Data_Out),
		.Valid_Out(bn4_Valid_Out)
	);
	Relu_Core rl_kernel4(
		.Data_In(bn4_Data_Out),
		.Valid_In(bn4_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(rl4_Valid_Out)
	);
//////////KERNEL5//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111100100010011011111111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101100110101110001010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111001100000101010001000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100110110110111001011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101010010001111100010110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111000101100110001010110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110110010111001100101000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110010100101110111001001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel5_Valid_Out)
	);
	Adder_8input add_k5(
		.Data1(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel5),
		.Data_Out(add_k5_Data_Out),
		.Valid_Out(add_kernel5_Valid_Out)
	);
	Batch_Norm bn_kernel5(
		.Data_A(32'b00111111100000011000111011011100),
		.Data_B(32'b10111111000100110000010010100101),
		.Data_In(add_k5_Data_Out),
		.Valid_In(add_kernel5_Valid_Out),
		.Data_Out(bn5_Data_Out),
		.Valid_Out(bn5_Valid_Out)
	);
	Relu_Core rl_kernel5(
		.Data_In(bn5_Data_Out),
		.Valid_In(bn5_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(rl5_Valid_Out)
	);
//////////KERNEL6//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110110000011011101011110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101111110011011000101101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110000110100111001001010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111011000110101111101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110111001000100111000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110111011011110001100010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101011011110010111000001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111000011011100111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel6_Valid_Out)
	);
	Adder_8input add_k6(
		.Data1(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel6),
		.Data_Out(add_k6_Data_Out),
		.Valid_Out(add_kernel6_Valid_Out)
	);
	Batch_Norm bn_kernel6(
		.Data_A(32'b00111111010101000101010000110000),
		.Data_B(32'b00111111011011010011011100010001),
		.Data_In(add_k6_Data_Out),
		.Valid_In(add_kernel6_Valid_Out),
		.Data_Out(bn6_Data_Out),
		.Valid_Out(bn6_Valid_Out)
	);
	Relu_Core rl_kernel6(
		.Data_In(bn6_Data_Out),
		.Valid_In(bn6_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(rl6_Valid_Out)
	);
//////////KERNEL7//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110011111011100110100110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111011110000111110000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101011100110010100011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110010110000010110111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110110010000000100001100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101110000000010100011010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111001000010101010100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101001011101001001010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel7_Valid_Out)
	);
	Adder_8input add_k7(
		.Data1(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel7),
		.Data_Out(add_k7_Data_Out),
		.Valid_Out(add_kernel7_Valid_Out)
	);
	Batch_Norm bn_kernel7(
		.Data_A(32'b00111111100100011011011100001000),
		.Data_B(32'b00111110101000011101011111100100),
		.Data_In(add_k7_Data_Out),
		.Valid_In(add_kernel7_Valid_Out),
		.Data_Out(bn7_Data_Out),
		.Valid_Out(bn7_Valid_Out)
	);
	Relu_Core rl_kernel7(
		.Data_In(bn7_Data_Out),
		.Valid_In(bn7_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(rl7_Valid_Out)
	);
//////////KERNEL8//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111111000010001100100111011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110100001100111010101001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110100111111101101101001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110101100110000000111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100000101000101000011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111010001011010001100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000101001000110000000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110000000111000100110000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel8_Valid_Out)
	);
	Adder_8input add_k8(
		.Data1(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel8),
		.Data_Out(add_k8_Data_Out),
		.Valid_Out(add_kernel8_Valid_Out)
	);
	Batch_Norm bn_kernel8(
		.Data_A(32'b00111111011011011110000101010101),
		.Data_B(32'b00111110000000011110001111001001),
		.Data_In(add_k8_Data_Out),
		.Valid_In(add_kernel8_Valid_Out),
		.Data_Out(bn8_Data_Out),
		.Valid_Out(bn8_Valid_Out)
	);
	Relu_Core rl_kernel8(
		.Data_In(bn8_Data_Out),
		.Valid_In(bn8_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(rl8_Valid_Out)
	);
//////////KERNEL9//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111101011110000010100000100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110010110011011101100011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110111010100100110001011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111100110001000101100101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111100111101100111001110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101100000101110011101010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101101010000001100110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000100000000010100010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel9_Valid_Out)
	);
	Adder_8input add_k9(
		.Data1(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel9),
		.Data_Out(add_k9_Data_Out),
		.Valid_Out(add_kernel9_Valid_Out)
	);
	Batch_Norm bn_kernel9(
		.Data_A(32'b00111111001100100101000011000110),
		.Data_B(32'b00111110110011010101111100001100),
		.Data_In(add_k9_Data_Out),
		.Valid_In(add_kernel9_Valid_Out),
		.Data_Out(bn9_Data_Out),
		.Valid_Out(bn9_Valid_Out)
	);
	Relu_Core rl_kernel9(
		.Data_In(bn9_Data_Out),
		.Valid_In(bn9_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(rl9_Valid_Out)
	);
//////////KERNEL10//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110000111000110110101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111011000110001000100100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111011100001101001010011101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101111111110011000110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110000101011111010101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010101100010000100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111001101011110111000101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110100000000110001101011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel10_Valid_Out)
	);
	Adder_8input add_k10(
		.Data1(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel10),
		.Data_Out(add_k10_Data_Out),
		.Valid_Out(add_kernel10_Valid_Out)
	);
	Batch_Norm bn_kernel10(
		.Data_A(32'b00111111100100100101111000001011),
		.Data_B(32'b10111110001100001000111001110010),
		.Data_In(add_k10_Data_Out),
		.Valid_In(add_kernel10_Valid_Out),
		.Data_Out(bn10_Data_Out),
		.Valid_Out(bn10_Valid_Out)
	);
	Relu_Core rl_kernel10(
		.Data_In(bn10_Data_Out),
		.Valid_In(bn10_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(rl10_Valid_Out)
	);
//////////KERNEL11//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111101100010000101100001010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111001010010000101000111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111010010001010101101110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110011100101010110010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011010000000110100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101010110000110100000010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110001100011001000011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111000010100001010101010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel11_Valid_Out)
	);
	Adder_8input add_k11(
		.Data1(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel11),
		.Data_Out(add_k11_Data_Out),
		.Valid_Out(add_kernel11_Valid_Out)
	);
	Batch_Norm bn_kernel11(
		.Data_A(32'b00111111010010000100001000101110),
		.Data_B(32'b00111110001000101100000111100001),
		.Data_In(add_k11_Data_Out),
		.Valid_In(add_kernel11_Valid_Out),
		.Data_Out(bn11_Data_Out),
		.Valid_Out(bn11_Valid_Out)
	);
	Relu_Core rl_kernel11(
		.Data_In(bn11_Data_Out),
		.Valid_In(bn11_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(rl11_Valid_Out)
	);
//////////KERNEL12//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110100100001011101100101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101101111001101011001011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110000000000001010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111000010100111000101001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110100110001011101010001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110010000100010010011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101111110111101011110010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111010001111010100111100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel12_Valid_Out)
	);
	Adder_8input add_k12(
		.Data1(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel12),
		.Data_Out(add_k12_Data_Out),
		.Valid_Out(add_kernel12_Valid_Out)
	);
	Batch_Norm bn_kernel12(
		.Data_A(32'b00111111100010000101110010111011),
		.Data_B(32'b10111111110100100000001011101111),
		.Data_In(add_k12_Data_Out),
		.Valid_In(add_kernel12_Valid_Out),
		.Data_Out(bn12_Data_Out),
		.Valid_Out(bn12_Valid_Out)
	);
	Relu_Core rl_kernel12(
		.Data_In(bn12_Data_Out),
		.Valid_In(bn12_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(rl12_Valid_Out)
	);
//////////KERNEL13//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111111010001011101101101110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101010001001011000101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111000111000001000111011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111000000000110000101000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110001001010011101100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110110000100111010100110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100111111001010011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110011111001001010111000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel13_Valid_Out)
	);
	Adder_8input add_k13(
		.Data1(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel13),
		.Data_Out(add_k13_Data_Out),
		.Valid_Out(add_kernel13_Valid_Out)
	);
	Batch_Norm bn_kernel13(
		.Data_A(32'b00111111010000111011111101011110),
		.Data_B(32'b10111101010000100101010011010001),
		.Data_In(add_k13_Data_Out),
		.Valid_In(add_kernel13_Valid_Out),
		.Data_Out(bn13_Data_Out),
		.Valid_Out(bn13_Valid_Out)
	);
	Relu_Core rl_kernel13(
		.Data_In(bn13_Data_Out),
		.Valid_In(bn13_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(rl13_Valid_Out)
	);
//////////KERNEL14//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110101100001010000000111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110001011011110111100100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110000010100100110000001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110110000101100111011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111001000000111000011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000110100100010110010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101011100101010111101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110100100110101101101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel14_Valid_Out)
	);
	Adder_8input add_k14(
		.Data1(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel14),
		.Data_Out(add_k14_Data_Out),
		.Valid_Out(add_kernel14_Valid_Out)
	);
	Batch_Norm bn_kernel14(
		.Data_A(32'b00111111010101001000101100000101),
		.Data_B(32'b00111110101111010111101101011111),
		.Data_In(add_k14_Data_Out),
		.Valid_In(add_kernel14_Valid_Out),
		.Data_Out(bn14_Data_Out),
		.Valid_Out(bn14_Valid_Out)
	);
	Relu_Core rl_kernel14(
		.Data_In(bn14_Data_Out),
		.Valid_In(bn14_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(rl14_Valid_Out)
	);
//////////KERNEL15//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111111100000101101011100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111011100110111000100000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111001101001001010100011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010110011111111110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101001000011010010111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110101010101100000000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111100111001010101000111101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110011110001011101010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel15_Valid_Out)
	);
	Adder_8input add_k15(
		.Data1(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel15),
		.Data_Out(add_k15_Data_Out),
		.Valid_Out(add_kernel15_Valid_Out)
	);
	Batch_Norm bn_kernel15(
		.Data_A(32'b00111111010000011111110000101010),
		.Data_B(32'b00111110110111101110011110100110),
		.Data_In(add_k15_Data_Out),
		.Valid_In(add_kernel15_Valid_Out),
		.Data_Out(bn15_Data_Out),
		.Valid_Out(bn15_Valid_Out)
	);
	Relu_Core rl_kernel15(
		.Data_In(bn15_Data_Out),
		.Valid_In(bn15_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(rl15_Valid_Out)
	);
//////////KERNEL16//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110101110000000000111101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110010000001011011101011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100000111101110001100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100100010110101110001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110001001100110001010100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111011010001100011101101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111100001001110010100010111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111000001011011001000001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel16_Valid_Out)
	);
	Adder_8input add_k16(
		.Data1(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_In(add_kernel16),
		.Data_Out(add_k16_Data_Out),
		.Valid_Out(add_kernel16_Valid_Out)
	);
	Batch_Norm bn_kernel16(
		.Data_A(32'b00111111011100101111011010010110),
		.Data_B(32'b00111110101101011111101111011011),
		.Data_In(add_k16_Data_Out),
		.Valid_In(add_kernel16_Valid_Out),
		.Data_Out(bn16_Data_Out),
		.Valid_Out(bn16_Valid_Out)
	);
	Relu_Core rl_kernel16(
		.Data_In(bn16_Data_Out),
		.Valid_In(bn16_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(rl16_Valid_Out)
	);

endmodule