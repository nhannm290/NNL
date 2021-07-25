module Depthwise_Part3_Separable_32CHANNEL_Layer4 #(
    parameter DATA_WIDHT = 32, 
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*32-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*32-1:0] Data_Out,
    output Valid_Out

);
	wire[DATA_WIDHT*32-1:0] Data_Out_Kernel1, Data_Out_Kernel2, Data_Out_Kernel3, Data_Out_Kernel4, Data_Out_Kernel5, Data_Out_Kernel6, Data_Out_Kernel7, Data_Out_Kernel8, Data_Out_Kernel9, Data_Out_Kernel10, Data_Out_Kernel11, Data_Out_Kernel12, Data_Out_Kernel13, Data_Out_Kernel14, Data_Out_Kernel15, Data_Out_Kernel16, Data_Out_Kernel17, Data_Out_Kernel18, Data_Out_Kernel19, Data_Out_Kernel20, Data_Out_Kernel21, Data_Out_Kernel22, Data_Out_Kernel23, Data_Out_Kernel24, Data_Out_Kernel25, Data_Out_Kernel26, Data_Out_Kernel27, Data_Out_Kernel28, Data_Out_Kernel29, Data_Out_Kernel30, Data_Out_Kernel31, Data_Out_Kernel32;
	wire[31:0] add_k1_Data_Out, add_k2_Data_Out, add_k3_Data_Out, add_k4_Data_Out, add_k5_Data_Out, add_k6_Data_Out, add_k7_Data_Out, add_k8_Data_Out, add_k9_Data_Out, add_k10_Data_Out, add_k11_Data_Out, add_k12_Data_Out, add_k13_Data_Out, add_k14_Data_Out, add_k15_Data_Out, add_k16_Data_Out, add_k17_Data_Out, add_k18_Data_Out, add_k19_Data_Out, add_k20_Data_Out, add_k21_Data_Out, add_k22_Data_Out, add_k23_Data_Out, add_k24_Data_Out, add_k25_Data_Out, add_k26_Data_Out, add_k27_Data_Out, add_k28_Data_Out, add_k29_Data_Out, add_k30_Data_Out, add_k31_Data_Out, add_k32_Data_Out;

	wire add_kernel1_Valid_Out, add_kernel2_Valid_Out, add_kernel3_Valid_Out, add_kernel4_Valid_Out, add_kernel5_Valid_Out, add_kernel6_Valid_Out, add_kernel7_Valid_Out, add_kernel8_Valid_Out, add_kernel9_Valid_Out, add_kernel10_Valid_Out, add_kernel11_Valid_Out, add_kernel12_Valid_Out, add_kernel13_Valid_Out, add_kernel14_Valid_Out, add_kernel15_Valid_Out, add_kernel16_Valid_Out, add_kernel17_Valid_Out, add_kernel18_Valid_Out, add_kernel19_Valid_Out, add_kernel20_Valid_Out, add_kernel21_Valid_Out, add_kernel22_Valid_Out, add_kernel23_Valid_Out, add_kernel24_Valid_Out, add_kernel25_Valid_Out, add_kernel26_Valid_Out, add_kernel27_Valid_Out, add_kernel28_Valid_Out, add_kernel29_Valid_Out, add_kernel30_Valid_Out, add_kernel31_Valid_Out, add_kernel32_Valid_Out;

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

	wire channel1_Kernel17_Valid_Out, channel2_Kernel17_Valid_Out, channel3_Kernel17_Valid_Out, channel4_Kernel17_Valid_Out, channel5_Kernel17_Valid_Out, channel6_Kernel17_Valid_Out, channel7_Kernel17_Valid_Out, channel8_Kernel17_Valid_Out, channel9_Kernel17_Valid_Out, channel10_Kernel17_Valid_Out, channel11_Kernel17_Valid_Out, channel12_Kernel17_Valid_Out, channel13_Kernel17_Valid_Out, channel14_Kernel17_Valid_Out, channel15_Kernel17_Valid_Out, channel16_Kernel17_Valid_Out;

	assign add_kernel17=channel1_Kernel17_Valid_Out & channel2_Kernel17_Valid_Out & channel3_Kernel17_Valid_Out & channel4_Kernel17_Valid_Out & channel5_Kernel17_Valid_Out & channel6_Kernel17_Valid_Out & channel7_Kernel17_Valid_Out & channel8_Kernel17_Valid_Out & channel9_Kernel17_Valid_Out & channel10_Kernel17_Valid_Out & channel11_Kernel17_Valid_Out & channel12_Kernel17_Valid_Out & channel13_Kernel17_Valid_Out & channel14_Kernel17_Valid_Out & channel15_Kernel17_Valid_Out & channel16_Kernel17_Valid_Out;

	wire channel1_Kernel18_Valid_Out, channel2_Kernel18_Valid_Out, channel3_Kernel18_Valid_Out, channel4_Kernel18_Valid_Out, channel5_Kernel18_Valid_Out, channel6_Kernel18_Valid_Out, channel7_Kernel18_Valid_Out, channel8_Kernel18_Valid_Out, channel9_Kernel18_Valid_Out, channel10_Kernel18_Valid_Out, channel11_Kernel18_Valid_Out, channel12_Kernel18_Valid_Out, channel13_Kernel18_Valid_Out, channel14_Kernel18_Valid_Out, channel15_Kernel18_Valid_Out, channel16_Kernel18_Valid_Out;

	assign add_kernel18=channel1_Kernel18_Valid_Out & channel2_Kernel18_Valid_Out & channel3_Kernel18_Valid_Out & channel4_Kernel18_Valid_Out & channel5_Kernel18_Valid_Out & channel6_Kernel18_Valid_Out & channel7_Kernel18_Valid_Out & channel8_Kernel18_Valid_Out & channel9_Kernel18_Valid_Out & channel10_Kernel18_Valid_Out & channel11_Kernel18_Valid_Out & channel12_Kernel18_Valid_Out & channel13_Kernel18_Valid_Out & channel14_Kernel18_Valid_Out & channel15_Kernel18_Valid_Out & channel16_Kernel18_Valid_Out;

	wire channel1_Kernel19_Valid_Out, channel2_Kernel19_Valid_Out, channel3_Kernel19_Valid_Out, channel4_Kernel19_Valid_Out, channel5_Kernel19_Valid_Out, channel6_Kernel19_Valid_Out, channel7_Kernel19_Valid_Out, channel8_Kernel19_Valid_Out, channel9_Kernel19_Valid_Out, channel10_Kernel19_Valid_Out, channel11_Kernel19_Valid_Out, channel12_Kernel19_Valid_Out, channel13_Kernel19_Valid_Out, channel14_Kernel19_Valid_Out, channel15_Kernel19_Valid_Out, channel16_Kernel19_Valid_Out;

	assign add_kernel19=channel1_Kernel19_Valid_Out & channel2_Kernel19_Valid_Out & channel3_Kernel19_Valid_Out & channel4_Kernel19_Valid_Out & channel5_Kernel19_Valid_Out & channel6_Kernel19_Valid_Out & channel7_Kernel19_Valid_Out & channel8_Kernel19_Valid_Out & channel9_Kernel19_Valid_Out & channel10_Kernel19_Valid_Out & channel11_Kernel19_Valid_Out & channel12_Kernel19_Valid_Out & channel13_Kernel19_Valid_Out & channel14_Kernel19_Valid_Out & channel15_Kernel19_Valid_Out & channel16_Kernel19_Valid_Out;

	wire channel1_Kernel20_Valid_Out, channel2_Kernel20_Valid_Out, channel3_Kernel20_Valid_Out, channel4_Kernel20_Valid_Out, channel5_Kernel20_Valid_Out, channel6_Kernel20_Valid_Out, channel7_Kernel20_Valid_Out, channel8_Kernel20_Valid_Out, channel9_Kernel20_Valid_Out, channel10_Kernel20_Valid_Out, channel11_Kernel20_Valid_Out, channel12_Kernel20_Valid_Out, channel13_Kernel20_Valid_Out, channel14_Kernel20_Valid_Out, channel15_Kernel20_Valid_Out, channel16_Kernel20_Valid_Out;

	assign add_kernel20=channel1_Kernel20_Valid_Out & channel2_Kernel20_Valid_Out & channel3_Kernel20_Valid_Out & channel4_Kernel20_Valid_Out & channel5_Kernel20_Valid_Out & channel6_Kernel20_Valid_Out & channel7_Kernel20_Valid_Out & channel8_Kernel20_Valid_Out & channel9_Kernel20_Valid_Out & channel10_Kernel20_Valid_Out & channel11_Kernel20_Valid_Out & channel12_Kernel20_Valid_Out & channel13_Kernel20_Valid_Out & channel14_Kernel20_Valid_Out & channel15_Kernel20_Valid_Out & channel16_Kernel20_Valid_Out;

	wire channel1_Kernel21_Valid_Out, channel2_Kernel21_Valid_Out, channel3_Kernel21_Valid_Out, channel4_Kernel21_Valid_Out, channel5_Kernel21_Valid_Out, channel6_Kernel21_Valid_Out, channel7_Kernel21_Valid_Out, channel8_Kernel21_Valid_Out, channel9_Kernel21_Valid_Out, channel10_Kernel21_Valid_Out, channel11_Kernel21_Valid_Out, channel12_Kernel21_Valid_Out, channel13_Kernel21_Valid_Out, channel14_Kernel21_Valid_Out, channel15_Kernel21_Valid_Out, channel16_Kernel21_Valid_Out;

	assign add_kernel21=channel1_Kernel21_Valid_Out & channel2_Kernel21_Valid_Out & channel3_Kernel21_Valid_Out & channel4_Kernel21_Valid_Out & channel5_Kernel21_Valid_Out & channel6_Kernel21_Valid_Out & channel7_Kernel21_Valid_Out & channel8_Kernel21_Valid_Out & channel9_Kernel21_Valid_Out & channel10_Kernel21_Valid_Out & channel11_Kernel21_Valid_Out & channel12_Kernel21_Valid_Out & channel13_Kernel21_Valid_Out & channel14_Kernel21_Valid_Out & channel15_Kernel21_Valid_Out & channel16_Kernel21_Valid_Out;

	wire channel1_Kernel22_Valid_Out, channel2_Kernel22_Valid_Out, channel3_Kernel22_Valid_Out, channel4_Kernel22_Valid_Out, channel5_Kernel22_Valid_Out, channel6_Kernel22_Valid_Out, channel7_Kernel22_Valid_Out, channel8_Kernel22_Valid_Out, channel9_Kernel22_Valid_Out, channel10_Kernel22_Valid_Out, channel11_Kernel22_Valid_Out, channel12_Kernel22_Valid_Out, channel13_Kernel22_Valid_Out, channel14_Kernel22_Valid_Out, channel15_Kernel22_Valid_Out, channel16_Kernel22_Valid_Out;

	assign add_kernel22=channel1_Kernel22_Valid_Out & channel2_Kernel22_Valid_Out & channel3_Kernel22_Valid_Out & channel4_Kernel22_Valid_Out & channel5_Kernel22_Valid_Out & channel6_Kernel22_Valid_Out & channel7_Kernel22_Valid_Out & channel8_Kernel22_Valid_Out & channel9_Kernel22_Valid_Out & channel10_Kernel22_Valid_Out & channel11_Kernel22_Valid_Out & channel12_Kernel22_Valid_Out & channel13_Kernel22_Valid_Out & channel14_Kernel22_Valid_Out & channel15_Kernel22_Valid_Out & channel16_Kernel22_Valid_Out;

	wire channel1_Kernel23_Valid_Out, channel2_Kernel23_Valid_Out, channel3_Kernel23_Valid_Out, channel4_Kernel23_Valid_Out, channel5_Kernel23_Valid_Out, channel6_Kernel23_Valid_Out, channel7_Kernel23_Valid_Out, channel8_Kernel23_Valid_Out, channel9_Kernel23_Valid_Out, channel10_Kernel23_Valid_Out, channel11_Kernel23_Valid_Out, channel12_Kernel23_Valid_Out, channel13_Kernel23_Valid_Out, channel14_Kernel23_Valid_Out, channel15_Kernel23_Valid_Out, channel16_Kernel23_Valid_Out;

	assign add_kernel23=channel1_Kernel23_Valid_Out & channel2_Kernel23_Valid_Out & channel3_Kernel23_Valid_Out & channel4_Kernel23_Valid_Out & channel5_Kernel23_Valid_Out & channel6_Kernel23_Valid_Out & channel7_Kernel23_Valid_Out & channel8_Kernel23_Valid_Out & channel9_Kernel23_Valid_Out & channel10_Kernel23_Valid_Out & channel11_Kernel23_Valid_Out & channel12_Kernel23_Valid_Out & channel13_Kernel23_Valid_Out & channel14_Kernel23_Valid_Out & channel15_Kernel23_Valid_Out & channel16_Kernel23_Valid_Out;

	wire channel1_Kernel24_Valid_Out, channel2_Kernel24_Valid_Out, channel3_Kernel24_Valid_Out, channel4_Kernel24_Valid_Out, channel5_Kernel24_Valid_Out, channel6_Kernel24_Valid_Out, channel7_Kernel24_Valid_Out, channel8_Kernel24_Valid_Out, channel9_Kernel24_Valid_Out, channel10_Kernel24_Valid_Out, channel11_Kernel24_Valid_Out, channel12_Kernel24_Valid_Out, channel13_Kernel24_Valid_Out, channel14_Kernel24_Valid_Out, channel15_Kernel24_Valid_Out, channel16_Kernel24_Valid_Out;

	assign add_kernel24=channel1_Kernel24_Valid_Out & channel2_Kernel24_Valid_Out & channel3_Kernel24_Valid_Out & channel4_Kernel24_Valid_Out & channel5_Kernel24_Valid_Out & channel6_Kernel24_Valid_Out & channel7_Kernel24_Valid_Out & channel8_Kernel24_Valid_Out & channel9_Kernel24_Valid_Out & channel10_Kernel24_Valid_Out & channel11_Kernel24_Valid_Out & channel12_Kernel24_Valid_Out & channel13_Kernel24_Valid_Out & channel14_Kernel24_Valid_Out & channel15_Kernel24_Valid_Out & channel16_Kernel24_Valid_Out;

	wire channel1_Kernel25_Valid_Out, channel2_Kernel25_Valid_Out, channel3_Kernel25_Valid_Out, channel4_Kernel25_Valid_Out, channel5_Kernel25_Valid_Out, channel6_Kernel25_Valid_Out, channel7_Kernel25_Valid_Out, channel8_Kernel25_Valid_Out, channel9_Kernel25_Valid_Out, channel10_Kernel25_Valid_Out, channel11_Kernel25_Valid_Out, channel12_Kernel25_Valid_Out, channel13_Kernel25_Valid_Out, channel14_Kernel25_Valid_Out, channel15_Kernel25_Valid_Out, channel16_Kernel25_Valid_Out;

	assign add_kernel25=channel1_Kernel25_Valid_Out & channel2_Kernel25_Valid_Out & channel3_Kernel25_Valid_Out & channel4_Kernel25_Valid_Out & channel5_Kernel25_Valid_Out & channel6_Kernel25_Valid_Out & channel7_Kernel25_Valid_Out & channel8_Kernel25_Valid_Out & channel9_Kernel25_Valid_Out & channel10_Kernel25_Valid_Out & channel11_Kernel25_Valid_Out & channel12_Kernel25_Valid_Out & channel13_Kernel25_Valid_Out & channel14_Kernel25_Valid_Out & channel15_Kernel25_Valid_Out & channel16_Kernel25_Valid_Out;

	wire channel1_Kernel26_Valid_Out, channel2_Kernel26_Valid_Out, channel3_Kernel26_Valid_Out, channel4_Kernel26_Valid_Out, channel5_Kernel26_Valid_Out, channel6_Kernel26_Valid_Out, channel7_Kernel26_Valid_Out, channel8_Kernel26_Valid_Out, channel9_Kernel26_Valid_Out, channel10_Kernel26_Valid_Out, channel11_Kernel26_Valid_Out, channel12_Kernel26_Valid_Out, channel13_Kernel26_Valid_Out, channel14_Kernel26_Valid_Out, channel15_Kernel26_Valid_Out, channel16_Kernel26_Valid_Out;

	assign add_kernel26=channel1_Kernel26_Valid_Out & channel2_Kernel26_Valid_Out & channel3_Kernel26_Valid_Out & channel4_Kernel26_Valid_Out & channel5_Kernel26_Valid_Out & channel6_Kernel26_Valid_Out & channel7_Kernel26_Valid_Out & channel8_Kernel26_Valid_Out & channel9_Kernel26_Valid_Out & channel10_Kernel26_Valid_Out & channel11_Kernel26_Valid_Out & channel12_Kernel26_Valid_Out & channel13_Kernel26_Valid_Out & channel14_Kernel26_Valid_Out & channel15_Kernel26_Valid_Out & channel16_Kernel26_Valid_Out;

	wire channel1_Kernel27_Valid_Out, channel2_Kernel27_Valid_Out, channel3_Kernel27_Valid_Out, channel4_Kernel27_Valid_Out, channel5_Kernel27_Valid_Out, channel6_Kernel27_Valid_Out, channel7_Kernel27_Valid_Out, channel8_Kernel27_Valid_Out, channel9_Kernel27_Valid_Out, channel10_Kernel27_Valid_Out, channel11_Kernel27_Valid_Out, channel12_Kernel27_Valid_Out, channel13_Kernel27_Valid_Out, channel14_Kernel27_Valid_Out, channel15_Kernel27_Valid_Out, channel16_Kernel27_Valid_Out;

	assign add_kernel27=channel1_Kernel27_Valid_Out & channel2_Kernel27_Valid_Out & channel3_Kernel27_Valid_Out & channel4_Kernel27_Valid_Out & channel5_Kernel27_Valid_Out & channel6_Kernel27_Valid_Out & channel7_Kernel27_Valid_Out & channel8_Kernel27_Valid_Out & channel9_Kernel27_Valid_Out & channel10_Kernel27_Valid_Out & channel11_Kernel27_Valid_Out & channel12_Kernel27_Valid_Out & channel13_Kernel27_Valid_Out & channel14_Kernel27_Valid_Out & channel15_Kernel27_Valid_Out & channel16_Kernel27_Valid_Out;

	wire channel1_Kernel28_Valid_Out, channel2_Kernel28_Valid_Out, channel3_Kernel28_Valid_Out, channel4_Kernel28_Valid_Out, channel5_Kernel28_Valid_Out, channel6_Kernel28_Valid_Out, channel7_Kernel28_Valid_Out, channel8_Kernel28_Valid_Out, channel9_Kernel28_Valid_Out, channel10_Kernel28_Valid_Out, channel11_Kernel28_Valid_Out, channel12_Kernel28_Valid_Out, channel13_Kernel28_Valid_Out, channel14_Kernel28_Valid_Out, channel15_Kernel28_Valid_Out, channel16_Kernel28_Valid_Out;

	assign add_kernel28=channel1_Kernel28_Valid_Out & channel2_Kernel28_Valid_Out & channel3_Kernel28_Valid_Out & channel4_Kernel28_Valid_Out & channel5_Kernel28_Valid_Out & channel6_Kernel28_Valid_Out & channel7_Kernel28_Valid_Out & channel8_Kernel28_Valid_Out & channel9_Kernel28_Valid_Out & channel10_Kernel28_Valid_Out & channel11_Kernel28_Valid_Out & channel12_Kernel28_Valid_Out & channel13_Kernel28_Valid_Out & channel14_Kernel28_Valid_Out & channel15_Kernel28_Valid_Out & channel16_Kernel28_Valid_Out;

	wire channel1_Kernel29_Valid_Out, channel2_Kernel29_Valid_Out, channel3_Kernel29_Valid_Out, channel4_Kernel29_Valid_Out, channel5_Kernel29_Valid_Out, channel6_Kernel29_Valid_Out, channel7_Kernel29_Valid_Out, channel8_Kernel29_Valid_Out, channel9_Kernel29_Valid_Out, channel10_Kernel29_Valid_Out, channel11_Kernel29_Valid_Out, channel12_Kernel29_Valid_Out, channel13_Kernel29_Valid_Out, channel14_Kernel29_Valid_Out, channel15_Kernel29_Valid_Out, channel16_Kernel29_Valid_Out;

	assign add_kernel29=channel1_Kernel29_Valid_Out & channel2_Kernel29_Valid_Out & channel3_Kernel29_Valid_Out & channel4_Kernel29_Valid_Out & channel5_Kernel29_Valid_Out & channel6_Kernel29_Valid_Out & channel7_Kernel29_Valid_Out & channel8_Kernel29_Valid_Out & channel9_Kernel29_Valid_Out & channel10_Kernel29_Valid_Out & channel11_Kernel29_Valid_Out & channel12_Kernel29_Valid_Out & channel13_Kernel29_Valid_Out & channel14_Kernel29_Valid_Out & channel15_Kernel29_Valid_Out & channel16_Kernel29_Valid_Out;

	wire channel1_Kernel30_Valid_Out, channel2_Kernel30_Valid_Out, channel3_Kernel30_Valid_Out, channel4_Kernel30_Valid_Out, channel5_Kernel30_Valid_Out, channel6_Kernel30_Valid_Out, channel7_Kernel30_Valid_Out, channel8_Kernel30_Valid_Out, channel9_Kernel30_Valid_Out, channel10_Kernel30_Valid_Out, channel11_Kernel30_Valid_Out, channel12_Kernel30_Valid_Out, channel13_Kernel30_Valid_Out, channel14_Kernel30_Valid_Out, channel15_Kernel30_Valid_Out, channel16_Kernel30_Valid_Out;

	assign add_kernel30=channel1_Kernel30_Valid_Out & channel2_Kernel30_Valid_Out & channel3_Kernel30_Valid_Out & channel4_Kernel30_Valid_Out & channel5_Kernel30_Valid_Out & channel6_Kernel30_Valid_Out & channel7_Kernel30_Valid_Out & channel8_Kernel30_Valid_Out & channel9_Kernel30_Valid_Out & channel10_Kernel30_Valid_Out & channel11_Kernel30_Valid_Out & channel12_Kernel30_Valid_Out & channel13_Kernel30_Valid_Out & channel14_Kernel30_Valid_Out & channel15_Kernel30_Valid_Out & channel16_Kernel30_Valid_Out;

	wire channel1_Kernel31_Valid_Out, channel2_Kernel31_Valid_Out, channel3_Kernel31_Valid_Out, channel4_Kernel31_Valid_Out, channel5_Kernel31_Valid_Out, channel6_Kernel31_Valid_Out, channel7_Kernel31_Valid_Out, channel8_Kernel31_Valid_Out, channel9_Kernel31_Valid_Out, channel10_Kernel31_Valid_Out, channel11_Kernel31_Valid_Out, channel12_Kernel31_Valid_Out, channel13_Kernel31_Valid_Out, channel14_Kernel31_Valid_Out, channel15_Kernel31_Valid_Out, channel16_Kernel31_Valid_Out;

	assign add_kernel31=channel1_Kernel31_Valid_Out & channel2_Kernel31_Valid_Out & channel3_Kernel31_Valid_Out & channel4_Kernel31_Valid_Out & channel5_Kernel31_Valid_Out & channel6_Kernel31_Valid_Out & channel7_Kernel31_Valid_Out & channel8_Kernel31_Valid_Out & channel9_Kernel31_Valid_Out & channel10_Kernel31_Valid_Out & channel11_Kernel31_Valid_Out & channel12_Kernel31_Valid_Out & channel13_Kernel31_Valid_Out & channel14_Kernel31_Valid_Out & channel15_Kernel31_Valid_Out & channel16_Kernel31_Valid_Out;

	wire channel1_Kernel32_Valid_Out, channel2_Kernel32_Valid_Out, channel3_Kernel32_Valid_Out, channel4_Kernel32_Valid_Out, channel5_Kernel32_Valid_Out, channel6_Kernel32_Valid_Out, channel7_Kernel32_Valid_Out, channel8_Kernel32_Valid_Out, channel9_Kernel32_Valid_Out, channel10_Kernel32_Valid_Out, channel11_Kernel32_Valid_Out, channel12_Kernel32_Valid_Out, channel13_Kernel32_Valid_Out, channel14_Kernel32_Valid_Out, channel15_Kernel32_Valid_Out, channel16_Kernel32_Valid_Out;

	assign add_kernel32=channel1_Kernel32_Valid_Out & channel2_Kernel32_Valid_Out & channel3_Kernel32_Valid_Out & channel4_Kernel32_Valid_Out & channel5_Kernel32_Valid_Out & channel6_Kernel32_Valid_Out & channel7_Kernel32_Valid_Out & channel8_Kernel32_Valid_Out & channel9_Kernel32_Valid_Out & channel10_Kernel32_Valid_Out & channel11_Kernel32_Valid_Out & channel12_Kernel32_Valid_Out & channel13_Kernel32_Valid_Out & channel14_Kernel32_Valid_Out & channel15_Kernel32_Valid_Out & channel16_Kernel32_Valid_Out;


	wire [31:0] bn1_Data_Out, bn2_Data_Out, bn3_Data_Out, bn4_Data_Out, bn5_Data_Out, bn6_Data_Out, bn7_Data_Out, bn8_Data_Out, bn9_Data_Out, bn10_Data_Out, bn11_Data_Out, bn12_Data_Out, bn13_Data_Out, bn14_Data_Out, bn15_Data_Out, bn16_Data_Out, bn17_Data_Out, bn18_Data_Out, bn19_Data_Out, bn20_Data_Out, bn21_Data_Out, bn22_Data_Out, bn23_Data_Out, bn24_Data_Out, bn25_Data_Out, bn26_Data_Out, bn27_Data_Out, bn28_Data_Out, bn29_Data_Out, bn30_Data_Out, bn31_Data_Out, bn32_Data_Out;

	wire bn1_Valid_Out, bn2_Valid_Out, bn3_Valid_Out, bn4_Valid_Out, bn5_Valid_Out, bn6_Valid_Out, bn7_Valid_Out, bn8_Valid_Out, bn9_Valid_Out, bn10_Valid_Out, bn11_Valid_Out, bn12_Valid_Out, bn13_Valid_Out, bn14_Valid_Out, bn15_Valid_Out, bn16_Valid_Out, bn17_Valid_Out, bn18_Valid_Out, bn19_Valid_Out, bn20_Valid_Out, bn21_Valid_Out, bn22_Valid_Out, bn23_Valid_Out, bn24_Valid_Out, bn25_Valid_Out, bn26_Valid_Out, bn27_Valid_Out, bn28_Valid_Out, bn29_Valid_Out, bn30_Valid_Out, bn31_Valid_Out, bn32_Valid_Out;

	wire rl1_Valid_Out, rl2_Valid_Out, rl3_Valid_Out, rl4_Valid_Out, rl5_Valid_Out, rl6_Valid_Out, rl7_Valid_Out, rl8_Valid_Out, rl9_Valid_Out, rl10_Valid_Out, rl11_Valid_Out, rl12_Valid_Out, rl13_Valid_Out, rl14_Valid_Out, rl15_Valid_Out, rl16_Valid_Out, rl17_Valid_Out, rl18_Valid_Out, rl19_Valid_Out, rl20_Valid_Out, rl21_Valid_Out, rl22_Valid_Out, rl23_Valid_Out, rl24_Valid_Out, rl25_Valid_Out, rl26_Valid_Out, rl27_Valid_Out, rl28_Valid_Out, rl29_Valid_Out, rl30_Valid_Out, rl31_Valid_Out, rl32_Valid_Out;

	 assign Valid_Out = rl1_Valid_Out & rl2_Valid_Out & rl3_Valid_Out & rl4_Valid_Out & rl5_Valid_Out & rl6_Valid_Out & rl7_Valid_Out & rl8_Valid_Out & rl9_Valid_Out & rl10_Valid_Out & rl11_Valid_Out & rl12_Valid_Out & rl13_Valid_Out & rl14_Valid_Out & rl15_Valid_Out & rl16_Valid_Out & rl17_Valid_Out & rl18_Valid_Out & rl19_Valid_Out & rl20_Valid_Out & rl21_Valid_Out & rl22_Valid_Out & rl23_Valid_Out & rl24_Valid_Out & rl25_Valid_Out & rl26_Valid_Out & rl27_Valid_Out & rl28_Valid_Out & rl29_Valid_Out & rl30_Valid_Out & rl31_Valid_Out & rl32_Valid_Out;
