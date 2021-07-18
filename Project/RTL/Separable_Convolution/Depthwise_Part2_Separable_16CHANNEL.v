module Depthwise_Part2_Separable_16CHANNEL #(
    parameter DATA_WIDHT = 32, 
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*16-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*16-1:0] Data_Out,
    output Valid_Out
);

    wire[31:0] add_k1_Data_Out, add_k2_Data_Out, add_k3_Data_Out, add_k4_Data_Out, add_k5_Data_Out, add_k6_Data_Out, add_k7_Data_Out, add_k8_Data_Out, add_k9_Data_Out, add_k10_Data_Out, add_k11_Data_Out, add_k12_Data_Out, add_k13_Data_Out, add_k14_Data_Out, add_k15_Data_Out, add_k16_Data_Out;

	wire[31:0] add_kernel1, add_kernel2, add_kernel3, add_kernel4, add_kernel5, add_kernel6, add_kernel7, add_kernel8, add_kernel9, add_kernel10, add_kernel11, add_kernel12, add_kernel13, add_kernel14, add_kernel15, add_kernel16;

    wire [31:0] bn1_Data_Out, bn2_Data_Out, bn3_Data_Out, bn4_Data_Out, bn5_Data_Out, bn6_Data_Out, bn7_Data_Out, bn8_Data_Out, bn9_Data_Out, bn10_Data_Out, bn11_Data_Out, bn12_Data_Out, bn13_Data_Out, bn14_Data_Out, bn15_Data_Out, bn16_Data_Out;

    wire bn1_Valid_Out, bn2_Valid_Out, bn3_Valid_Out, bn4_Valid_Out, bn5_Valid_Out, bn6_Valid_Out, bn7_Valid_Out, bn8_Valid_Out, bn9_Valid_Out, bn10_Valid_Out, bn11_Valid_Out, bn12_Valid_Out, bn13_Valid_Out, bn14_Valid_Out, bn15_Valid_Out, bn16_Valid_Out;

    wire rl1_Valid_Out, rl2_Valid_Out, rl3_Valid_Out, rl4_Valid_Out, rl5_Valid_Out, rl6_Valid_Out, rl7_Valid_Out, rl8_Valid_Out, rl9_Valid_Out, rl10_Valid_Out, rl11_Valid_Out, rl12_Valid_Out, rl13_Valid_Out, rl14_Valid_Out, rl15_Valid_Out, rl16_Valid_Out;

    wire [DATA_WIDHT*16-1:0] Data_Out_Kernel1,Data_Out_Kernel2,Data_Out_Kernel3,Data_Out_Kernel4,Data_Out_Kernel5,Data_Out_Kernel6,Data_Out_Kernel7,Data_Out_Kernel8,Data_Out_Kernel9,Data_Out_Kernel10,Data_Out_Kernel11,Data_Out_Kernel12,Data_Out_Kernel13,Data_Out_Kernel14,Data_Out_Kernel15,Data_Out_Kernel16;

    wire channel1_Kernel1_Valid_Out, channel2_Kernel1_Valid_Out, channel3_Kernel1_Valid_Out, channel4_Kernel1_Valid_Out, channel5_Kernel1_Valid_Out, channel6_Kernel1_Valid_Out, channel7_Kernel1_Valid_Out, channel8_Kernel1_Valid_Out, channel9_Kernel1_Valid_Out, channel10_Kernel1_Valid_Out, channel11_Kernel1_Valid_Out, channel12_Kernel1_Valid_Out, channel13_Kernel1_Valid_Out, channel14_Kernel1_Valid_Out, channel15_Kernel1_Valid_Out, channel16_Kernel1_Valid_Out;

	assign add_kernel1=channel1_Kernel1_Valid_Out & channel2_Kernel1_Valid_Out & channel3_Kernel1_Valid_Out & channel4_Kernel1_Valid_Out & channel5_Kernel1_Valid_Out & channel6_Kernel1_Valid_Out & channel7_Kernel1_Valid_Out & channel8_Kernel1_Valid_Out & channel9_Kernel1_Valid_Out & channel10_Kernel1_Valid_Out & channel11_Kernel1_Valid_Out & channel12_Kernel1_Valid_Out & channel13_Kernel1_Valid_Out & channel14_Kernel1_Valid_Out & channel15_Kernel1_Valid_Out & channel16_Kernel1_Valid_Out;


	wire channel1_Kernel2_Valid_Out, channel2_Kernel2_Valid_Out, channel3_Kernel2_Valid_Out, channel4_Kernel2_Valid_Out, channel5_Kernel2_Valid_Out, channel6_Kernel2_Valid_Out, channel7_Kernel2_Valid_Out, channel8_Kernel2_Valid_Out, channel9_Kernel2_Valid_Out, channel10_Kernel2_Valid_Out, channel11_Kernel2_Valid_Out, channel12_Kernel2_Valid_Out, channel13_Kernel2_Valid_Out, channel14_Kernel2_Valid_Out, channel15_Kernel2_Valid_Out, channel16_Kernel2_Valid_Out;

	assign add_kernel2=channel1_Kernel2_Valid_Out & channel2_Kernel2_Valid_Out & channel3_Kernel2_Valid_Out & channel4_Kernel2_Valid_Out & channel5_Kernel2_Valid_Out & channel6_Kernel2_Valid_Out & channel7_Kernel2_Valid_Out & channel8_Kernel2_Valid_Out & channel9_Kernel2_Valid_Out & channel10_Kernel2_Valid_Out & channel11_Kernel2_Valid_Out & channel12_Kernel2_Valid_Out & channel13_Kernel2_Valid_Out & channel14_Kernel2_Valid_Out & channel15_Kernel2_Valid_Out & channel16_Kernel2_Valid_Out;


	wire channel1_Kernel3_Valid_Out, channel2_Kernel3_Valid_Out, channel3_Kernel3_Valid_Out, channel4_Kernel3_Valid_Out, channel5_Kernel3_Valid_Out, channel6_Kernel3_Valid_Out, channel7_Kernel3_Valid_Out, channel8_Kernel3_Valid_Out, channel9_Kernel3_Valid_Out, channel10_Kernel3_Valid_Out, channel11_Kernel3_Valid_Out, channel12_Kernel3_Valid_Out, channel13_Kernel3_Valid_Out, channel14_Kernel3_Valid_Out, channel15_Kernel3_Valid_Out, channel16_Kernel3_Valid_Out;

	assign add_kernel3=channel1_Kernel3_Valid_Out & channel2_Kernel3_Valid_Out & channel3_Kernel3_Valid_Out & channel4_Kernel3_Valid_Out & channel5_Kernel3_Valid_Out & channel6_Kernel3_Valid_Out & channel7_Kernel3_Valid_Out & channel8_Kernel3_Valid_Out & channel9_Kernel3_Valid_Out & channel10_Kernel3_Valid_Out & channel11_Kernel3_Valid_Out & channel12_Kernel3_Valid_Out & channel13_Kernel3_Valid_Out & channel14_Kernel3_Valid_Out & channel15_Kernel3_Valid_Out & channel16_Kernel3_Valid_Out;


	wire channel1_Kernel4_Valid_Out, channel2_Kernel4_Valid_Out, channel3_Kernel4_Valid_Out, channel4_Kernel4_Valid_Out, channel5_Kernel4_Valid_Out, channel6_Kernel4_Valid_Out, channel7_Kernel4_Valid_Out, channel8_Kernel4_Valid_Out, channel9_Kernel4_Valid_Out, channel10_Kernel4_Valid_Out, channel11_Kernel4_Valid_Out, channel12_Kernel4_Valid_Out, channel13_Kernel4_Valid_Out, channel14_Kernel4_Valid_Out, channel15_Kernel4_Valid_Out, channel16_Kernel4_Valid_Out;

	assign add_kernel4=channel1_Kernel4_Valid_Out & channel2_Kernel4_Valid_Out & channel3_Kernel4_Valid_Out & channel4_Kernel4_Valid_Out & channel5_Kernel4_Valid_Out & channel6_Kernel4_Valid_Out & channel7_Kernel4_Valid_Out & channel8_Kernel4_Valid_Out & channel9_Kernel4_Valid_Out & channel10_Kernel4_Valid_Out & channel11_Kernel4_Valid_Out & channel12_Kernel4_Valid_Out & channel13_Kernel4_Valid_Out & channel14_Kernel4_Valid_Out & channel15_Kernel4_Valid_Out & channel16_Kernel4_Valid_Out;


	wire channel1_Kernel5_Valid_Out, channel2_Kernel5_Valid_Out, channel3_Kernel5_Valid_Out, channel4_Kernel5_Valid_Out, channel5_Kernel5_Valid_Out, channel6_Kernel5_Valid_Out, channel7_Kernel5_Valid_Out, channel8_Kernel5_Valid_Out, channel9_Kernel5_Valid_Out, channel10_Kernel5_Valid_Out, channel11_Kernel5_Valid_Out, channel12_Kernel5_Valid_Out, channel13_Kernel5_Valid_Out, channel14_Kernel5_Valid_Out, channel15_Kernel5_Valid_Out, channel16_Kernel5_Valid_Out;

	assign add_kernel5=channel1_Kernel5_Valid_Out & channel2_Kernel5_Valid_Out & channel3_Kernel5_Valid_Out & channel4_Kernel5_Valid_Out & channel5_Kernel5_Valid_Out & channel6_Kernel5_Valid_Out & channel7_Kernel5_Valid_Out & channel8_Kernel5_Valid_Out & channel9_Kernel5_Valid_Out & channel10_Kernel5_Valid_Out & channel11_Kernel5_Valid_Out & channel12_Kernel5_Valid_Out & channel13_Kernel5_Valid_Out & channel14_Kernel5_Valid_Out & channel15_Kernel5_Valid_Out & channel16_Kernel5_Valid_Out;


	wire channel1_Kernel6_Valid_Out, channel2_Kernel6_Valid_Out, channel3_Kernel6_Valid_Out, channel4_Kernel6_Valid_Out, channel5_Kernel6_Valid_Out, channel6_Kernel6_Valid_Out, channel7_Kernel6_Valid_Out, channel8_Kernel6_Valid_Out, channel9_Kernel6_Valid_Out, channel10_Kernel6_Valid_Out, channel11_Kernel6_Valid_Out, channel12_Kernel6_Valid_Out, channel13_Kernel6_Valid_Out, channel14_Kernel6_Valid_Out, channel15_Kernel6_Valid_Out, channel16_Kernel6_Valid_Out;

	assign add_kernel6=channel1_Kernel6_Valid_Out & channel2_Kernel6_Valid_Out & channel3_Kernel6_Valid_Out & channel4_Kernel6_Valid_Out & channel5_Kernel6_Valid_Out & channel6_Kernel6_Valid_Out & channel7_Kernel6_Valid_Out & channel8_Kernel6_Valid_Out & channel9_Kernel6_Valid_Out & channel10_Kernel6_Valid_Out & channel11_Kernel6_Valid_Out & channel12_Kernel6_Valid_Out & channel13_Kernel6_Valid_Out & channel14_Kernel6_Valid_Out & channel15_Kernel6_Valid_Out & channel16_Kernel6_Valid_Out;


	wire channel1_Kernel7_Valid_Out, channel2_Kernel7_Valid_Out, channel3_Kernel7_Valid_Out, channel4_Kernel7_Valid_Out, channel5_Kernel7_Valid_Out, channel6_Kernel7_Valid_Out, channel7_Kernel7_Valid_Out, channel8_Kernel7_Valid_Out, channel9_Kernel7_Valid_Out, channel10_Kernel7_Valid_Out, channel11_Kernel7_Valid_Out, channel12_Kernel7_Valid_Out, channel13_Kernel7_Valid_Out, channel14_Kernel7_Valid_Out, channel15_Kernel7_Valid_Out, channel16_Kernel7_Valid_Out;

	assign add_kernel7=channel1_Kernel7_Valid_Out & channel2_Kernel7_Valid_Out & channel3_Kernel7_Valid_Out & channel4_Kernel7_Valid_Out & channel5_Kernel7_Valid_Out & channel6_Kernel7_Valid_Out & channel7_Kernel7_Valid_Out & channel8_Kernel7_Valid_Out & channel9_Kernel7_Valid_Out & channel10_Kernel7_Valid_Out & channel11_Kernel7_Valid_Out & channel12_Kernel7_Valid_Out & channel13_Kernel7_Valid_Out & channel14_Kernel7_Valid_Out & channel15_Kernel7_Valid_Out & channel16_Kernel7_Valid_Out;


	wire channel1_Kernel8_Valid_Out, channel2_Kernel8_Valid_Out, channel3_Kernel8_Valid_Out, channel4_Kernel8_Valid_Out, channel5_Kernel8_Valid_Out, channel6_Kernel8_Valid_Out, channel7_Kernel8_Valid_Out, channel8_Kernel8_Valid_Out, channel9_Kernel8_Valid_Out, channel10_Kernel8_Valid_Out, channel11_Kernel8_Valid_Out, channel12_Kernel8_Valid_Out, channel13_Kernel8_Valid_Out, channel14_Kernel8_Valid_Out, channel15_Kernel8_Valid_Out, channel16_Kernel8_Valid_Out;

	assign add_kernel8=channel1_Kernel8_Valid_Out & channel2_Kernel8_Valid_Out & channel3_Kernel8_Valid_Out & channel4_Kernel8_Valid_Out & channel5_Kernel8_Valid_Out & channel6_Kernel8_Valid_Out & channel7_Kernel8_Valid_Out & channel8_Kernel8_Valid_Out & channel9_Kernel8_Valid_Out & channel10_Kernel8_Valid_Out & channel11_Kernel8_Valid_Out & channel12_Kernel8_Valid_Out & channel13_Kernel8_Valid_Out & channel14_Kernel8_Valid_Out & channel15_Kernel8_Valid_Out & channel16_Kernel8_Valid_Out;


	wire channel1_Kernel9_Valid_Out, channel2_Kernel9_Valid_Out, channel3_Kernel9_Valid_Out, channel4_Kernel9_Valid_Out, channel5_Kernel9_Valid_Out, channel6_Kernel9_Valid_Out, channel7_Kernel9_Valid_Out, channel8_Kernel9_Valid_Out, channel9_Kernel9_Valid_Out, channel10_Kernel9_Valid_Out, channel11_Kernel9_Valid_Out, channel12_Kernel9_Valid_Out, channel13_Kernel9_Valid_Out, channel14_Kernel9_Valid_Out, channel15_Kernel9_Valid_Out, channel16_Kernel9_Valid_Out;

	assign add_kernel9=channel1_Kernel9_Valid_Out & channel2_Kernel9_Valid_Out & channel3_Kernel9_Valid_Out & channel4_Kernel9_Valid_Out & channel5_Kernel9_Valid_Out & channel6_Kernel9_Valid_Out & channel7_Kernel9_Valid_Out & channel8_Kernel9_Valid_Out & channel9_Kernel9_Valid_Out & channel10_Kernel9_Valid_Out & channel11_Kernel9_Valid_Out & channel12_Kernel9_Valid_Out & channel13_Kernel9_Valid_Out & channel14_Kernel9_Valid_Out & channel15_Kernel9_Valid_Out & channel16_Kernel9_Valid_Out;


	wire channel1_Kernel10_Valid_Out, channel2_Kernel10_Valid_Out, channel3_Kernel10_Valid_Out, channel4_Kernel10_Valid_Out, channel5_Kernel10_Valid_Out, channel6_Kernel10_Valid_Out, channel7_Kernel10_Valid_Out, channel8_Kernel10_Valid_Out, channel9_Kernel10_Valid_Out, channel10_Kernel10_Valid_Out, channel11_Kernel10_Valid_Out, channel12_Kernel10_Valid_Out, channel13_Kernel10_Valid_Out, channel14_Kernel10_Valid_Out, channel15_Kernel10_Valid_Out, channel16_Kernel10_Valid_Out;

	assign add_kernel10=channel1_Kernel10_Valid_Out & channel2_Kernel10_Valid_Out & channel3_Kernel10_Valid_Out & channel4_Kernel10_Valid_Out & channel5_Kernel10_Valid_Out & channel6_Kernel10_Valid_Out & channel7_Kernel10_Valid_Out & channel8_Kernel10_Valid_Out & channel9_Kernel10_Valid_Out & channel10_Kernel10_Valid_Out & channel11_Kernel10_Valid_Out & channel12_Kernel10_Valid_Out & channel13_Kernel10_Valid_Out & channel14_Kernel10_Valid_Out & channel15_Kernel10_Valid_Out & channel16_Kernel10_Valid_Out;


	wire channel1_Kernel11_Valid_Out, channel2_Kernel11_Valid_Out, channel3_Kernel11_Valid_Out, channel4_Kernel11_Valid_Out, channel5_Kernel11_Valid_Out, channel6_Kernel11_Valid_Out, channel7_Kernel11_Valid_Out, channel8_Kernel11_Valid_Out, channel9_Kernel11_Valid_Out, channel10_Kernel11_Valid_Out, channel11_Kernel11_Valid_Out, channel12_Kernel11_Valid_Out, channel13_Kernel11_Valid_Out, channel14_Kernel11_Valid_Out, channel15_Kernel11_Valid_Out, channel16_Kernel11_Valid_Out;

	assign add_kernel11=channel1_Kernel11_Valid_Out & channel2_Kernel11_Valid_Out & channel3_Kernel11_Valid_Out & channel4_Kernel11_Valid_Out & channel5_Kernel11_Valid_Out & channel6_Kernel11_Valid_Out & channel7_Kernel11_Valid_Out & channel8_Kernel11_Valid_Out & channel9_Kernel11_Valid_Out & channel10_Kernel11_Valid_Out & channel11_Kernel11_Valid_Out & channel12_Kernel11_Valid_Out & channel13_Kernel11_Valid_Out & channel14_Kernel11_Valid_Out & channel15_Kernel11_Valid_Out & channel16_Kernel11_Valid_Out;


	wire channel1_Kernel12_Valid_Out, channel2_Kernel12_Valid_Out, channel3_Kernel12_Valid_Out, channel4_Kernel12_Valid_Out, channel5_Kernel12_Valid_Out, channel6_Kernel12_Valid_Out, channel7_Kernel12_Valid_Out, channel8_Kernel12_Valid_Out, channel9_Kernel12_Valid_Out, channel10_Kernel12_Valid_Out, channel11_Kernel12_Valid_Out, channel12_Kernel12_Valid_Out, channel13_Kernel12_Valid_Out, channel14_Kernel12_Valid_Out, channel15_Kernel12_Valid_Out, channel16_Kernel12_Valid_Out;

	assign add_kernel12=channel1_Kernel12_Valid_Out & channel2_Kernel12_Valid_Out & channel3_Kernel12_Valid_Out & channel4_Kernel12_Valid_Out & channel5_Kernel12_Valid_Out & channel6_Kernel12_Valid_Out & channel7_Kernel12_Valid_Out & channel8_Kernel12_Valid_Out & channel9_Kernel12_Valid_Out & channel10_Kernel12_Valid_Out & channel11_Kernel12_Valid_Out & channel12_Kernel12_Valid_Out & channel13_Kernel12_Valid_Out & channel14_Kernel12_Valid_Out & channel15_Kernel12_Valid_Out & channel16_Kernel12_Valid_Out;


	wire channel1_Kernel13_Valid_Out, channel2_Kernel13_Valid_Out, channel3_Kernel13_Valid_Out, channel4_Kernel13_Valid_Out, channel5_Kernel13_Valid_Out, channel6_Kernel13_Valid_Out, channel7_Kernel13_Valid_Out, channel8_Kernel13_Valid_Out, channel9_Kernel13_Valid_Out, channel10_Kernel13_Valid_Out, channel11_Kernel13_Valid_Out, channel12_Kernel13_Valid_Out, channel13_Kernel13_Valid_Out, channel14_Kernel13_Valid_Out, channel15_Kernel13_Valid_Out, channel16_Kernel13_Valid_Out;

	assign add_kernel13=channel1_Kernel13_Valid_Out & channel2_Kernel13_Valid_Out & channel3_Kernel13_Valid_Out & channel4_Kernel13_Valid_Out & channel5_Kernel13_Valid_Out & channel6_Kernel13_Valid_Out & channel7_Kernel13_Valid_Out & channel8_Kernel13_Valid_Out & channel9_Kernel13_Valid_Out & channel10_Kernel13_Valid_Out & channel11_Kernel13_Valid_Out & channel12_Kernel13_Valid_Out & channel13_Kernel13_Valid_Out & channel14_Kernel13_Valid_Out & channel15_Kernel13_Valid_Out & channel16_Kernel13_Valid_Out;


	wire channel1_Kernel14_Valid_Out, channel2_Kernel14_Valid_Out, channel3_Kernel14_Valid_Out, channel4_Kernel14_Valid_Out, channel5_Kernel14_Valid_Out, channel6_Kernel14_Valid_Out, channel7_Kernel14_Valid_Out, channel8_Kernel14_Valid_Out, channel9_Kernel14_Valid_Out, channel10_Kernel14_Valid_Out, channel11_Kernel14_Valid_Out, channel12_Kernel14_Valid_Out, channel13_Kernel14_Valid_Out, channel14_Kernel14_Valid_Out, channel15_Kernel14_Valid_Out, channel16_Kernel14_Valid_Out;

	assign add_kernel14=channel1_Kernel14_Valid_Out & channel2_Kernel14_Valid_Out & channel3_Kernel14_Valid_Out & channel4_Kernel14_Valid_Out & channel5_Kernel14_Valid_Out & channel6_Kernel14_Valid_Out & channel7_Kernel14_Valid_Out & channel8_Kernel14_Valid_Out & channel9_Kernel14_Valid_Out & channel10_Kernel14_Valid_Out & channel11_Kernel14_Valid_Out & channel12_Kernel14_Valid_Out & channel13_Kernel14_Valid_Out & channel14_Kernel14_Valid_Out & channel15_Kernel14_Valid_Out & channel16_Kernel14_Valid_Out;


	wire channel1_Kernel15_Valid_Out, channel2_Kernel15_Valid_Out, channel3_Kernel15_Valid_Out, channel4_Kernel15_Valid_Out, channel5_Kernel15_Valid_Out, channel6_Kernel15_Valid_Out, channel7_Kernel15_Valid_Out, channel8_Kernel15_Valid_Out, channel9_Kernel15_Valid_Out, channel10_Kernel15_Valid_Out, channel11_Kernel15_Valid_Out, channel12_Kernel15_Valid_Out, channel13_Kernel15_Valid_Out, channel14_Kernel15_Valid_Out, channel15_Kernel15_Valid_Out, channel16_Kernel15_Valid_Out;

	assign add_kernel15=channel1_Kernel15_Valid_Out & channel2_Kernel15_Valid_Out & channel3_Kernel15_Valid_Out & channel4_Kernel15_Valid_Out & channel5_Kernel15_Valid_Out & channel6_Kernel15_Valid_Out & channel7_Kernel15_Valid_Out & channel8_Kernel15_Valid_Out & channel9_Kernel15_Valid_Out & channel10_Kernel15_Valid_Out & channel11_Kernel15_Valid_Out & channel12_Kernel15_Valid_Out & channel13_Kernel15_Valid_Out & channel14_Kernel15_Valid_Out & channel15_Kernel15_Valid_Out & channel16_Kernel15_Valid_Out;


	wire channel1_Kernel16_Valid_Out, channel2_Kernel16_Valid_Out, channel3_Kernel16_Valid_Out, channel4_Kernel16_Valid_Out, channel5_Kernel16_Valid_Out, channel6_Kernel16_Valid_Out, channel7_Kernel16_Valid_Out, channel8_Kernel16_Valid_Out, channel9_Kernel16_Valid_Out, channel10_Kernel16_Valid_Out, channel11_Kernel16_Valid_Out, channel12_Kernel16_Valid_Out, channel13_Kernel16_Valid_Out, channel14_Kernel16_Valid_Out, channel15_Kernel16_Valid_Out, channel16_Kernel16_Valid_Out;

	assign add_kernel16=channel1_Kernel16_Valid_Out & channel2_Kernel16_Valid_Out & channel3_Kernel16_Valid_Out & channel4_Kernel16_Valid_Out & channel5_Kernel16_Valid_Out & channel6_Kernel16_Valid_Out & channel7_Kernel16_Valid_Out & channel8_Kernel16_Valid_Out & channel9_Kernel16_Valid_Out & channel10_Kernel16_Valid_Out & channel11_Kernel16_Valid_Out & channel12_Kernel16_Valid_Out & channel13_Kernel16_Valid_Out & channel14_Kernel16_Valid_Out & channel15_Kernel16_Valid_Out & channel16_Kernel16_Valid_Out;




    assign Valid_Out=rl1_Valid_Out & rl2_Valid_Out & rl3_Valid_Out & rl4_Valid_Out & rl5_Valid_Out & rl6_Valid_Out & rl7_Valid_Out & rl8_Valid_Out & rl9_Valid_Out & rl10_Valid_Out & rl11_Valid_Out & rl12_Valid_Out & rl13_Valid_Out & rl14_Valid_Out & rl15_Valid_Out & rl16_Valid_Out;
