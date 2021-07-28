module Test_Global_AVG (
    
);
     // Parameter
    parameter DATA_WIDHT = 32;
    parameter CHANNEL_IN =7;
    parameter CHANNEL_OUT =7;
    // Port

    parameter CLK = 20;
    parameter Period = CLK*2;

    parameter   ADDRESS_READ = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Angry_Result.txt";
    parameter   ADDRESS_WRITE = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/GAVG_Result.txt";
    parameter   ADDRESS_WRITE_TEMP = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/GAVG_Temp_Result.txt";

    //Port 
    reg [DATA_WIDHT*CHANNEL_IN-1:0] Data_In;
    reg clk,rst,Valid_In;

    wire [DATA_WIDHT*CHANNEL_OUT-1:0] Data_Out;
    wire Valid_Out;

    integer file_read,Data,file_write,file_write_temp;
    integer counter = 1;
    initial begin
        clk = 0;
        rst = 0;
        Valid_In =0;
        #Period
        rst = 1;
        #CLK
        file_read = $fopen(ADDRESS_READ,"r");
        file_write = $fopen(ADDRESS_WRITE,"w");
        file_write_temp = $fopen(ADDRESS_WRITE_TEMP,"w");
        Valid_In = 1;


        while(!$feof(file_read) || Valid_Out ==1) begin
           Data = $fscanf(file_read,"%h",Data_In);
           if (Valid_Out) begin
               $fwrite(file_write,"%h\t%h\t%h\t%h\t%h\t%h\t%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192]);

            // $fwrite(file_write,"%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224]);

                $fwrite(file_write_temp,"%h%h%h%h%h%h%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192]);

            // $fwrite(file_write_temp,"%h%h%h%h%h%h%h%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224]);

               counter = counter +1'd1;
           end
           #Period;
        end
        Data_In = 0;
        $finish;
    end
always  #CLK clk =~clk;
    Global_AVG_Pooling #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDTH(44),
        .IMG_HEIGHT(44)
        )
        DUT (
            .Data_In(Data_In),
            .clk(clk),
            .rst(rst),
            .Valid_In(Valid_In),
            .Data_Out(Data_Out),
            .Valid_Out(Valid_Out)
        );
    
endmodule