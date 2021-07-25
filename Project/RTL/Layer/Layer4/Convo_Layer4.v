module Convo_Layer4 #(
    parameter DATA_WIDHT = 32,
	parameter IMG_WIDHT = 44,
	parameter IMG_HEIGHT =44
)
(
    input [DATA_WIDHT*16-1:0] Data_In,
    input Valid_In,
    input clk,
    input rst,
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
		.Kernel(32'b10111110010000001101101100110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100001101000111101101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101001110110011100001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110101011101010100100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101010100001100001100010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101000001000000011100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101000000000110001110110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110001001010101011111010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111100111110000010110011101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101100110010110101011110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000110011100110110001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110110001100000000000101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111010011010101101110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111000111001100001011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101011110101011101001010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel1[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel1_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel1 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110100111101111101001110111),
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
		.Data_A(32'b00111110101011111110101100010111),
		.Data_B(32'b00111011111111100111100111000110),
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
		.Kernel(32'b00111110110100001111010101001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111100110110110111100011010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110011000101110111101110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000111101101010101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110000100111001100111001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000010101010110011101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111001111101000110001011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000011110100000000101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110111010010000001110010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110000110111010100111110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110001000101010101001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110111100000000111000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110111101111011010101010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110101100111100010010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110110101010010001011010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel2[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel2_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel2 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111100010111111011111100001000),
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
		.Data_A(32'b00111110110101011001101101000011),
		.Data_B(32'b11000000000101000111010000000100),
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
		.Kernel(32'b10111111001000110110110111110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110101110101100000011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111111001001111101010010001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000011010100011000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101010111010000010110110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110000000110110100100100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110001010111011010100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000100111000101110100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111001011110001101001110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101111101110011111011011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111100001110111101000100010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110110010100011000100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100010001110011110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110111111000101111001011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110001111101001000011000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel3[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel3_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel3 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101100000110111111111000010),
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
		.Data_A(32'b00111110111011011111110111111001),
		.Data_B(32'b10111110111111110000110110010001),
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
		.Kernel(32'b00111101110011100011001011010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101000000001010000000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101111101111110011110001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110010101001011100010011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101100000011101000111101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000110110110000101110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101101010101111100001011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111010010111111110001101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111011110110100101111001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110101011101100101111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111000001100110100011011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110101011100000111111110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110110010101111000011101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100110000100110001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111000100001111011001111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel4[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel4_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel4 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110111011111011000010001010),
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
		.Data_A(32'b00111110110011010111001101111111),
		.Data_B(32'b00111111010110110000111111101010),
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
		.Kernel(32'b00111110101100000110001111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101110011001001000101100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110110011011010111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111011101010011111011011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000001100100110101011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101100000010100001100001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101000100111011011100101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101000010011011110111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101110100010010001101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110111010001011010101001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110100100111101001001000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000010110000100011100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110110010110100010001001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110100111100011111000111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111101110011011011010011001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel5[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel5_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel5 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101110100101010111010000101),
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
		.Data_A(32'b00111110101110011011110000010011),
		.Data_B(32'b10111110111011011100111000111111),
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
		.Kernel(32'b10111111001101101011011100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110110100100110010000111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110100110100000010110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111100100011101011110001110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110100001001100101010011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111100001100011000101000010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111000011111100000101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111111000001100001011010110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110001001011111111001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100010011100110110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000110101110110110111010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101100010000001011110000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110111101101000000110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101100010110110010000001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110110010011111010011111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel6[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel6_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel6 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110101100001110101000110110),
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
		.Data_A(32'b00111110110100011011110010011010),
		.Data_B(32'b00111111000001010000010101000101),
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
		.Kernel(32'b00111110110111000110000100100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110011010001101110011111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110111011011111011110001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100011011101000100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000001010101011000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110110100011100100100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111100110111111100000001101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111110000000010001101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110100110001111011110001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111000101110011000101000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101011110110001101011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110100101011101100100010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110010111000110111010110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111000101111101010011110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110001100000011100111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel7[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel7_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel7 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110101001101101000011000111),
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
		.Data_A(32'b00111110110111011011111000001100),
		.Data_B(32'b10111111011110100000101100000001),
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
		.Kernel(32'b00111110011000000010001000110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110111110010001001111101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111101100011010100101100110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110111000011100111001001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110110011010000011101011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110111111001001000110111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110011101111111001100110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110001101001111110100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110011000100101010101101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110011101111100110010111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111101000110010010011000001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110111110111100100110011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111111011100011001001110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101101011010110011011000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110011100101100010010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel8[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel8_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel8 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110001110110010010110100011),
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
		.Data_A(32'b00111110101110000100001010001111),
		.Data_B(32'b10111111100111101110000110010010),
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
		.Kernel(32'b00111101101011101000010100101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000011100100010010110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111101000011101001010010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100000010100100001101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110001000111011010111000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110010111111101011011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110101010010111000101110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110010111010011100100110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101111111000100111111110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110000011111111100011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110011011011111111010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110010000100000100110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100100010110000100000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100001001000001111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110110100110110110001011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel9[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel9_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel9 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110111010111010111101011011),
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
		.Data_A(32'b00111110101110110101110100010100),
		.Data_B(32'b00111111101001011111101100100011),
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
		.Kernel(32'b10111110111101010011110000000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000010011111110111100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101011110000001100000001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111101010100110111011110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111001000000000010101011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110001010110101010010111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101100001001011111011000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111011110011111110100111101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111001110011011010100010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111010101010100101000101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110000110100100001100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110011001100111011000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111100000000000110100010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101111100100011110111110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110111110111001110000001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel10[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel10_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel10 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110010110101000001110110111),
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
		.Data_A(32'b00111110101111000101100011111101),
		.Data_B(32'b10111111010101001011110000111000),
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
		.Kernel(32'b00111110110100001011101101001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110110111001010101011100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101110000011100000010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111001010111001001110000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101000111100001011010110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101101110100100011100111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100101001010111111110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110011011011111111111001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111000110010001011000100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110110111001011100000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101110100000100000011101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111000101110011001001010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110010010001101000011000100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110111011110011111111100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110101110010010000101110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel11[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel11_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel11 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110010011011001101111011001),
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
		.Data_A(32'b00111110110000100011110101110110),
		.Data_B(32'b00111111101110011011101100011001),
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
		.Kernel(32'b00111110011001111111110000100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111111010000101010000100110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110110001000011011110010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100110111111000100001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011000100101011111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101100111011010111011110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111010110000101100110101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110001000111001110000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101011001001000011011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101001100000011111110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110101100110011100111011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110011001001001100011100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111101100100110011101111000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110111101111011101001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111111000011110001100010110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel12[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel12_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel12 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110101100000001000110001001),
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
		.Data_A(32'b00111110101011010001110100100100),
		.Data_B(32'b00111111100100101011000011000111),
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
		.Kernel(32'b10111110110001011001000101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101011010100010010011011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110101000110011111001010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110110110101011001000100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101110111110011011111101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110010000110110100111110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101100110011010001110001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110111010001010010001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111000111101001111001101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110001010010010001001110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110001100001001010001011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000111011000100110100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110000100101100111100101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111001000101011000000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110011100001010000101111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel13[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel13_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel13 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111001001000110110011111001),
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
		.Data_A(32'b00111111000011000100000110011111),
		.Data_B(32'b10111111011110110111011001000100),
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
		.Kernel(32'b10111111000001000000101110100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000100101111011110000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100010011101001100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110110100011111100111011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110000100011000111100001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111000101101011100000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100010100111001110101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110110111010111101111101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101111100100001000111010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111010000010011101110011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110001001110000011111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110110100101110001010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111011100100110100011011001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110100000101101010000001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111101011101111010101001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel14[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel14_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel14 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101010011101011110100011110),
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
		.Data_A(32'b00111110110101100111110011011000),
		.Data_B(32'b00111111011011000101000111000001),
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
		.Kernel(32'b10111110110110101000011011001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111100010100100000000111010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110000101111100110101101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111101100111100011101110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101000010000000011111110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110100010110010110110001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110000110111101110101011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111011110100010000110110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110101111100111001010011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100110110010110101100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110101011001110001111010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101010010001110101101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111011010101011110000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110000100101001101110000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111100100111011110111100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel15[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel15_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel15 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110001110011101111101010110),
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
		.Data_A(32'b00111110100100001000000100111100),
		.Data_B(32'b00111111110100011101100001111011),
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
		.Kernel(32'b00111110001101101011110111111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111101101100100001010001001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110100100101111111100011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110000111000011000111111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111001010010101100000011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110110010001011111100011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101110100101101001101111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110111001101001110011111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101101110000110000011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000010000111110111010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111010000011110100011010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101101111000011100001100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110010001100000011110000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111010010000101010110100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111100011010110100010010101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel16[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel16_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel16 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101010101100101100010010001),
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
		.Data_A(32'b00111110111111101001100110000011),
		.Data_B(32'b10111111110000000100010001001100),
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
		.Kernel(32'b00111110100011010000010110111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111100011000100000001011100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110010011110010110001010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110111000001110000101100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110010001011101000010000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110101010110010111011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100100110000011010111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110010010010111111000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101001000111001010110111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110001101110001010011001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000011110101100000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110000100000100100010111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110110010100100110101111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111000011111111110111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111111100011110010001010100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel17[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel17_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel17 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110100101000011001010111111),
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
		.Data_A(32'b00111110110000111000001010110110),
		.Data_B(32'b10111111001000110011101111000101),
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
		.Kernel(32'b10111110101111011011101011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110100011011100011101110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110100110110100000011110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111011111010000110101010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111101110010110110100110000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111000110010100011001000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111111000000111111010100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111000100011010100111111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111111000001001001001011110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110100111110111010100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101000111111010010110000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110001001001011010111001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110001100101110101001011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111001101010001110001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110010100010001111101110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel18[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel18_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel18 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110011111010010110010111101),
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
		.Data_A(32'b00111110100101100010100011110001),
		.Data_B(32'b00111111101001000001010100001001),
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
		.Kernel(32'b00111110001110110100010010101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101101011000100111110110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111001111101000110101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110111101100100000100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110101011101001101001001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110110000010110001101000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100010111110010110011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110111011010010110011000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111101111001111111111000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110110000110001101010100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110100100111100110111101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101111001001011010001110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110011011001010010000000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111111001001011101110110110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110101010001110111000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel19[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel19_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel19 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111001010011111100000011101),
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
		.Data_A(32'b00111110110001011010110000111000),
		.Data_B(32'b10111111100100000010101101111001),
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
		.Kernel(32'b10111111000100001010001010011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110010000000011001100111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110000101100101010110001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100001101110111111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110010010001110011111010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110010111100000110000110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100010000111000100011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101111100011000101011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111100111011001101101101111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111011001110011011111011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110011011100100110110011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111010011100000000011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110000010010101110010100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111100110010000011101001111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110111010001000010111110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel20[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel20_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel20 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111111000010111010000011111101),
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
		.Data_A(32'b00111110110101111011001111010110),
		.Data_B(32'b00111111100001100000010100010000),
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
		.Kernel(32'b00111110111001011000100110101001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111101110101100001111100011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111100011100101101001010100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111111000000100000001011011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110001000110100011101100010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111000111110111101010110011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101010110100011010010000111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111010010111110110001100010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110000011000011101000111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111101100010000011110110010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111111010000100000100100111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111111000010000000011001110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110111110001101001010111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110110101010110111110011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111000011100101001011000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel21[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel21_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel21 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110100101001010100100110111),
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
		.Data_A(32'b00111110101001010011111111000001),
		.Data_B(32'b11000000001101000010111011111000),
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
		.Kernel(32'b00111110001010011111111010010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100110111110011000100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111000100010111001110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110010111111001011000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000101110000101110001011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111101001100001010100011111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111101101100101110101111110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111001101001101110010111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110011000111100110011110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111111000010001000001101001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110000111011010000101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101000000011111101001001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111001011111111001010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111101010110000110111010100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110111111100010001010000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel22[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel22_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel22 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101111001011000010101011110),
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
		.Data_A(32'b00111110110100111101001110000110),
		.Data_B(32'b00111111100111001010110110011010),
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
		.Kernel(32'b00111110001100100011100111001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111010001101100111011001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111111100011101101100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110110111000100100000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011101000101001110100110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110011111111011000101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101001000111100001011110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110010000000001001111000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110100001011010101101010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110101101101000111001101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111100101001101010101010101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110000100010011110011111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111111010010101000110111111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101111111001001111010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110100101001000010111111110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel23[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel23_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel23 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110000100101011110101111001),
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
		.Data_A(32'b00111110100110010110110100111111),
		.Data_B(32'b00111111101111000001101110001010),
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
		.Kernel(32'b10111110010000101001000101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111100101011001011100101001000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111111000000101000001011011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111000111011111011100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111011011000000001000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110101010001110011011010011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111011001001011111110011011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110100010100011110100010100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110100011110101110110011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110111001011100110000110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110110000000000110100101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110100000110100100110010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110010011101110011011100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110010001001101101000001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110010001101101001011100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel24[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel24_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel24 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110111011100010101010000100),
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
		.Data_A(32'b00111111000000010001101010110001),
		.Data_B(32'b00111110111000000010001001011000),
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
		.Kernel(32'b00111110110110101001001110101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000100000101111111100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110000011011001101110100100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111010001110011110111001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110011001001000000101111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111101110110110010000001101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110101111000111001100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111010011001010110000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110001001010101110100001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111111000001000011001010101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101111000010101111000000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101100110101111000001011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110011100010001101001110001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111101100101110010110100101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110000010111100101001000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel25[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel25_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel25 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111101100101011001011101111001),
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
		.Data_A(32'b00111110110111000001100110011111),
		.Data_B(32'b00111111101000010111100001111000),
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
		.Kernel(32'b00111110100101010101100001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111111000111100111011000011001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110111100011010100011110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100001101111110011100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110101100011100001010111000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110110100001101000001001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000110110100101001111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111101001101100010010001011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110001111111001001111100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110000111010010101100011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111110110011100000100011010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111110111100110101100001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111110110011001100010111010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110110110011100001100100101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110011000110111100001000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel26[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel26_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel26 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110101110101001011000010010),
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
		.Data_A(32'b00111110101101100100100000101010),
		.Data_B(32'b00111111011011100110111011101011),
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
		.Kernel(32'b10111101010010110111011010001001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110100011110100001101110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110111101101100001110011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111000010111011100110001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111110000111011010000011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110011000000010100101010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111111000010001001011111100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111110101001110010111111111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b00111110011000011100100101101101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110011001000010000010001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000000010101010100011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111110101001010010100000110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101100010011110111001111011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111001000100100001000100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110011001100101001101011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel27[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel27_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel27 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111111000011111010110011111001),
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
		.Data_A(32'b00111111000001101100111010101101),
		.Data_B(32'b00111101000010101000101110000001),
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
		.Kernel(32'b10111110000110111011001111110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b10111110011010100111101001101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111110110000010110010010110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111110100000000000001101010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111011101000101011010111010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111010110100101000000101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110110111110100110011101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111000011110000101011000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110100001010000111110011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110100100110110110101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110101000010110111111000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111000100100010101001110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110111001011101001011100000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110000010001001110010000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111100110101111001010110100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel28[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel28_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel28 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111110011101000111010110111010),
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
		.Data_A(32'b00111110111001011111100001010001),
		.Data_B(32'b01000000011111100111011011110000),
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
		.Kernel(32'b10111100110001111011001100001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110111110110000111100010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111100110101111100111101001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100000110011110101000011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111101011010111100101111000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111111011011111101001111011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111101000011010101110010101111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101010111000011101011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111110100011011010111100111111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110001011101111110111110111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101100011111011100111011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111010000001011010110110101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110100001111101110001010110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b00111110111011010011010001011111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111111000001100100001000000010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel29[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel29_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel29 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111100011010100010001010000000),
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
		.Data_A(32'b00111110100111100110111100101001),
		.Data_B(32'b10111111011001000111100000010010),
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
		.Kernel(32'b00111110101101100100111111011101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110111110010000011010100011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b10111101101100110110010000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110011111101100111101001100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111111000001001001000011111101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111111000101100010111100001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100111111011101010101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b00111110101101110001100110011010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111000011001111100000101100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111110101011100111111000010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b00111101000000100111100001101010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b00111101111001101101101110000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110001010010101100100101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110101011110101010011110010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111111001011011000111000011110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel30[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel30_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel30 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111100011010000101000010101010),
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
		.Data_A(32'b00111110101110101110010011000011),
		.Data_B(32'b10111110101010011000110011001010),
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
		.Kernel(32'b10111111001010001111010110111001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110100000001001111101011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110110110001100101100000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b00111110100011100101101010000000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b10111110010000101001000010110110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b00111110111100101000100000010001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b00111110100111111011001011000001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111011000010110100010000101011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111111000011001000011111010111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b00111110100011111111100001011011),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111111000010111100001000111100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111101100101011000101110101000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b00111110011011100110111111101110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111111000110101100011101010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b10111110010110000011101111000110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel31[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel31_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel31 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b00111101111011001110010011111111),
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
		.Data_A(32'b00111110110111010110001001101100),
		.Data_B(32'b00111110000110010100110010110101),
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
		.Kernel(32'b00111101100101001011111011011100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT-1:0]),
		.Valid_Out(channel1_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL2_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),
		.Kernel(32'b00111110111001010101101000110000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*2-1:DATA_WIDHT*1]),
		.Valid_Out(channel2_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL3_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Kernel(32'b00111110000000110011001000011000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*3-1:DATA_WIDHT*2]),
		.Valid_Out(channel3_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL4_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Kernel(32'b10111111000111001000000111001101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*4-1:DATA_WIDHT*3]),
		.Valid_Out(channel4_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL5_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Kernel(32'b00111111001010101000111010010010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*5-1:DATA_WIDHT*4]),
		.Valid_Out(channel5_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL6_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Kernel(32'b10111110101001011111010011001111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*6-1:DATA_WIDHT*5]),
		.Valid_Out(channel6_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL7_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Kernel(32'b10111110110110001110100111001110),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*7-1:DATA_WIDHT*6]),
		.Valid_Out(channel7_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL8_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Kernel(32'b10111111001010110111111100100111),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*8-1:DATA_WIDHT*7]),
		.Valid_Out(channel8_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL9_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Kernel(32'b10111101010111001110010111001010),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*9-1:DATA_WIDHT*8]),
		.Valid_Out(channel9_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL10_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Kernel(32'b10111101111000011010011101110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*10-1:DATA_WIDHT*9]),
		.Valid_Out(channel10_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL11_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Kernel(32'b10111110100010100111010001100001),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*11-1:DATA_WIDHT*10]),
		.Valid_Out(channel11_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL12_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Kernel(32'b10111111001101001001110010010101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*12-1:DATA_WIDHT*11]),
		.Valid_Out(channel12_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL13_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Kernel(32'b10111101011011001001010111000101),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*13-1:DATA_WIDHT*12]),
		.Valid_Out(channel13_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL14_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Kernel(32'b10111110011110011101111111110100),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*14-1:DATA_WIDHT*13]),
		.Valid_Out(channel14_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL15_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Kernel(32'b00111110110101000010010100010000),
		.Valid_In(Valid_In),
		.clk(clk),
		.rst(rst),
		.Data_Out(Data_Out_Kernel32[DATA_WIDHT*15-1:DATA_WIDHT*14]),
		.Valid_Out(channel15_Kernel32_Valid_Out)
	);
	Convolution2D_1x1_stride_1x1 CHANNEL16_Kernel32 (
		.Data_In(Data_In[DATA_WIDHT*16-1:DATA_WIDHT*15]),
		.Kernel(32'b10111110010000101001110011110010),
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
		.Data_A(32'b00111110101000111110001111110000),
		.Data_B(32'b00111111111000101000100000110010),
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