//////////KERNEL1//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110101111011111000100111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101100001010000000010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110010110111010010110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110110111101111010001011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110000000111010110100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101110000001101110111100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101100010100000100000000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111010110101001101000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101111111011110100001010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110011000001100010001001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110100110000101111010011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110101001000110110001110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110011010001010011011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101010111000011010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101110011101000101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111000111001001001110111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111111011101100100000010100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111101111100000111110110100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110100111111001111010110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110000110000010000101001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111110101000010010100000100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110110011010001100011111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110001101000111111101001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110110000000100001101101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110010010110110111101010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110111111110101010111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110011111101110111111000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110001101110010000011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111101001101100010110000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111111010110001000011111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110001010110110000111101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110100010101100100101111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel1_Valid_Out)
	);
	Adder_32input add_k1(
		.Data1(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel1[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel1[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel1[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel1[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel1[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel1[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel1[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel1[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel1[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel1[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel1[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel1[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel1[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel1[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel1[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel1[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel1[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel1[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel1[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel1[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel1[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel1[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel1[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel1[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel1),
		.Data_Out(add_k1_Data_Out),
		.Valid_Out(add_kernel1_Valid_Out)
	);
	Batch_Norm bn_kernel1(
		.Data_A(32'b00111110111100101100010000110100),
		.Data_B(32'b00111111001110001001001010110110),
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
		.Kernel(32'b00111101101100010100001111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111010000000110100001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111010011111011010100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110111010101110010111100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101110100101001100001001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101010110110110101110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110011111001000001100111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110000001101110011010000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110101001110101110100100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101100110011111111010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111001001101011101000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100111111100101000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101111111001110110011111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110000000111010110111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110001011100011100101111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101101101001110010000001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110100110011011110111110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111101111000100100011010011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111101111011011100001110000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111100111110000100111010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110100000101010100100110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111111000111001000001100110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110001101000011101100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110101100001110010111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111101110101100101101100011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111110110110010111011100110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110000100001010001110101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110111110111000110110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111110111000000111010010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101100110000000001101101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111101111010000100100101111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111111010001010100010101001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel2_Valid_Out)
	);
	Adder_32input add_k2(
		.Data1(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel2[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel2[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel2[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel2[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel2[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel2[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel2[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel2[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel2[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel2[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel2[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel2[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel2[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel2[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel2[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel2[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel2[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel2[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel2[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel2[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel2[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel2[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel2[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel2[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel2),
		.Data_Out(add_k2_Data_Out),
		.Valid_Out(add_kernel2_Valid_Out)
	);
	Batch_Norm bn_kernel2(
		.Data_A(32'b00111110111010000100100101000110),
		.Data_B(32'b00111101010011011000000000001110),
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
		.Kernel(32'b10111110000010101000111001100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111001000001001010111110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100011101001100110111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110101011100100110000001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111001110011101011100011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110011010110011101001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110011111010011111000100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110001101111000100000110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111001000101101101010101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101010010011011011110111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110001001011001111111110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110111010110011101010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101100001111000011110000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110111100001010010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110111011100110000010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110001011001010110110101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111010001011011000000111100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111110101001110010100100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110010111001100111011100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110100010100101111100110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111110100100011110010011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111101101001101011001010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110011111110100100010100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111111010000000111000000010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110100100011111001101001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110001100100100000111011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111111010111011101001010111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111111001100101100110101111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111100000110101001000010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111101111111001001010101001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111100111111101101100001100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110101110010000001111000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel3_Valid_Out)
	);
	Adder_32input add_k3(
		.Data1(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel3[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel3[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel3[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel3[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel3[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel3[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel3[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel3[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel3[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel3[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel3[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel3[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel3[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel3[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel3[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel3[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel3[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel3[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel3[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel3[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel3[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel3[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel3[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel3[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel3),
		.Data_Out(add_k3_Data_Out),
		.Valid_Out(add_kernel3_Valid_Out)
	);
	Batch_Norm bn_kernel3(
		.Data_A(32'b00111110110000101010010100011110),
		.Data_B(32'b10111100001011000110011100010011),
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
		.Kernel(32'b00111101110011101011101011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110110100111000011000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111100000110011101101111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110111100011100001111101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111100110001000101101111111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101001111000100001010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101110001101011110111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110100110111000100001101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111011010010101110110101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100010001110011010100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110101001010011100101100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101010110011110000100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101011010111101010010100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111001111110100011001100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101101101101101010110111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110001111010000111001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111101000011011110111101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110011110011100010001011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111101100110101000101111111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110101010100110011101010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110001101100101011010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111111000101110011100100011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111111000000110101111011001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111100011101001010010100011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110110100001011011111001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111101100010001000010010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110101101111011000100100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110100010011111100110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111110100010010111111010000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101000011101100001000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111101010010000101110011110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111101111101001111101000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel4_Valid_Out)
	);
	Adder_32input add_k4(
		.Data1(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel4[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel4[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel4[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel4[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel4[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel4[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel4[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel4[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel4[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel4[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel4[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel4[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel4[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel4[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel4[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel4[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel4[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel4[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel4[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel4[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel4[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel4[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel4[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel4[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel4),
		.Data_Out(add_k4_Data_Out),
		.Valid_Out(add_kernel4_Valid_Out)
	);
	Batch_Norm bn_kernel4(
		.Data_A(32'b00111110111101010011101110111101),
		.Data_B(32'b10111101101100111111000010101010),
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
		.Kernel(32'b00111101101111000111000000011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101111101111100011001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111000110011100101111101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111001101001110111011010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110111010001000011000101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110001101001110011101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110010001000111111101010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101110010101001011110100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110000000000011011101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101111011111000110010110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111100001111101100111010011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000100011101001101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111100111000010000011111000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111000001010000110001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111101111000101110000010000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110101100001011000111010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110000001100010101001011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111110000010010100011010110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110110011101100111101111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110110010110000111111111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110011010011110101101010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110101000010001001101101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111101100011100111101001010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111111000111010000100000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111111001000100111101100010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110100111000011110010101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111101100010111100111000001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110001110000100001001110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110110010010111100000101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111110010111101000000000101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110100100110110111110010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110111100100000101010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel5_Valid_Out)
	);
	Adder_32input add_k5(
		.Data1(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel5[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel5[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel5[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel5[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel5[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel5[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel5[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel5[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel5[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel5[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel5[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel5[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel5[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel5[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel5[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel5[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel5[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel5[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel5[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel5[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel5[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel5[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel5[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel5[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel5),
		.Data_Out(add_k5_Data_Out),
		.Valid_Out(add_kernel5_Valid_Out)
	);
	Batch_Norm bn_kernel5(
		.Data_A(32'b00111111000000001101000010110110),
		.Data_B(32'b00111110100100101111110111110001),
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
		.Kernel(32'b10111100101110010111010101111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101101110101011000100100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110000001101011001010010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111100001100101110100100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101111111001001100011001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101100010000010000000010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110010110001000110101110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101110000011000000010001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110111001000100111110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111001000000101010011000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110010010100111001101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110000101110000001111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110111000110111011111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101000010010010000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110000011010000110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110011111010011111100000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111111011100110000110001110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111101000101010110110000000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111100111000001011000111111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110100110011010011100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110000111111011001011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110001001000110001011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111101111010011000101101011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110101101011010101000011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110111100010101101110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111111011101110000001110111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110100110001010110000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110111011101110110101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111101111101110011010100110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111111000110010110001100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111101000010101111101100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111101111100100010111011000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel6_Valid_Out)
	);
	Adder_32input add_k6(
		.Data1(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel6[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel6[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel6[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel6[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel6[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel6[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel6[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel6[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel6[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel6[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel6[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel6[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel6[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel6[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel6[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel6[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel6[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel6[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel6[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel6[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel6[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel6[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel6[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel6[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel6),
		.Data_Out(add_k6_Data_Out),
		.Valid_Out(add_kernel6_Valid_Out)
	);
	Batch_Norm bn_kernel6(
		.Data_A(32'b00111110110010101010110111001001),
		.Data_B(32'b10111110011000101010101011000011),
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
		.Kernel(32'b00111110110110010010110010001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110000101100110011010000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101111000010011100111010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000001111110001101001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000011001100010000110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110011000101111100001010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000010101110010110010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110100010110001001000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111100001000101101010111110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000101101001100010101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110101000000010101010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101111011100111101110011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000110110010101111111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111000100101011100001110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111100110000001110010110011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101101110010010001100101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111111001001100110111011101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110111011111011101001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110000101000011010010001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110101010010100000100000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110101110010111010100011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110101011001110101000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111111000110100110000001001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110011100001101101100001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110101010110101111101011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111111001001100011000000000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110101101100101111111110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111100011010001110110101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111111000001001011000011101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111100100010111001000110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111100000001010100011101001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110001001011011111110111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel7_Valid_Out)
	);
	Adder_32input add_k7(
		.Data1(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel7[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel7[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel7[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel7[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel7[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel7[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel7[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel7[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel7[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel7[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel7[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel7[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel7[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel7[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel7[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel7[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel7[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel7[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel7[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel7[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel7[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel7[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel7[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel7[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel7),
		.Data_Out(add_k7_Data_Out),
		.Valid_Out(add_kernel7_Valid_Out)
	);
	Batch_Norm bn_kernel7(
		.Data_A(32'b00111111000110000111001101110101),
		.Data_B(32'b00111110101101110000100100100100),
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
		.Kernel(32'b00111110001101000111011111000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110001000000100110010000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110101110100011111010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110011101010011011110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111010010001100111010010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000111000110101101011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101000010011011011011001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111000100101111110001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111000100000010110101001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111000001001100110101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110111101111000011111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101101010110101100111001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111011010101111101000010001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101100111001111011110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110111010010010110010000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101001011100011100100011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110001110010100111010001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111110110010101010001100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111101110111101110111010010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110001110100101110110000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111101000001101010101001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110010011001011100001111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110110010001110111010000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111101111010010001010011001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110100001010110111101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111110000011101101010000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111101100111000011010101111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110110011100101100000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111111000100000110000100000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101011001111101001001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110111111110110001100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111100110010010000110100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel8_Valid_Out)
	);
	Adder_32input add_k8(
		.Data1(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel8[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel8[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel8[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel8[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel8[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel8[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel8[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel8[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel8[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel8[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel8[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel8[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel8[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel8[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel8[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel8[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel8[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel8[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel8[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel8[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel8[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel8[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel8[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel8[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel8),
		.Data_Out(add_k8_Data_Out),
		.Valid_Out(add_kernel8_Valid_Out)
	);
	Batch_Norm bn_kernel8(
		.Data_A(32'b00111111000100101010110110101000),
		.Data_B(32'b00111101111010010100010101100011),
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
		.Kernel(32'b00111111000111110010011111010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101001101101010011100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110001110110011001010111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111101010011010001001100100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100111011011101101100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110001111011000100111001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110010010010000000010001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111100111101010111110010101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110100110110010111110011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100010010000000011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000111101000001000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101010000001100011111100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110100101110000101111110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111000000001001000010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101001010011111011111111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111100000011101110101111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110011011111111111010011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111110101010011011010101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110100000000001100101010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110111010100010110101001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111100110100110001000101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110101011111010100000011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111101110000111000010011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111101100110000101000101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111111001101101000001111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111101110010101101111001101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111101111100110000011101111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110100001010011100011100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111111010000001100110110111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111110001111111000001110001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110110100011100110011111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111111001100110010110000100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel9_Valid_Out)
	);
	Adder_32input add_k9(
		.Data1(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel9[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel9[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel9[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel9[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel9[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel9[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel9[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel9[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel9[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel9[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel9[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel9[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel9[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel9[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel9[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel9[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel9[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel9[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel9[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel9[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel9[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel9[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel9[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel9[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel9),
		.Data_Out(add_k9_Data_Out),
		.Valid_Out(add_kernel9_Valid_Out)
	);
	Batch_Norm bn_kernel9(
		.Data_A(32'b00111110110110101001000111000100),
		.Data_B(32'b00111110000111000000101000111100),
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
		.Kernel(32'b10111101111011101100001000111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100101100000000110101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110111010000011011100011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110101001001100101111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101101110011011011111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101101010001111100100011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110110101111111101110111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111010100111001110111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110001011101100101101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111100111101110100001110111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110111001010001110001000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101100011011010001000111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110111001011110111011011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110000011000111110110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111101000101011101100000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101000001111000111010100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110010101000011101001001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111111001001001000100100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111101100010010111111101101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101110111010010110000001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111101110110101001101010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111101100000011000000010001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111111000010011111010000111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110011100110010000110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110110101100010111111110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111111000100001100000111100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110101101110010001001111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110001000001110111100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110101010001110000010100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111110000110001111110010101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110011000010010001011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111111000101100000111000111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel10_Valid_Out)
	);
	Adder_32input add_k10(
		.Data1(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel10[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel10[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel10[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel10[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel10[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel10[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel10[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel10[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel10[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel10[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel10[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel10[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel10[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel10[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel10[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel10[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel10[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel10[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel10[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel10[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel10[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel10[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel10[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel10[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel10),
		.Data_Out(add_k10_Data_Out),
		.Valid_Out(add_kernel10_Valid_Out)
	);
	Batch_Norm bn_kernel10(
		.Data_A(32'b00111111000000100111110110100001),
		.Data_B(32'b10111110011001010100011001011101),
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
		.Kernel(32'b10111110111111010010101001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110101101001001010100001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110100111100110011011100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110110000100101010010100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110101111111010010011010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110011010101111110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101011111000000110001000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111001001001010100110011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111101000100000101000101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100100011011011000111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000110001000110111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101100000101111000000010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110011001111101000101011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101001110111100101011110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110001000000000000111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101111000001001011111011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110101000000110000101110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111101110010000001101010001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111100001001111111001010111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101111010100100011000110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111111000110001111101001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110111111001111010010100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110001111010010000101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111101010101011100111001001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110001110011111001110100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110110010011100010000010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110110010100100100101000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110111011000100100100111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110000101100111101010011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111101101110111001001001001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110101101010100000110011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110110000100001010100001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel11_Valid_Out)
	);
	Adder_32input add_k11(
		.Data1(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel11[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel11[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel11[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel11[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel11[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel11[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel11[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel11[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel11[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel11[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel11[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel11[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel11[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel11[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel11[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel11[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel11[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel11[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel11[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel11[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel11[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel11[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel11[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel11[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel11),
		.Data_Out(add_k11_Data_Out),
		.Valid_Out(add_kernel11_Valid_Out)
	);
	Batch_Norm bn_kernel11(
		.Data_A(32'b00111110111001001001010010010001),
		.Data_B(32'b00111111011110110100101100011011),
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
		.Kernel(32'b10111110100111011100110101111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101000011100011101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110001101000110001001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010100110000100001001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111100001010011010010001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101100110100011010110110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101111110000010101001011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101011110101100010000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111100100100011111100100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100010100100000011111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101111111100111100100001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110111010010000111001010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000000110011001001111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110110101001110001001000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101110100011010010100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110101000100100001000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110010010110001011001000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110001110111111010001111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111111000101111011000100001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101011110101000100100110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111110010011001011100011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111111011010001011101010011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110101010001010101000010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110001111111111011000101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111101101010111001111110000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111110010101010011100100010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110111000000101110110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111111001011010000000111110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110011010111001111000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111100001011110001010110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110111011110100010111000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111101011101101010101110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel12_Valid_Out)
	);
	Adder_32input add_k12(
		.Data1(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel12[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel12[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel12[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel12[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel12[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel12[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel12[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel12[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel12[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel12[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel12[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel12[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel12[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel12[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel12[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel12[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel12[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel12[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel12[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel12[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel12[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel12[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel12[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel12[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel12),
		.Data_Out(add_k12_Data_Out),
		.Valid_Out(add_kernel12_Valid_Out)
	);
	Batch_Norm bn_kernel12(
		.Data_A(32'b00111110101001101000010110001001),
		.Data_B(32'b10111110101111001010100011010001),
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
		.Kernel(32'b00111101101010110110100101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100001000001110110010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110000001100111011101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001001011000011001111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110001011000101111101010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100101001110001111011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111010000101111001000111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110100011100001111110111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110100111110011011110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110101111110100001100000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110000011101000001011101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000011100001000000010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111001010011101010001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111001110110101011110011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111111001011111000101000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111000011000010000000011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111100101001000110000100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111111000001110111111111100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110110101111001101000000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101001110000111111001011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111110111101011010010000011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110001101010100001011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111111001001011010001111010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110110101011000011101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111111000101101100000101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111111000011111000100101001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110001000100110001010010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110100100000101010101101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110010000000100101100011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111100001101111000001110101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111101101010010100110000100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111111000001100110001000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel13_Valid_Out)
	);
	Adder_32input add_k13(
		.Data1(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel13[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel13[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel13[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel13[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel13[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel13[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel13[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel13[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel13[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel13[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel13[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel13[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel13[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel13[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel13[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel13[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel13[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel13[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel13[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel13[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel13[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel13[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel13[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel13[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel13),
		.Data_Out(add_k13_Data_Out),
		.Valid_Out(add_kernel13_Valid_Out)
	);
	Batch_Norm bn_kernel13(
		.Data_A(32'b00111111000011111000001001110110),
		.Data_B(32'b00111110111100101000111000001111),
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
		.Kernel(32'b10111111000011010111011001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000011101110001101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101010001011011100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101111110000100011100011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110100001011001000010101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101111000010010101110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110110111011101010011110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101110100010110101110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101000000010111100000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100111101010101001111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111001000000100011100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100000000101111111000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100000011010101010011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100001000110010101110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110011111011001000000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111001000001000001001010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110000011000011110001011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111101101010000111101111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110001110001011100000001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111111000010111111000110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110111100010100100110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110011010011100010110000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111100101001100001100001111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111111000001101010101100101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110111100000101010001111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111101101101001111001110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111101111100111011011100100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110000101000101000100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111110101100000110101011010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111111100101011110011100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111100110110100001110111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111100000111000111110101001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel14_Valid_Out)
	);
	Adder_32input add_k14(
		.Data1(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel14[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel14[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel14[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel14[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel14[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel14[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel14[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel14[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel14[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel14[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel14[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel14[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel14[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel14[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel14[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel14[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel14[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel14[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel14[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel14[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel14[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel14[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel14[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel14[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel14),
		.Data_Out(add_k14_Data_Out),
		.Valid_Out(add_kernel14_Valid_Out)
	);
	Batch_Norm bn_kernel14(
		.Data_A(32'b00111111000000001011000011111001),
		.Data_B(32'b00111110100001100111101000001011),
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
		.Kernel(32'b10111111000010011111011101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101111101011110001011000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110000111111010001011001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110101011100111101001110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101110011110111000101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111010100001000101001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110000000011000110010010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110000111111110010011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100001011101010101011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101111100001001110000010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101011001111111001000101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111001000011100101001010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110010100110110110011110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100010110110110110111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110011101011000000000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110110111011010001100011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110100000101011111000000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111111000011110010010100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110110110100000110010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111011011111001101111000100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111100000000111110110100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110101111010000011111000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111100010100001110011100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111111001000101101111101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110100111001000111010101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110111010111110110001100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110010001101010000001011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110110010110100011000110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111101111001100110010000111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101100001100010000111111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111111000110111000101001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111101111111001011101101011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel15_Valid_Out)
	);
	Adder_32input add_k15(
		.Data1(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel15[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel15[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel15[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel15[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel15[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel15[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel15[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel15[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel15[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel15[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel15[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel15[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel15[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel15[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel15[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel15[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel15[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel15[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel15[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel15[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel15[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel15[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel15[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel15[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel15),
		.Data_Out(add_k15_Data_Out),
		.Valid_Out(add_kernel15_Valid_Out)
	);
	Batch_Norm bn_kernel15(
		.Data_A(32'b00111111000011110011000100010001),
		.Data_B(32'b00111110000000001000111011011110),
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
		.Kernel(32'b00111110100001001010111011000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101110001000100110011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110111011011100101000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111100110000010011001010011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000011011011111101111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101100100011110000101111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111100100000111110011101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110011010011010100000101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110011100001110100011011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110111010000000010010001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110101100001000110010010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110001010011001001100100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111100101010101010111011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110010111001000111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110101000100011111110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110101011100100101110100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111101111100111100100010111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111101110001011001110011000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110100111011001010110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111100111111111111011000100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111011100010100110101110110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111101100001000110010111100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110100000101100111110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110110100010100000010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111111000101010101000000000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111101010000100010100100011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111101111001110100000000001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110010110001111111111110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111101101100001010101000000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111101100111000010100001100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111111000111101010111011110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111101110010100010011000111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel16_Valid_Out)
	);
	Adder_32input add_k16(
		.Data1(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel16[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel16[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel16[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel16[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel16[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel16[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel16[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel16[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel16[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel16[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel16[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel16[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel16[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel16[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel16[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel16[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel16[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel16[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel16[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel16[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel16[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel16[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel16[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel16[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel16),
		.Data_Out(add_k16_Data_Out),
		.Valid_Out(add_kernel16_Valid_Out)
	);
	Batch_Norm bn_kernel16(
		.Data_A(32'b00111110110000111111111110100111),
		.Data_B(32'b10111111010100101110001111101100),
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
//////////KERNEL17//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111011111011100111111101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111000001011011001010000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110111001010100111010101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101100101001110100111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110001111000110110110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000101010000111001001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111100110011011000001111111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101000101100111110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110010011010110011100110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101101101011001111011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110010111010011111000100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101111101001010001000100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000101010111111011111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101111010100000001001011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111000100101010011010100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101011010011001011100111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110000101111000110100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110001001010110010010110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111111000000000001111011110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111111010100110101110111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111111001101000101101100000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110100110101111110111001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110100101001001110111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110111001110000010110100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110000010011000001011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111101111100100011011001000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111111000100101011010111011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111111000000111110111100011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111111000001000100101011010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111110010101100000110111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110011100110110111110001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110010011110110000011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel17_Valid_Out)
	);
	Adder_32input add_k17(
		.Data1(Data_Out_Kernel17[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel17[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel17[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel17[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel17[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel17[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel17[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel17[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel17[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel17[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel17[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel17[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel17[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel17[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel17[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel17[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel17[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel17[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel17[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel17[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel17[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel17[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel17[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel17[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel17[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel17[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel17[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel17[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel17[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel17[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel17[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel17[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel17),
		.Data_Out(add_k17_Data_Out),
		.Valid_Out(add_kernel17_Valid_Out)
	);
	Batch_Norm bn_kernel17(
		.Data_A(32'b00111110110110001011100111000010),
		.Data_B(32'b10111110001001010101111011110000),
		.Data_In(add_k17_Data_Out),
		.Valid_In(add_kernel17_Valid_Out),
		.Data_Out(bn17_Data_Out),
		.Valid_Out(bn17_Valid_Out)
	);
	Relu_Core rl_kernel17(
		.Data_In(bn17_Data_Out),
		.Valid_In(bn17_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(rl17_Valid_Out)
	);
//////////KERNEL18//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111101110011100110011111101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100110010100010101011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111000011101111110110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110101111001110111001010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101100101101011100011101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110100110111111001000111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110110010100000110011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110100000011110001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110101001000111000011000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101001011100000100110101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110010110101100101011011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101111000011010000001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110000000100001001010011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101100100011001111010100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110010000000011100010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110100100100001011101010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110100011010101101110111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111111000111000100011111011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110110101101110110101110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110101010001010110111010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111111001001100011100100100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110100100111110001011010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110011001111111001010001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111111001100011101110111111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110101000011000110110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111101111101010111010110000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110011001100010100100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110101011101011011010100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110110101001001011110100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111100111000010100011010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111111011110111100100111010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111101110111100110010100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel18_Valid_Out)
	);
	Adder_32input add_k18(
		.Data1(Data_Out_Kernel18[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel18[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel18[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel18[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel18[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel18[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel18[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel18[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel18[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel18[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel18[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel18[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel18[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel18[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel18[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel18[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel18[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel18[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel18[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel18[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel18[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel18[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel18[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel18[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel18[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel18[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel18[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel18[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel18[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel18[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel18[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel18[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel18),
		.Data_Out(add_k18_Data_Out),
		.Valid_Out(add_kernel18_Valid_Out)
	);
	Batch_Norm bn_kernel18(
		.Data_A(32'b00111110110101011101101010100010),
		.Data_B(32'b00111111001111101100001011101101),
		.Data_In(add_k18_Data_Out),
		.Valid_In(add_kernel18_Valid_Out),
		.Data_Out(bn18_Data_Out),
		.Valid_Out(bn18_Valid_Out)
	);
	Relu_Core rl_kernel18(
		.Data_In(bn18_Data_Out),
		.Valid_In(bn18_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(rl18_Valid_Out)
	);
//////////KERNEL19//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110100010101100010101110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110100110100111101010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111010001011011110101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010001010011001111000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100011100110000000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101001101000101010101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000101001001100100001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101001101011100010011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101000001110100110100000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111010110101100100101010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101101100011000011000011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111100100000110111101011010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100100110000111100110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111000001001001001011000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111001011000101100111110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101111000100011011001111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110011101100101000100100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111100111101101011011100110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110101011000110100100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110000010100110011111101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111101111011000101001110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110001110111111111100010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110010101110111101110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111101001000111011110010000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110101101010110001111010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111101100100111100011111001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111111000101001111101011100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111100100111010110011010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111111001010100100011000100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111111001110001101110000110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110000000111010110101011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110000100100010100100011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel19_Valid_Out)
	);
	Adder_32input add_k19(
		.Data1(Data_Out_Kernel19[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel19[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel19[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel19[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel19[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel19[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel19[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel19[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel19[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel19[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel19[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel19[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel19[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel19[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel19[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel19[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel19[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel19[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel19[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel19[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel19[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel19[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel19[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel19[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel19[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel19[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel19[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel19[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel19[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel19[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel19[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel19[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel19),
		.Data_Out(add_k19_Data_Out),
		.Valid_Out(add_kernel19_Valid_Out)
	);
	Batch_Norm bn_kernel19(
		.Data_A(32'b00111111000001011011101010001011),
		.Data_B(32'b10111110111001000001100100100110),
		.Data_In(add_k19_Data_Out),
		.Valid_In(add_kernel19_Valid_Out),
		.Data_Out(bn19_Data_Out),
		.Valid_Out(bn19_Valid_Out)
	);
	Relu_Core rl_kernel19(
		.Data_In(bn19_Data_Out),
		.Valid_In(bn19_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(rl19_Valid_Out)
	);
//////////KERNEL20//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111010100010100010110101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110110010001100100001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110011100010100000100100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110111000001100110100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110100101100100101011011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111010000111001111011011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101100000101111100111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000000101111000111111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110011010001101010000111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000101111111010011110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101101010011111101011001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110010111100011111100110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111011001000101010110000001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110010000100010000011110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101011100001101001111100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111001100001111001100001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111101100100010011111000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110101011110111100010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111111010000001110111010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101101001010010001011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111101001011000101101000011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110011111110000110000010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110100101111010100001100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110110001111100110011111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111101000101101001011011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111101101001000010101111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110100001110011001001011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111111011001110110011010110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111101000111111010101101111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101110001001100101011001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111101111000010110001000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110110001111001101110011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel20_Valid_Out)
	);
	Adder_32input add_k20(
		.Data1(Data_Out_Kernel20[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel20[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel20[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel20[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel20[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel20[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel20[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel20[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel20[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel20[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel20[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel20[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel20[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel20[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel20[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel20[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel20[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel20[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel20[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel20[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel20[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel20[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel20[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel20[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel20[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel20[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel20[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel20[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel20[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel20[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel20[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel20[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel20),
		.Data_Out(add_k20_Data_Out),
		.Valid_Out(add_kernel20_Valid_Out)
	);
	Batch_Norm bn_kernel20(
		.Data_A(32'b00111111000111010000000111111010),
		.Data_B(32'b10111111101000111010111101110010),
		.Data_In(add_k20_Data_Out),
		.Valid_In(add_kernel20_Valid_Out),
		.Data_Out(bn20_Data_Out),
		.Valid_Out(bn20_Valid_Out)
	);
	Relu_Core rl_kernel20(
		.Data_In(bn20_Data_Out),
		.Valid_In(bn20_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(rl20_Valid_Out)
	);
//////////KERNEL21//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110011000011111000001001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110110011001111000100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101101100100001011110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111000101010011011001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101010000010001111111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000111101001110000110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111000011001111001001010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110110010100010010100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110111000001000011011011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110001100100101101010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110100110111110101001100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100011010111111100111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111000011010011110100101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111001010001100001001010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111001110010011001000011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110001000111011110010011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110101001000101110011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111110101010101100001100001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111111010010010010101001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110011111111011011000100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111111001000111010011111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111110110100110101110100011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110001000110110010100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110000111000101001011100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110000011100011000001110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110100011001001101011100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110011111101010100001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110110111000101000101110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111101110101000110111100101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111101111010110101111001011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110101010000001010011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110010110011101011011000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel21_Valid_Out)
	);
	Adder_32input add_k21(
		.Data1(Data_Out_Kernel21[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel21[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel21[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel21[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel21[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel21[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel21[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel21[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel21[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel21[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel21[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel21[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel21[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel21[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel21[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel21[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel21[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel21[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel21[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel21[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel21[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel21[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel21[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel21[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel21[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel21[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel21[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel21[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel21[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel21[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel21[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel21[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel21),
		.Data_Out(add_k21_Data_Out),
		.Valid_Out(add_kernel21_Valid_Out)
	);
	Batch_Norm bn_kernel21(
		.Data_A(32'b00111111000100110110101100001110),
		.Data_B(32'b10111101101010100011000101001010),
		.Data_In(add_k21_Data_Out),
		.Valid_In(add_kernel21_Valid_Out),
		.Data_Out(bn21_Data_Out),
		.Valid_Out(bn21_Valid_Out)
	);
	Relu_Core rl_kernel21(
		.Data_In(bn21_Data_Out),
		.Valid_In(bn21_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(rl21_Valid_Out)
	);
//////////KERNEL22//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111110000001001100100110001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111001111110101111101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101010010010110000000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001011010110010001101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110111110100010101101110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110011001111110001000001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101111100011001110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000011111010000100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110001111111111011100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110011111010111110001001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110100101011010011011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000001000000110010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110010011010101101111010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100011111110111100011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110100011011001011010011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111010110111101100011111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110000001000111000001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111101111001010000010011011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110111001100011100101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110001111010001010001101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111111000001001001110100000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111101100100101100001100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111101000111000101101010101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110001000000011110111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110100111011110111111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111110001111111001000001100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111101111011001111110011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111111000011000001010010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111101111000110001010000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111110100011010111101011111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111101011011111100101100100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111111001011101010111011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel22_Valid_Out)
	);
	Adder_32input add_k22(
		.Data1(Data_Out_Kernel22[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel22[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel22[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel22[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel22[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel22[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel22[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel22[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel22[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel22[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel22[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel22[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel22[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel22[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel22[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel22[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel22[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel22[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel22[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel22[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel22[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel22[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel22[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel22[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel22[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel22[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel22[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel22[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel22[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel22[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel22[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel22[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel22),
		.Data_Out(add_k22_Data_Out),
		.Valid_Out(add_kernel22_Valid_Out)
	);
	Batch_Norm bn_kernel22(
		.Data_A(32'b00111111000000001101101110011010),
		.Data_B(32'b00111110101100100000001101100101),
		.Data_In(add_k22_Data_Out),
		.Valid_In(add_kernel22_Valid_Out),
		.Data_Out(bn22_Data_Out),
		.Valid_Out(bn22_Valid_Out)
	);
	Relu_Core rl_kernel22(
		.Data_In(bn22_Data_Out),
		.Valid_In(bn22_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(rl22_Valid_Out)
	);
//////////KERNEL23//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110001011010000010100110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101000111000000010110101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111100010110010111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110110100011100110001011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011111101000011101111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111011011010000000101100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101111011100110011110001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110010001110101111110111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110001110010000100111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101110000001110111000110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000000010000111011101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111001111001001000010011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000001000110101100011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110001110010000110000011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101000101010000000110111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101110011100100111010111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110001010010101010110110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111100100101111001001011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110001011110001000011011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111111001100101111001010101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110111100101100101011100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111101111001000000010100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110001100111110000010001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b00111110110100101000100110010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110001100001010100100111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110111100000101110110010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110000110001111100111000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111101100111011001101000111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110111101000111110001001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111110000001000100001000110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111100100100111000000111101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111101100101011010100001101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel23_Valid_Out)
	);
	Adder_32input add_k23(
		.Data1(Data_Out_Kernel23[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel23[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel23[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel23[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel23[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel23[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel23[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel23[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel23[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel23[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel23[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel23[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel23[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel23[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel23[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel23[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel23[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel23[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel23[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel23[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel23[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel23[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel23[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel23[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel23[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel23[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel23[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel23[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel23[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel23[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel23[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel23[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel23),
		.Data_Out(add_k23_Data_Out),
		.Valid_Out(add_kernel23_Valid_Out)
	);
	Batch_Norm bn_kernel23(
		.Data_A(32'b00111111000000101110111101011111),
		.Data_B(32'b00111111011101010101101001111101),
		.Data_In(add_k23_Data_Out),
		.Valid_In(add_kernel23_Valid_Out),
		.Data_Out(bn23_Data_Out),
		.Valid_Out(bn23_Valid_Out)
	);
	Relu_Core rl_kernel23(
		.Data_In(bn23_Data_Out),
		.Valid_In(bn23_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(rl23_Valid_Out)
	);
//////////KERNEL24//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111111000001110010111000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000010011010101111010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111011010101010100000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110011111011100010111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000100000000001011111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101100011000001000110111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110111010011110001110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101011100101111001010011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101001011001101011010011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101100000101000101100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110110010001111111000001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101000000011101001101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110001100011111001011111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110110010101111010110011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101010110010010011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101101001101100110011010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110100010111100010000010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110011001010000101110110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110010100111100010111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110111000011011001101010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111101110110000110100000010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110100101001100010011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110001100101001001110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110100011001110100010111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111101110000001111100011010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111110011100000011011100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110111101011001001000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110100101010001111101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111101110101000001110101101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111110101111001110010100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111111000000101011001101011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110001011101100011011000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel24_Valid_Out)
	);
	Adder_32input add_k24(
		.Data1(Data_Out_Kernel24[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel24[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel24[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel24[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel24[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel24[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel24[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel24[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel24[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel24[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel24[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel24[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel24[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel24[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel24[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel24[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel24[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel24[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel24[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel24[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel24[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel24[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel24[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel24[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel24[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel24[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel24[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel24[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel24[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel24[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel24[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel24[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel24),
		.Data_Out(add_k24_Data_Out),
		.Valid_Out(add_kernel24_Valid_Out)
	);
	Batch_Norm bn_kernel24(
		.Data_A(32'b00111110110101010110111111000010),
		.Data_B(32'b00111110111010101101101111010111),
		.Data_In(add_k24_Data_Out),
		.Valid_In(add_kernel24_Valid_Out),
		.Data_Out(bn24_Data_Out),
		.Valid_Out(bn24_Valid_Out)
	);
	Relu_Core rl_kernel24(
		.Data_In(bn24_Data_Out),
		.Valid_In(bn24_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(rl24_Valid_Out)
	);
//////////KERNEL25//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110111111100000010100011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110011010101111001001010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110001000010010101000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101110000011000101001011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111100000011001111110110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110111000000110101110000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101010101100011010110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110010111010101111000111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110100011011001101010101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101110001000110101001111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000010100110101101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110010000001110110000011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100001000111110110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111001011010100100000110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110100101110101011101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111011000100010000000011010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110111101011010110101011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110100000010101100011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111111010101110001111000101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101100111010111111101001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111101100011110101111100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110100010100100110010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111111100010110110111101010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110111000011001101001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111101101100001001000001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110111101101001000001000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111111000000101011011100100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110000001111111011001010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111110100110010100011111100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101110010101000000010111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110111101101101100010000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110110100101100100110000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel25_Valid_Out)
	);
	Adder_32input add_k25(
		.Data1(Data_Out_Kernel25[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel25[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel25[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel25[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel25[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel25[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel25[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel25[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel25[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel25[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel25[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel25[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel25[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel25[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel25[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel25[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel25[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel25[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel25[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel25[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel25[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel25[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel25[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel25[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel25[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel25[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel25[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel25[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel25[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel25[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel25[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel25[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel25),
		.Data_Out(add_k25_Data_Out),
		.Valid_Out(add_kernel25_Valid_Out)
	);
	Batch_Norm bn_kernel25(
		.Data_A(32'b00111110111010000000000010100001),
		.Data_B(32'b00111111100000100011000110100000),
		.Data_In(add_k25_Data_Out),
		.Valid_In(add_kernel25_Valid_Out),
		.Data_Out(bn25_Data_Out),
		.Valid_Out(bn25_Valid_Out)
	);
	Relu_Core rl_kernel25(
		.Data_In(bn25_Data_Out),
		.Valid_In(bn25_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(rl25_Valid_Out)
	);
//////////KERNEL26//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110111010101001001001000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110111001110001110101101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110101011010000010011110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001001111001000110010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111100010110111110011011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100000001110111101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110111110110010010001110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101011101111010001110110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101101101011100100000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111001001001111101110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110011011001111100101111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111000110011100011000000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110011000111001101011101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111000000010011100100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111101011000001001000011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110000110001101111101001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111101110110001111000001011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b10111100110010001010000010010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110001111110010111010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110001011001010010110100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111100100101101010111101000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111111011001011100010100101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110110100101010100111100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110101111001010110000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110010100011011100100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111101100011101111110111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111111000101100011100010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110011111000010110100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111110010100101110100101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111110011000011001110111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111101000001011101111000010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111111010100001010010011001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel26_Valid_Out)
	);
	Adder_32input add_k26(
		.Data1(Data_Out_Kernel26[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel26[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel26[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel26[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel26[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel26[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel26[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel26[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel26[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel26[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel26[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel26[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel26[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel26[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel26[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel26[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel26[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel26[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel26[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel26[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel26[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel26[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel26[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel26[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel26[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel26[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel26[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel26[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel26[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel26[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel26[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel26[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel26),
		.Data_Out(add_k26_Data_Out),
		.Valid_Out(add_kernel26_Valid_Out)
	);
	Batch_Norm bn_kernel26(
		.Data_A(32'b00111111000011011000001001000000),
		.Data_B(32'b00111111101001101001001101101100),
		.Data_In(add_k26_Data_Out),
		.Valid_In(add_kernel26_Valid_Out),
		.Data_Out(bn26_Data_Out),
		.Valid_Out(bn26_Valid_Out)
	);
	Relu_Core rl_kernel26(
		.Data_In(bn26_Data_Out),
		.Valid_In(bn26_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(rl26_Valid_Out)
	);
//////////KERNEL27//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111101011101000111101111010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101000010001110110011110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101011001111100111001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100110101101110101000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011100111101100010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110101011000000111011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101110010111001101010100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110000000001010001000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101011101101001001111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101011001101000110101110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110101011000001001000110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000100001110001011001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101000000000000011001111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110000011000111011110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110001010101100111100000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110000011101101010111010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110101010010001011100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110101010001001000100011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110111001111100011111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111110100111010001110001101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111110001011000100010101110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111111001000010100111110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111110111010101110100000101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110111110011001101100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111111000000111101111000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110101001100110110010000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110101110110000101010110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110000000001101110010000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111111000110000001100101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111101110001000100101100101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111111010001001101111011000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110010100111100001000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel27_Valid_Out)
	);
	Adder_32input add_k27(
		.Data1(Data_Out_Kernel27[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel27[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel27[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel27[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel27[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel27[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel27[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel27[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel27[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel27[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel27[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel27[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel27[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel27[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel27[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel27[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel27[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel27[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel27[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel27[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel27[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel27[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel27[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel27[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel27[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel27[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel27[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel27[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel27[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel27[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel27[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel27[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel27),
		.Data_Out(add_k27_Data_Out),
		.Valid_Out(add_kernel27_Valid_Out)
	);
	Batch_Norm bn_kernel27(
		.Data_A(32'b00111111000001010001010011010101),
		.Data_B(32'b10111110110110101010011001011111),
		.Data_In(add_k27_Data_Out),
		.Valid_In(add_kernel27_Valid_Out),
		.Data_Out(bn27_Data_Out),
		.Valid_Out(bn27_Valid_Out)
	);
	Relu_Core rl_kernel27(
		.Data_In(bn27_Data_Out),
		.Valid_In(bn27_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(rl27_Valid_Out)
	);
//////////KERNEL28//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110101001100100010011101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101100010001111100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110010010100011100101110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110101011001111111100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100111101111100010110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010011001100011100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110000001101000110000110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110001010011011011100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111100111010111110100001001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110010010010011000101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111010010100011001010000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101110010110010100110001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111001001001100001000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101001010011001110111000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110101010111010000111110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110010101011111001001100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111110110010101001111101000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111111010001000101100111110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111100100110111000000100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111111001110010011110110111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b10111101110010010011111010010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111110001000001010011110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110011001100100100111000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110011111110111001111101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111111000100101011010110110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110000101011010111000100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111110110011100110101110100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111101000100101101111010010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111101110100011010100111110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b00111110011001011110101000111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110111110100001100000011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111110100111111100110011101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel28_Valid_Out)
	);
	Adder_32input add_k28(
		.Data1(Data_Out_Kernel28[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel28[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel28[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel28[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel28[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel28[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel28[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel28[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel28[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel28[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel28[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel28[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel28[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel28[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel28[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel28[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel28[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel28[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel28[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel28[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel28[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel28[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel28[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel28[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel28[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel28[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel28[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel28[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel28[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel28[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel28[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel28[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel28),
		.Data_Out(add_k28_Data_Out),
		.Valid_Out(add_kernel28_Valid_Out)
	);
	Batch_Norm bn_kernel28(
		.Data_A(32'b00111111000011011110100111111111),
		.Data_B(32'b00111111000010000000001111011100),
		.Data_In(add_k28_Data_Out),
		.Valid_In(add_kernel28_Valid_Out),
		.Data_Out(bn28_Data_Out),
		.Valid_Out(bn28_Valid_Out)
	);
	Relu_Core rl_kernel28(
		.Data_In(bn28_Data_Out),
		.Valid_In(bn28_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(rl28_Valid_Out)
	);
//////////KERNEL29//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b10111111000101100100111001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110010110111011101111010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110110100000111001110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101001111001111110001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000110111110100101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101110001000001001000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110000110000001010111011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111001000000100101110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110000011001111101000001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110101101001110110011101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110000000010000101011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111000100000101101001101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110101110101101111101011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110011000001011010010110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110100100100000100101001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101010011101101111110010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111101110010110101100111001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110111101110000100100010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110000001001110101111110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b00111111000000001100100010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111111000011010000111111101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111101101100101101111100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111110101010000100000010010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110001001110001000000101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111110100101110110110111100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b10111110111000101010000110111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110111100000000000001000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110111011111011110000000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b00111100011111010011001000101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101110111000101101111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110111001101101000011111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110000001011010100100100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel29_Valid_Out)
	);
	Adder_32input add_k29(
		.Data1(Data_Out_Kernel29[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel29[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel29[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel29[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel29[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel29[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel29[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel29[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel29[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel29[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel29[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel29[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel29[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel29[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel29[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel29[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel29[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel29[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel29[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel29[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel29[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel29[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel29[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel29[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel29[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel29[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel29[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel29[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel29[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel29[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel29[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel29[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel29),
		.Data_Out(add_k29_Data_Out),
		.Valid_Out(add_kernel29_Valid_Out)
	);
	Batch_Norm bn_kernel29(
		.Data_A(32'b00111110111111011011010100111010),
		.Data_B(32'b00111100011011001010110001011000),
		.Data_In(add_k29_Data_Out),
		.Valid_In(add_kernel29_Valid_Out),
		.Data_Out(bn29_Data_Out),
		.Valid_Out(bn29_Valid_Out)
	);
	Relu_Core rl_kernel29(
		.Data_In(bn29_Data_Out),
		.Valid_In(bn29_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(rl29_Valid_Out)
	);
//////////KERNEL30//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111110001010010010000100011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111010001101001100000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111011010100000011000101101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110110100000100111011111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110010010101000000111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110001011010001010111001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110000001010000000101001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101100101001100100110110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101100110111111110011110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101100111111110010101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111011110011111010100110000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111001111010101101101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111010110001101111000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111000000101001100011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110011011000101100110111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110111111101001000100101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110111101001010111101111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111110100100001110001100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111111000111110101001101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111101010001111111101110010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111110111001000111100011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111100100001010101101110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111100000010110001010000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111101010001000001111010010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110100010111001110100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110110001011110101110111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b10111110110110101001111101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111111000001111111010100101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111111001000111000011100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111110111101000000111100000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111101110101101010110010111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b10111100000010100011001000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel30_Valid_Out)
	);
	Adder_32input add_k30(
		.Data1(Data_Out_Kernel30[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel30[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel30[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel30[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel30[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel30[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel30[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel30[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel30[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel30[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel30[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel30[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel30[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel30[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel30[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel30[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel30[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel30[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel30[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel30[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel30[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel30[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel30[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel30[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel30[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel30[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel30[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel30[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel30[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel30[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel30[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel30[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel30),
		.Data_Out(add_k30_Data_Out),
		.Valid_Out(add_kernel30_Valid_Out)
	);
	Batch_Norm bn_kernel30(
		.Data_A(32'b00111111000011110011010100001010),
		.Data_B(32'b10111111101111000111011001001110),
		.Data_In(add_k30_Data_Out),
		.Valid_In(add_kernel30_Valid_Out),
		.Data_Out(bn30_Data_Out),
		.Valid_Out(bn30_Valid_Out)
	);
	Relu_Core rl_kernel30(
		.Data_In(bn30_Data_Out),
		.Valid_In(bn30_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(rl30_Valid_Out)
	);
//////////KERNEL31//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111111001001100111100101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110000011100001000010000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110011011110011011111001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100100101001001011100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011111010110000111110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110001001010100001010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101110100000011100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110000011011010001101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111100010011010101001011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111100010001000001101000101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110100110101000111110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110101011101111010000011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110101110011110100100011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111000111110010100001011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110101010010010001010110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111000100111010101000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b10111100101101011001101000101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111111010101010100010011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b00111110110100011011001011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111011111010010111011000000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111110001010100111110111101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b00111101101100011000101101101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b00111111010100000100100000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110101010001010010000000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b10111110000000011000101010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111101110101010101110010001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111111000100000000000010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b10111110100000111101111111101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111111000001100000111001010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111100011010101011101011110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b10111110111101001010111010101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110010000110100000000010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel31_Valid_Out)
	);
	Adder_32input add_k31(
		.Data1(Data_Out_Kernel31[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel31[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel31[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel31[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel31[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel31[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel31[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel31[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel31[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel31[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel31[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel31[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel31[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel31[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel31[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel31[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel31[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel31[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel31[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel31[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel31[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel31[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel31[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel31[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel31[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel31[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel31[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel31[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel31[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel31[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel31[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel31[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel31),
		.Data_Out(add_k31_Data_Out),
		.Valid_Out(add_kernel31_Valid_Out)
	);
	Batch_Norm bn_kernel31(
		.Data_A(32'b00111111000010001100100000011001),
		.Data_B(32'b00111101101111101111000010010110),
		.Data_In(add_k31_Data_Out),
		.Valid_In(add_kernel31_Valid_Out),
		.Data_Out(bn31_Data_Out),
		.Valid_Out(bn31_Valid_Out)
	);
	Relu_Core rl_kernel31(
		.Data_In(bn31_Data_Out),
		.Valid_In(bn31_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(rl31_Valid_Out)
	);
//////////KERNEL32//////////
	Convolution2D_1x1_stride_1x1 CHANNEL1_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT-1:0]),
		.Kernel(32'b00111111000111001001000111101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101111111110001010101011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110001011000110000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110101110011110110000001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101010111100110010011010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100110100101100001100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110111011111001101010011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110001001110001110111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110011101100101011101100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110111000000111001011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101110100100010010110110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110101010011010100100101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110001101010000101101100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101011101000000011100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101011110000111010110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111000001010001101010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL17_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Kernel(32'b00111110101011010110001001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Valid_Out(channel17_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL18_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Kernel(32'b00111101001011101001111111111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Valid_Out(channel18_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL19_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Kernel(32'b10111110111000000010101001111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Valid_Out(channel19_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL20_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Kernel(32'b10111110011000110100001011111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Valid_Out(channel20_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL21_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Kernel(32'b00111111000001000100111101001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Valid_Out(channel21_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL22_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Kernel(32'b10111011101010100100010111110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Valid_Out(channel22_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL23_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Kernel(32'b10111101101101111011110000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Valid_Out(channel23_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL24_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Kernel(32'b10111110110101101110001110101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Valid_Out(channel24_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL25_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Kernel(32'b00111111011100011011100110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Valid_Out(channel25_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL26_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Kernel(32'b00111110000011110010101010000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Valid_Out(channel26_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL27_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Kernel(32'b00111100110101111100010011101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Valid_Out(channel27_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL28_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Kernel(32'b00111110110110110100001001101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Valid_Out(channel28_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL29_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Kernel(32'b10111101111010101101000111011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Valid_Out(channel29_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL30_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Kernel(32'b10111101100001111111010001010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Valid_Out(channel30_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL31_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Kernel(32'b00111110100001000101010101110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Valid_Out(channel31_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL32_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Kernel(32'b00111110110011001011000000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(channel32_Kernel32_Valid_Out)
	);
	Adder_32input add_k32(
		.Data1(Data_Out_Kernel32[DATA_WIDHT-1:0]),
		.Data2(Data_Out_Kernel32[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Data3(Data_Out_Kernel32[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Data4(Data_Out_Kernel32[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Data5(Data_Out_Kernel32[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Data6(Data_Out_Kernel32[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Data7(Data_Out_Kernel32[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Data8(Data_Out_Kernel32[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Data9(Data_Out_Kernel32[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Data10(Data_Out_Kernel32[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Data11(Data_Out_Kernel32[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Data12(Data_Out_Kernel32[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Data13(Data_Out_Kernel32[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Data14(Data_Out_Kernel32[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Data15(Data_Out_Kernel32[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Data16(Data_Out_Kernel32[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Data17(Data_Out_Kernel32[DATA_WIDHT*17-1:DATA_WIDHT*16]),
		.Data18(Data_Out_Kernel32[DATA_WIDHT*18-1:DATA_WIDHT*17]),
		.Data19(Data_Out_Kernel32[DATA_WIDHT*19-1:DATA_WIDHT*18]),
		.Data20(Data_Out_Kernel32[DATA_WIDHT*20-1:DATA_WIDHT*19]),
		.Data21(Data_Out_Kernel32[DATA_WIDHT*21-1:DATA_WIDHT*20]),
		.Data22(Data_Out_Kernel32[DATA_WIDHT*22-1:DATA_WIDHT*21]),
		.Data23(Data_Out_Kernel32[DATA_WIDHT*23-1:DATA_WIDHT*22]),
		.Data24(Data_Out_Kernel32[DATA_WIDHT*24-1:DATA_WIDHT*23]),
		.Data25(Data_Out_Kernel32[DATA_WIDHT*25-1:DATA_WIDHT*24]),
		.Data26(Data_Out_Kernel32[DATA_WIDHT*26-1:DATA_WIDHT*25]),
		.Data27(Data_Out_Kernel32[DATA_WIDHT*27-1:DATA_WIDHT*26]),
		.Data28(Data_Out_Kernel32[DATA_WIDHT*28-1:DATA_WIDHT*27]),
		.Data29(Data_Out_Kernel32[DATA_WIDHT*29-1:DATA_WIDHT*28]),
		.Data30(Data_Out_Kernel32[DATA_WIDHT*30-1:DATA_WIDHT*29]),
		.Data31(Data_Out_Kernel32[DATA_WIDHT*31-1:DATA_WIDHT*30]),
		.Data32(Data_Out_Kernel32[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_In(add_kernel32),
		.Data_Out(add_k32_Data_Out),
		.Valid_Out(add_kernel32_Valid_Out)
	);
	Batch_Norm bn_kernel32(
		.Data_A(32'b00111110111010011101000001000101),
		.Data_B(32'b10111111010000100100111001101000),
		.Data_In(add_k32_Data_Out),
		.Valid_In(add_kernel32_Valid_Out),
		.Data_Out(bn32_Data_Out),
		.Valid_Out(bn32_Valid_Out)
	);
	Relu_Core rl_kernel32(
		.Data_In(bn32_Data_Out),
		.Valid_In(bn32_Valid_Out),
		.Data_Out(Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]),
		.Valid_Out(rl32_Valid_Out)
	);

    
endmodule