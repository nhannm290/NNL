module Test_Layer5(
    
);
     // Parameter
    parameter DATA_WIDHT = 32;
    parameter CHANNEL_IN =32;
    parameter CHANNEL_OUT =64;
    // Port

    parameter CLK = 20;
    parameter Period = CLK*2;

    parameter   ADDRESS_READ = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Layer4_Temp_Result.txt";
    parameter   ADDRESS_WRITE = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Layer5_Result.txt";
    parameter   ADDRESS_WRITE_TEMP = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Layer5_Temp_Result.txt";

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
               $fwrite(file_write,"%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224],Data_Out[287:256],Data_Out[319:288],Data_Out[351:320],Data_Out[383:352],Data_Out[415:384],Data_Out[447:416],Data_Out[479:448],Data_Out[511:480],Data_Out[543:512],Data_Out[575:544],Data_Out[607:576],Data_Out[639:608],Data_Out[671:640],Data_Out[703:672],Data_Out[735:704],Data_Out[767:736],Data_Out[799:768],Data_Out[831:800],Data_Out[863:832],Data_Out[895:864],Data_Out[927:896],Data_Out[959:928],Data_Out[991:960],Data_Out[1023:992],Data_Out[1055:1024],Data_Out[1087:1056],Data_Out[1119:1088],Data_Out[1151:1120],Data_Out[1183:1152],Data_Out[1215:1184],Data_Out[1247:1216],Data_Out[1279:1248],Data_Out[1311:1280],Data_Out[1343:1312],Data_Out[1375:1344],Data_Out[1407:1376],Data_Out[1439:1408],Data_Out[1471:1440],Data_Out[1503:1472],Data_Out[1535:1504],Data_Out[1567:1536],Data_Out[1599:1568],Data_Out[1631:1600],Data_Out[1663:1632],Data_Out[1695:1664],Data_Out[1727:1696],Data_Out[1759:1728],Data_Out[1791:1760],Data_Out[1823:1792],Data_Out[1855:1824],Data_Out[1887:1856],Data_Out[1919:1888],Data_Out[1951:1920],Data_Out[1983:1952],Data_Out[2015:1984],Data_Out[2047:2016]);

            // $fwrite(file_write,"%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224]);

                $fwrite(file_write_temp,"%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224],Data_Out[287:256],Data_Out[319:288],Data_Out[351:320],Data_Out[383:352],Data_Out[415:384],Data_Out[447:416],Data_Out[479:448],Data_Out[511:480],Data_Out[543:512],Data_Out[575:544],Data_Out[607:576],Data_Out[639:608],Data_Out[671:640],Data_Out[703:672],Data_Out[735:704],Data_Out[767:736],Data_Out[799:768],Data_Out[831:800],Data_Out[863:832],Data_Out[895:864],Data_Out[927:896],Data_Out[959:928],Data_Out[991:960],Data_Out[1023:992],Data_Out[1055:1024],Data_Out[1087:1056],Data_Out[1119:1088],Data_Out[1151:1120],Data_Out[1183:1152],Data_Out[1215:1184],Data_Out[1247:1216],Data_Out[1279:1248],Data_Out[1311:1280],Data_Out[1343:1312],Data_Out[1375:1344],Data_Out[1407:1376],Data_Out[1439:1408],Data_Out[1471:1440],Data_Out[1503:1472],Data_Out[1535:1504],Data_Out[1567:1536],Data_Out[1599:1568],Data_Out[1631:1600],Data_Out[1663:1632],Data_Out[1695:1664],Data_Out[1727:1696],Data_Out[1759:1728],Data_Out[1791:1760],Data_Out[1823:1792],Data_Out[1855:1824],Data_Out[1887:1856],Data_Out[1919:1888],Data_Out[1951:1920],Data_Out[1983:1952],Data_Out[2015:1984],Data_Out[2047:2016]);

            // $fwrite(file_write_temp,"%h%h%h%h%h%h%h%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224]);

               counter = counter +1'd1;
           end
           #Period;
        end
        Data_In = 0;
        $finish;
    end
always  #CLK clk =~clk;
    Layer5 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(44),
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