//////////KERNEL1//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110010011100010110101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101101010000011110001111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101110101010010001111101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110111011001111010000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101101011010110101110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110100101011010011100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101011010000011000110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101100101101000011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101001010000110011001101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110010111100100011001100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110011001010111010011011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111000000101101000111001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110101101110100000110010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111010010100100010110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111001111010011000011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111000011011011100010110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel1_Valid_Out)
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
		.Data_A(32'b00111111010001001101000110011000),
		.Data_B(32'b10111111100011010001001111100111),
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
		.Kernel(32'b10111110001111011000011011000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000000110011110010011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101000000000001010011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111001010011000011010000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111011101001101100000101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111100111001101001011101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000101110110000111001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110100111000011000110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111100100110011101000111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110111101110000001110111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111011111110101000000100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100100001101111011010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111001110111100011110100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110100011101000010111000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110101010011010110001100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110101001000101010000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel2_Valid_Out)
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
		.Data_A(32'b00111111000010110100000011101001),
		.Data_B(32'b10111111100011111110010111110110),
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
		.Kernel(32'b00111110101110010101110100010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101110110100111110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111010111111100100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100010011111010011111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000010000111011001001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010010111010010011111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101011110011100000111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110010000100111111011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110011011101010010111110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101100000111110101011000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111010100011110011111101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000000010001001110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111010011011000101010000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101101110111011110101111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110001111001100111101110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110001011100110011111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel3_Valid_Out)
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
		.Data_A(32'b00111111001000111101001001011111),
		.Data_B(32'b00111110101001101110001100100000),
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
		.Kernel(32'b00111111000011000000101000000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110001010011100001010101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111001100010000101001001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111001100011011011100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110101011101100111110100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100011101111010011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110110100100010011100000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111100010101111100100110010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101101101011110101111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110100110100110010011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101100111001011010100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101111100101011111010010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110011110100100000001101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110111111111110100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110110000000010001110100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110000000000010001111110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel4_Valid_Out)
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
		.Data_A(32'b00111111000101010001011100010110),
		.Data_B(32'b10111110000011001010110000100010),
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
		.Kernel(32'b10111110010110100111110011010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110011000010011101100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110001001011100110010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111100110010000001001100001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111100000000111101001011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010000110100001111011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110111001010010001100001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110001010011101111011011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110101001100000011011011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111000010100001010101110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110001111000111010101011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110000010001111111111000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110101000011000000101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110011100110010100101010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110111000001000011101111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111100011011101101101000111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel5_Valid_Out)
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
		.Data_A(32'b00111111001100010010100101011011),
		.Data_B(32'b10111110100101101110100110001000),
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
		.Kernel(32'b00111101000011100100111111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110111001011010000001001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111010011001000100110000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111100100000011100001110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101000111110001110111100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101111011010010101010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100000101011100000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110000001101000011000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110110000010000011000111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101011000010010100111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110001101100101011011101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110010100101101011101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111100001011010010000001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101011011000110000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111111000000101000011001011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101100110001111100100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel6_Valid_Out)
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
		.Data_A(32'b00111111001100100111000100110011),
		.Data_B(32'b10111111010011001011011100111000),
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
		.Kernel(32'b10111110000010010110000010111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111011011011100001011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111100111100110000110111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001001000101110110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110000101001000010010101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110101100110101001110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110101111000010111101111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110000011111011001110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110000110011010110000111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000110100101000101100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110101100100000001011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110010111101011101010010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100110101001101010011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110111001000100011101010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110011100010111101110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110101110110011110001100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel7_Valid_Out)
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
		.Data_A(32'b00111111000011110000110011011000),
		.Data_B(32'b10111110101001110101000101101001),
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
		.Kernel(32'b10111110101010000000010101010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101011011101011011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110001100011100010110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000010000010111000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110101111110000001010110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111011001100011011000111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000110101110011100001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110100100110010111100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101010101101001111100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111100100000001000100101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110101100111101100100000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110110000001101000010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100010111110011000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100010110010011110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110001001110000010011101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111000010011111110010110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel8_Valid_Out)
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
		.Data_A(32'b00111111001010011101100010100111),
		.Data_B(32'b00111111000000010000000000011000),
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
		.Kernel(32'b00111110100001011101110000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110011011110110101010110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110101101101101111110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110000110101010100111001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101101010011011101111110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010001101110000111000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110100110110000111100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000100011011011100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111100000000111111000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110011010110001100110100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110010111011000000111100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110110110010110010111100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101101100101001110001100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101111001100010111001000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101111111010101110100101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111010110100000111010011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel9_Valid_Out)
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
		.Data_A(32'b00111111001000100110101000010110),
		.Data_B(32'b00111111011011000010111001111011),
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
		.Kernel(32'b10111110101010001010101100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000000011010001001001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111100110111100111101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101101110111001010101011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111100101001100110011111000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101110001010101011010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110000111111000110011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101100101010000110101000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101010110111011110010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111010110100101101000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111001000100000111011011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110010111001111010001101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110110111011001010001011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110100100110101101011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110011111010110000010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110011011000100011101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel10_Valid_Out)
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
		.Data_A(32'b00111111000010100011100101010011),
		.Data_B(32'b00111111010111000101101111111110),
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
		.Kernel(32'b10111111000011100110101011101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101101001100111101101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110001011010000000011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100011110011010100101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000100110111101010110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101111110001011001000111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110001111001111110011110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000001101011100110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110010100011001110010000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110101001001111010101101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111010010000100110100000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110101001110000010000100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101100111010111110110011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101110010110000001110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111111000001100000111001100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110000100010100000111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel11_Valid_Out)
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
		.Data_A(32'b00111111001000100110011001000110),
		.Data_B(32'b10111110101001100111001001011111),
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
		.Kernel(32'b00111111001100101001010100101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111001101100011101100000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101111010011000110110011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110111101110101001010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111011101110010111101000111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110110011011000011100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101110111101110101001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111011000101100101010011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110111001110001111011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101100001110011110101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110000100000001110101100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101001001001110111011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110000010111110000010010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110100111011111010111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110100110111010110110010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110001111101001011101101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel12_Valid_Out)
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
		.Data_A(32'b00111111000100100111010010010000),
		.Data_B(32'b00111111000010110010001100110111),
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
		.Kernel(32'b10111111000100101010010011000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000000110001111011001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110000111100001011110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110010101110111101011100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000000101100010000011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010111111110011010100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111010001101111011101110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110000110011111000111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110010111111001010000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100000011100101111111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110001011100001110010000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000110101111100000010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110101000110101100100010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111100100111000001100011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101001001100011100111000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111000101001001011000100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel13_Valid_Out)
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
		.Data_A(32'b00111111010010000010111010101110),
		.Data_B(32'b00111110101010011010110000011011),
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
		.Kernel(32'b00111101001001001001110000010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110100000110110001010001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101100110000101001101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110101000100111101100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101101001001111000101100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111001001101101100000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110000110000100111101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111000110011111001101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111001010100111101000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110010011001100000111111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110001111011001011011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111010001000110101111100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110000001100100001010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101110000001110101111110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110010110000101111011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110110111111101001001010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel14_Valid_Out)
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
		.Data_A(32'b00111111001011101111110011001000),
		.Data_B(32'b00111110011000001011001001000011),
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
		.Kernel(32'b10111101110110011110110110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110001100000110101100101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110110001100111111101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110011111010010111100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110000001011001111000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110000111011110011001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101110110000111011100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110111011110000001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111000000000001111110111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111001100100010111110100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101101001011100010111110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111010000000000001001100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101000010000010001000010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111010001000000011011100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110100111101011100000111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111011111010000101000000100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel15_Valid_Out)
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
		.Data_A(32'b00111111000101100001011101011111),
		.Data_B(32'b00111111011011010111000100000100),
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
		.Kernel(32'b10111111010010011000111011010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110010001101010001110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101100011001010010010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111001010101000101110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110111001010000011000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110111000011001100001000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101100110001011011100111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101000101111110010100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110001100100000101110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110001001010111010011111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110110111011100100010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100100000011110110000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100011010000110001010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101010011010110111000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110000111010100010010101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101100000100010110101010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel16_Valid_Out)
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
		.Data_A(32'b00111111001001000110100010101111),
		.Data_B(32'b10111110111011011110110111011100),
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