module Depthwise_Part2_Separable_32CHANNEL_Layer4#(
    parameter DATA_WIDHT = 32, 
    parameter IMG_WIDHT = 44,
    parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*16-1:0] Data_In,
    input clk,
    input rst,
    input Valid_In,
    output [DATA_WIDHT*32-1:0] Data_Out,
    output Valid_Out
);
    wire[DATA_WIDHT*16-1:0] Data_Out_Kernel1, Data_Out_Kernel2, Data_Out_Kernel3, Data_Out_Kernel4, Data_Out_Kernel5, Data_Out_Kernel6, Data_Out_Kernel7, Data_Out_Kernel8, Data_Out_Kernel9, Data_Out_Kernel10, Data_Out_Kernel11, Data_Out_Kernel12, Data_Out_Kernel13, Data_Out_Kernel14, Data_Out_Kernel15, Data_Out_Kernel16, Data_Out_Kernel17, Data_Out_Kernel18, Data_Out_Kernel19, Data_Out_Kernel20, Data_Out_Kernel21, Data_Out_Kernel22, Data_Out_Kernel23, Data_Out_Kernel24, Data_Out_Kernel25, Data_Out_Kernel26, Data_Out_Kernel27, Data_Out_Kernel28, Data_Out_Kernel29, Data_Out_Kernel30, Data_Out_Kernel31, Data_Out_Kernel32;
	
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
		.Kernel(32'b10111111000000100001010011110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101100100001111000011000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110011010111000110001110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100100110001111000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110110011100101000100001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000111001100111000001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110101001011101011001110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110011010110100010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110110100101111111111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110011011001110101010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000101111001000000000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101100011001000001111010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110110010011100010100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110110001010011100101101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110100110111100010100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101101100101000101111110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel1_Valid_Out)
	);
	Adder_16input add_k1(
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
		.Valid_In(add_kernel1),
		.Data_Out(add_k1_Data_Out),
		.Valid_Out(add_kernel1_Valid_Out)
	);
	Batch_Norm bn_kernel1(
		.Data_A(32'b00111110010110111000100001110000),
		.Data_B(32'b01000000001001100111110001010011),
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
		.Kernel(32'b10111110011011111011000010100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111100100110000011101101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111000111101110110010100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101101101100111010010000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101000110101111101011011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100000110100001000000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101000000010111101111101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111100100111011111011011110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110111010011110000111011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110101111100011100101100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110100110001110011001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110001101000111101011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111100010011010111001000011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101111001010100010110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110100001101111011101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101110101111010111110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel2_Valid_Out)
	);
	Adder_16input add_k2(
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
		.Valid_In(add_kernel2),
		.Data_Out(add_k2_Data_Out),
		.Valid_Out(add_kernel2_Valid_Out)
	);
	Batch_Norm bn_kernel2(
		.Data_A(32'b00111110100011000001101101100100),
		.Data_B(32'b10111111010111001111110010001000),
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
		.Kernel(32'b00111101000000110110000001011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110010110011001100010011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111000001100000000110010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110111100111111010110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111100101010011100100011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111100111001010000111101000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110010110111010010000101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110010110011101101110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111010100100011101011001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100100101101101001000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110000001110000010100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000001000111110011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101001010101000010011100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110110001011001010000001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111010110111101110111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110110000000100110000111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel3_Valid_Out)
	);
	Adder_16input add_k3(
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
		.Valid_In(add_kernel3),
		.Data_Out(add_k3_Data_Out),
		.Valid_Out(add_kernel3_Valid_Out)
	);
	Batch_Norm bn_kernel3(
		.Data_A(32'b00111110010110101101000010100010),
		.Data_B(32'b00111111111001001010000111010011),
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
		.Kernel(32'b00111110101111111011001101010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101111010011100010000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111000110111011111010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101111101110011110100111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000010001010110001010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110011010100110101000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000110111011101010111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101100100001100111000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111010001001011000011100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110000111011111011111100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101111100110010011101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101101011101111110011110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101101000001111010011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101001001110101000000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101101001100110011011111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110001111111101010000111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel4_Valid_Out)
	);
	Adder_16input add_k4(
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
		.Valid_In(add_kernel4),
		.Data_Out(add_k4_Data_Out),
		.Valid_Out(add_kernel4_Valid_Out)
	);
	Batch_Norm bn_kernel4(
		.Data_A(32'b00111110011110111011011001000010),
		.Data_B(32'b01000000100011001011110111110011),
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
		.Kernel(32'b10111110000110110110110101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110101000000111011101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110101101101001110000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110111100100010111110000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110111110111010010110011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110100100001001000100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101101100101001010011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111010100111001001100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110010011111110000001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111000011001010000100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110100010110010010110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110110010000100000101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000101111101101110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110101011100001100011101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111101100110110100100001110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111001000101101011111101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel5_Valid_Out)
	);
	Adder_16input add_k5(
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
		.Valid_In(add_kernel5),
		.Data_Out(add_k5_Data_Out),
		.Valid_Out(add_kernel5_Valid_Out)
	);
	Batch_Norm bn_kernel5(
		.Data_A(32'b00111110100101110101100011001000),
		.Data_B(32'b10111110100011110111001101110111),
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
		.Kernel(32'b00111101111101110010111010010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110010101100101010110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101000001001000110000001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111000110011001010010110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101101111001000011011100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101010010110011000111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100100111011100100100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101001010001111001000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110111000000001101111010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110101110000010110110111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111011001010101000111011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111100000010110010100101001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110101110101100100110110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101000000000010011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110101000110000010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111100111101111110010110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel6_Valid_Out)
	);
	Adder_16input add_k6(
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
		.Valid_In(add_kernel6),
		.Data_Out(add_k6_Data_Out),
		.Valid_Out(add_kernel6_Valid_Out)
	);
	Batch_Norm bn_kernel6(
		.Data_A(32'b00111110100001110000100001111010),
		.Data_B(32'b00111111101111010000100101110111),
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
		.Kernel(32'b10111110100100001011100000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110001101000100100000000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110100010101100000000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111101011110010000100010111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101101110101010110011010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110000000110001100100001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111100001111000101101101111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000100011101000110101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110011011010111011000100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111000100100011101111100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110001101100011101100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110110001000100110010111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000001101101001001011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111010110000001010110100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110101001001111100011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110010010001011010011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel7_Valid_Out)
	);
	Adder_16input add_k7(
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
		.Valid_In(add_kernel7),
		.Data_Out(add_k7_Data_Out),
		.Valid_Out(add_kernel7_Valid_Out)
	);
	Batch_Norm bn_kernel7(
		.Data_A(32'b00111110100110001111111001001101),
		.Data_B(32'b10111111010110110010101000100000),
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
		.Kernel(32'b00111110101111010010101011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110010111101010111000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101001111001101111111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111001001100100110100101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101110111010110101001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110001001001100100000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110011100001011000010011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101000000001001111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110001010110011011111001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110101100000011110111000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111100001110110100110111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111011100111000100111101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101000101001111000010111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101101111101000010011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110010000000111110101010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111000010101101010111001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel8_Valid_Out)
	);
	Adder_16input add_k8(
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
		.Valid_In(add_kernel8),
		.Data_Out(add_k8_Data_Out),
		.Valid_Out(add_kernel8_Valid_Out)
	);
	Batch_Norm bn_kernel8(
		.Data_A(32'b00111110011010001101100101111101),
		.Data_B(32'b01000000000000000111000001010100),
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
		.Kernel(32'b00111100101001011000100001110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110100101110010100100000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110001101001010000000100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110111111100001010001100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110011110001010001010111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110000100000110100011110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111000011010100000110110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000101010101010110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111011010001011110001110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101010011101011001001010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101110100101111011111010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101011010111101000000000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110100010010011011100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110110110111010110111100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110100010011010110011100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110011101011001000100101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel9_Valid_Out)
	);
	Adder_16input add_k9(
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
		.Valid_In(add_kernel9),
		.Data_Out(add_k9_Data_Out),
		.Valid_Out(add_kernel9_Valid_Out)
	);
	Batch_Norm bn_kernel9(
		.Data_A(32'b00111110011011100111100111110000),
		.Data_B(32'b00111111100101101011011111000011),
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
		.Kernel(32'b10111110101000010000101011110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111001000010011111111011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110001001110000101001010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010111100110110101100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100100000111111011100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111011011011100101110101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110011010101010111011101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111101111001101010110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101101010000100010010010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100010010000100001011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110111011110110010110101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110001000100010000110111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110000111000111100000111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100001110011001001110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111100111110010111111001101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110100110100100100100111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel10_Valid_Out)
	);
	Adder_16input add_k10(
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
		.Valid_In(add_kernel10),
		.Data_Out(add_k10_Data_Out),
		.Valid_Out(add_kernel10_Valid_Out)
	);
	Batch_Norm bn_kernel10(
		.Data_A(32'b00111110101100110001010000111101),
		.Data_B(32'b10111110010000000100000110111001),
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
		.Kernel(32'b10111110111100101111111101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101011000101100100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110101001110101110111001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010010100011110101110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000011111111101000001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100010011111111001111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111001110101011001000100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110011010100011001110101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110001001010011011111010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000001101111001011101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101110101100100011100110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110111101100010111011011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101101110011111010100011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110011111011010000001011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101110111101001101001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110111110110110010001000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel11_Valid_Out)
	);
	Adder_16input add_k11(
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
		.Valid_In(add_kernel11),
		.Data_Out(add_k11_Data_Out),
		.Valid_Out(add_kernel11_Valid_Out)
	);
	Batch_Norm bn_kernel11(
		.Data_A(32'b00111110100000111000010110110111),
		.Data_B(32'b11000000000011000010011110110010),
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
		.Kernel(32'b10111100000101010110100100111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111001110000001101101000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100001110010111111101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100010010101011110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110111110111111101111011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110010100111101000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101011110011001001111011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110110001010011010011001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101100010010111100011000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000000100101110001000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111001011010101100000110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101101111111110011110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111001001011011110110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110010000110000100010000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101110100000010110011011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101100101100110010111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel12_Valid_Out)
	);
	Adder_16input add_k12(
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
		.Valid_In(add_kernel12),
		.Data_Out(add_k12_Data_Out),
		.Valid_Out(add_kernel12_Valid_Out)
	);
	Batch_Norm bn_kernel12(
		.Data_A(32'b00111110100110001101011000000010),
		.Data_B(32'b10111110111010011011000111010111),
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
		.Kernel(32'b10111110101100000000101011001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111000011000101100001001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110011110000010101011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110011101001010001001100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000000101101011100010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110011001000001010011010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111011000111001001110001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110100000111100111100111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100001111011011110000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101110010100101101101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110000110001000101101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100111110010101111001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101011011101101001010110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110000101001101000000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110001000011010111100000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111000011010101000000010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel13_Valid_Out)
	);
	Adder_16input add_k13(
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
		.Valid_In(add_kernel13),
		.Data_Out(add_k13_Data_Out),
		.Valid_Out(add_kernel13_Valid_Out)
	);
	Batch_Norm bn_kernel13(
		.Data_A(32'b00111110100100000100101000101001),
		.Data_B(32'b10111111111010011000101011011010),
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
		.Kernel(32'b00111110111100100011000110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110011001011111010011111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110101010111001111000100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001111111011010011001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101000001000000100110010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000101100000111000110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110101011100101001001010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110000010001101101001000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110000010111001110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110111011101001110001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110110110100100000110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101111101011011100000010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000011001111011011100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110101011001100100110000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101101100100010110011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110011001111101001010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel14_Valid_Out)
	);
	Adder_16input add_k14(
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
		.Valid_In(add_kernel14),
		.Data_Out(add_k14_Data_Out),
		.Valid_Out(add_kernel14_Valid_Out)
	);
	Batch_Norm bn_kernel14(
		.Data_A(32'b00111110100010011100011100101010),
		.Data_B(32'b00111111111010001100110100000100),
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
		.Kernel(32'b00111111001110101100101101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101100101111001111110101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111000111100100100101011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111101001010111000000111100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110011000001110101000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110010011110011101000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110111101010100011010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110001001011001110011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100100011100010101001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110000100110010110101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101111011011110001000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000011110011000001011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110101011000010001101111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110010001001111100110001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110111111100011101111000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101111011011101001110100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel15_Valid_Out)
	);
	Adder_16input add_k15(
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
		.Valid_In(add_kernel15),
		.Data_Out(add_k15_Data_Out),
		.Valid_Out(add_kernel15_Valid_Out)
	);
	Batch_Norm bn_kernel15(
		.Data_A(32'b00111110100011010011011111110010),
		.Data_B(32'b01000000011111001101011010110011),
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
		.Kernel(32'b00111110001111011100110111001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110000001100011011110111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110011010011101101000011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001010001100111000100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100000010001000111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111100110010101010001001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111100111101010001110101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110011011110001101101010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101100001001011100010010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110111100101001001001110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110100110101110100100001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101110000010111101011110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110111100100110001100111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110111110000010101000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110101011101011011110010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110110001011110011010110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel16_Valid_Out)
	);
	Adder_16input add_k16(
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
		.Valid_In(add_kernel16),
		.Data_Out(add_k16_Data_Out),
		.Valid_Out(add_kernel16_Valid_Out)
	);
	Batch_Norm bn_kernel16(
		.Data_A(32'b00111110100010110100010000010010),
		.Data_B(32'b11000000000000001101101100000100),
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
		.Kernel(32'b00111110110011001010101100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110111010100000010110111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101110101011100110110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111001111111011100011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110110111011110110000000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101011111011011101110110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110111101001110100000101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101011010100000110000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110101101001110011011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110000111001000101110101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110000101010010000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000010101010110001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110000110000011101000100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111000100101100001010011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110100000001000100001100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110001100000111111110011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel17_Valid_Out)
	);
	Adder_16input add_k17(
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
		.Valid_In(add_kernel17),
		.Data_Out(add_k17_Data_Out),
		.Valid_Out(add_kernel17_Valid_Out)
	);
	Batch_Norm bn_kernel17(
		.Data_A(32'b00111110100101000011101001001000),
		.Data_B(32'b01000000001101000011110000001010),
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
		.Kernel(32'b00111101100111101011111000010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110000001110000001001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101110000000000110001010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110111001010000001000001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111011011100000111000100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101100101101000111111101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110011011100001101110000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111101111111100110111101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101111000001101111100111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111010010100101111101000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110011001010001101000100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101111110100001000011000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000100011100001011011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110101010001100000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110001110000011011101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101101010011101111101101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel18_Valid_Out)
	);
	Adder_16input add_k18(
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
		.Valid_In(add_kernel18),
		.Data_Out(add_k18_Data_Out),
		.Valid_Out(add_kernel18_Valid_Out)
	);
	Batch_Norm bn_kernel18(
		.Data_A(32'b00111110100100001001010011000010),
		.Data_B(32'b00111111100000110110000110000011),
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
		.Kernel(32'b00111111001100010110011001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111100100110011100001011011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101110101101111111010101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000000010110100010101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110010011100011010100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110100000101011011110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101100111110000110000111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101100000111100010000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111001100110111101111010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110010101011011100100110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110101101000111000110011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110101110001100010001110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110100111110110000010000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110011001111000001110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110000110110001101101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110100010010100100000001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel19_Valid_Out)
	);
	Adder_16input add_k19(
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
		.Valid_In(add_kernel19),
		.Data_Out(add_k19_Data_Out),
		.Valid_Out(add_kernel19_Valid_Out)
	);
	Batch_Norm bn_kernel19(
		.Data_A(32'b00111110100000011111111000000000),
		.Data_B(32'b10111111011111011100111111111110),
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
		.Kernel(32'b10111101011100100000101111011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101110110001101100001001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110001011111100110100111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111001100111100001000000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000100001100001001111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110011110100101000110010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100010000100111010001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110001000100111001001110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110011010000010001011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110000110111000101111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101001111011111110100001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100001001010001011110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000111010111111001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111100100110011010110111111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101111100101100100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111010110100010010001011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel20_Valid_Out)
	);
	Adder_16input add_k20(
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
		.Valid_In(add_kernel20),
		.Data_Out(add_k20_Data_Out),
		.Valid_Out(add_kernel20_Valid_Out)
	);
	Batch_Norm bn_kernel20(
		.Data_A(32'b00111110101000000011100001100111),
		.Data_B(32'b10111111100011101101100110000110),
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
		.Kernel(32'b00111110110110000000101100101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000001000010001100000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111010011100001101000111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111011001110110010010110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110001001100101000100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101100100000100111000010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101111100001111100100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110001000111100100000001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101101011111010110101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110000011010001101110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111100101001111110010100011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110100110000000101001100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101011000111100001000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110000000110010101000100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101101011001010101111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110011100001111001000010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel21_Valid_Out)
	);
	Adder_16input add_k21(
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
		.Valid_In(add_kernel21),
		.Data_Out(add_k21_Data_Out),
		.Valid_Out(add_kernel21_Valid_Out)
	);
	Batch_Norm bn_kernel21(
		.Data_A(32'b00111110100100010011100011010111),
		.Data_B(32'b00111111100111011011101000100101),
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
		.Kernel(32'b00111110101101101101010110010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100101100011011110011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110101011000100111110001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110001010111111000111011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110111100110101010010010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101001001110101011001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101100100011010011110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111010110101001111101111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110000010110010100111001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100101110110110000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110010111000110001001111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110000110001101101100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111100010101111110110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100000100111101100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101101010110100111100000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111011111101101000000000100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel22_Valid_Out)
	);
	Adder_16input add_k22(
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
		.Valid_In(add_kernel22),
		.Data_Out(add_k22_Data_Out),
		.Valid_Out(add_kernel22_Valid_Out)
	);
	Batch_Norm bn_kernel22(
		.Data_A(32'b00111110100101001111110011001111),
		.Data_B(32'b01000000001100111101000100000110),
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
		.Kernel(32'b10111110001001011011101010010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110101000011100010011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100000000111010101000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111000100000001101110110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101011001010000100000101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110100010011010110011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110001111011101011101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111100011001110000101000100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100111010010111010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110101110111000101011101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111011011100100010001111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101111110101011010100111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111000011000110011101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110000101001000000111101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111000010011111001011010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110110011001000001001101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel23_Valid_Out)
	);
	Adder_16input add_k23(
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
		.Valid_In(add_kernel23),
		.Data_Out(add_k23_Data_Out),
		.Valid_Out(add_kernel23_Valid_Out)
	);
	Batch_Norm bn_kernel23(
		.Data_A(32'b00111110100111111100000110110010),
		.Data_B(32'b00111110011100010111001101011110),
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
		.Kernel(32'b00111110010100001001010100101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111011100011111101100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100010000111000110000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110000100100011001000001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111001010001010101001000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110111101010011101010110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110001000101110010110011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110100100110000111100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110110101000000110100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110011110100110000110110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101010010011011100111111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000000101000110011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110100110101110010000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110100000111001001110010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111001111101011011001000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110111111011101010000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel24_Valid_Out)
	);
	Adder_16input add_k24(
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
		.Valid_In(add_kernel24),
		.Data_Out(add_k24_Data_Out),
		.Valid_Out(add_kernel24_Valid_Out)
	);
	Batch_Norm bn_kernel24(
		.Data_A(32'b00111110100010111001100000101001),
		.Data_B(32'b01000000010001110101101010101001),
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
		.Kernel(32'b10111111100000001000010100101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110110100000000110011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100111100000101011111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000100111001111001111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111100110001101100111111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101011110101000111011101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000001101010011011010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110011011011101011010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110110110100010000111111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100010110101110111110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101010000000000100001110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110111010100100111011101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100001011010100000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101111110010100010001011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110001011010111111110111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110110111111010000010110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel25_Valid_Out)
	);
	Adder_16input add_k25(
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
		.Valid_In(add_kernel25),
		.Data_Out(add_k25_Data_Out),
		.Valid_Out(add_kernel25_Valid_Out)
	);
	Batch_Norm bn_kernel25(
		.Data_A(32'b00111110100010111001101010011101),
		.Data_B(32'b00111100110111010001011010001101),
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
		.Kernel(32'b00111101100000111111011001010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110011100110101101011100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111001110111111001000000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110001011011001000101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110010001101111010010100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111011000110100111010010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111001001000111111010011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101000110000100110000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110101010000111010001011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111100001001010111001100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110011000001101000011011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110011110001000100100000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110010111110010100110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101101001011101111111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111101011001100010110101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111011101000111001000111111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel26_Valid_Out)
	);
	Adder_16input add_k26(
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
		.Valid_In(add_kernel26),
		.Data_Out(add_k26_Data_Out),
		.Valid_Out(add_kernel26_Valid_Out)
	);
	Batch_Norm bn_kernel26(
		.Data_A(32'b00111110100011101101000110010101),
		.Data_B(32'b01000000011000110101011111011011),
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
		.Kernel(32'b10111110011100010100110001000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101101011100110001001111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110010100011100010110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111000111011111000100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110010001001110110100110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101100100011111100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111011010110000100111011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101010010011001011000001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100000000001011101100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101110101101101011111000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110001001001101111110111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000101100101110001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110010001010100100011001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110111001110010001001111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110100100101101011011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110101101101010011101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel27_Valid_Out)
	);
	Adder_16input add_k27(
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
		.Valid_In(add_kernel27),
		.Data_Out(add_k27_Data_Out),
		.Valid_Out(add_kernel27_Valid_Out)
	);
	Batch_Norm bn_kernel27(
		.Data_A(32'b00111110100100011101000100101011),
		.Data_B(32'b00111111111110010011101100101011),
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
		.Kernel(32'b10111110111000000010101010001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110000000101000110001000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101001110010000100110010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111001011111011011101010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110111000010100011101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111001001110101011110100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110001000011101110001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111100101100000110010110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110010101110111011111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101110110000110011000111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101000110010001101001010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111000001000010001111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111000001001001000000100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110101000100110100101000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101000111010111000010111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111010101010111111111000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel28_Valid_Out)
	);
	Adder_16input add_k28(
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
		.Valid_In(add_kernel28),
		.Data_Out(add_k28_Data_Out),
		.Valid_Out(add_kernel28_Valid_Out)
	);
	Batch_Norm bn_kernel28(
		.Data_A(32'b00111110100001100010000111101010),
		.Data_B(32'b00111111100010000111100110010001),
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
		.Kernel(32'b10111110010110000001111010010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101100010010100011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111001001011001110001110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111101110101101100110010000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000101011011000100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101011011011010000110111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100111100000101000011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111001001100110001100101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110010101110001110101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111010111001100000101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110100111010101010011110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110101100111011001000111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110001101011111011011001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110001010000100101100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111000000001011011011110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101111001110010000100001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel29_Valid_Out)
	);
	Adder_16input add_k29(
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
		.Valid_In(add_kernel29),
		.Data_Out(add_k29_Data_Out),
		.Valid_Out(add_kernel29_Valid_Out)
	);
	Batch_Norm bn_kernel29(
		.Data_A(32'b00111110011011001011001110100111),
		.Data_B(32'b10111111111001011011010010000000),
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
		.Kernel(32'b10111111100001101111011111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110010000100110111111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111000111000010011000010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000111010010100000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111000011100001111010011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101010110101110000011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110101010101010100010001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110001111111010111010100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100110011011110101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111100001111100011010011111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111100001010000001110011111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000011010111101110001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110010110101011100110111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110001111001101010000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101110101100010000010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110000011110001000101010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel30_Valid_Out)
	);
	Adder_16input add_k30(
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
		.Valid_In(add_kernel30),
		.Data_Out(add_k30_Data_Out),
		.Valid_Out(add_kernel30_Valid_Out)
	);
	Batch_Norm bn_kernel30(
		.Data_A(32'b00111110100110001001111000110011),
		.Data_B(32'b00111110001000010110011101101011),
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
		.Kernel(32'b10111110011110111010000101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000000010001011011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101111101111100011110001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111001000010000110110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111100101111110001100111100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110100110111101111100000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111000111000011010000111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101100010000010101101111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101001111101000011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100100100110110101011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110101001101011011101000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101011101111001100011011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100011101001011101001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111001010100100111000001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110011001000111100011011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110111111000001000110110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel31_Valid_Out)
	);
	Adder_16input add_k31(
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
		.Valid_In(add_kernel31),
		.Data_Out(add_k31_Data_Out),
		.Valid_Out(add_kernel31_Valid_Out)
	);
	Batch_Norm bn_kernel31(
		.Data_A(32'b00111110100011010010111010101001),
		.Data_B(32'b10111111101010000100111101001110),
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
		.Kernel(32'b10111111000001111101000010100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101001010101000010011011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101110011100000101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111000011100101010110111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110010100010010100011101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111100110111101000110001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101001110011001100010110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110111011011000011001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110101010100101001111101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100110001110000100111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111001100100001000011101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110011111000110111100011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101000010110100101010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110001001000001000001110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111011001110001011000011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111001000010010011110100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Valid_Out(channel16_Kernel32_Valid_Out)
	);
	Adder_16input add_k32(
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
		.Valid_In(add_kernel32),
		.Data_Out(add_k32_Data_Out),
		.Valid_Out(add_kernel32_Valid_Out)
	);
	Batch_Norm bn_kernel32(
		.Data_A(32'b00111110101110010001100011111111),
		.Data_B(32'b10111111101100011011010001101001),
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