module Test_Residual_Block(
    
);
     // Parameter
    parameter DATA_WIDHT = 32;
    parameter CHANNEL_IN =1;
    parameter CHANNEL_OUT =128;
    // Port

    parameter CLK = 20;
    parameter Period = CLK*2;

    parameter   ADDRESS_READ = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Layer2_Temp_Result_Temp_Result.txt";
    parameter   ADDRESS_WRITE = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Residual_Block_Result.txt";
    parameter   ADDRESS_WRITE_TEMP = "E:/ChuyenDeHeViMach/NNL/Project/Testbench/Residual_Block_Temp_Result.txt";

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
               $fwrite(file_write,"%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224],Data_Out[287:256],Data_Out[319:288],Data_Out[351:320],Data_Out[383:352],Data_Out[415:384],Data_Out[447:416],Data_Out[479:448],Data_Out[511:480],Data_Out[543:512],Data_Out[575:544],Data_Out[607:576],Data_Out[639:608],Data_Out[671:640],Data_Out[703:672],Data_Out[735:704],Data_Out[767:736],Data_Out[799:768],Data_Out[831:800],Data_Out[863:832],Data_Out[895:864],Data_Out[927:896],Data_Out[959:928],Data_Out[991:960],Data_Out[1023:992],Data_Out[1055:1024],Data_Out[1087:1056],Data_Out[1119:1088],Data_Out[1151:1120],Data_Out[1183:1152],Data_Out[1215:1184],Data_Out[1247:1216],Data_Out[1279:1248],Data_Out[1311:1280],Data_Out[1343:1312],Data_Out[1375:1344],Data_Out[1407:1376],Data_Out[1439:1408],Data_Out[1471:1440],Data_Out[1503:1472],Data_Out[1535:1504],Data_Out[1567:1536],Data_Out[1599:1568],Data_Out[1631:1600],Data_Out[1663:1632],Data_Out[1695:1664],Data_Out[1727:1696],Data_Out[1759:1728],Data_Out[1791:1760],Data_Out[1823:1792],Data_Out[1855:1824],Data_Out[1887:1856],Data_Out[1919:1888],Data_Out[1951:1920],Data_Out[1983:1952],Data_Out[2015:1984],Data_Out[2047:2016],Data_Out[2079:2048],Data_Out[2111:2080],Data_Out[2143:2112],Data_Out[2175:2144],Data_Out[2207:2176],Data_Out[2239:2208],Data_Out[2271:2240],Data_Out[2303:2272],Data_Out[2335:2304],Data_Out[2367:2336],Data_Out[2399:2368],Data_Out[2431:2400],Data_Out[2463:2432],Data_Out[2495:2464],Data_Out[2527:2496],Data_Out[2559:2528],Data_Out[2591:2560],Data_Out[2623:2592],Data_Out[2655:2624],Data_Out[2687:2656],Data_Out[2719:2688],Data_Out[2751:2720],Data_Out[2783:2752],Data_Out[2815:2784],Data_Out[2847:2816],Data_Out[2879:2848],Data_Out[2911:2880],Data_Out[2943:2912],Data_Out[2975:2944],Data_Out[3007:2976],Data_Out[3039:3008],Data_Out[3071:3040],Data_Out[3103:3072],Data_Out[3135:3104],Data_Out[3167:3136],Data_Out[3199:3168],Data_Out[3231:3200],Data_Out[3263:3232],Data_Out[3295:3264],Data_Out[3327:3296],Data_Out[3359:3328],Data_Out[3391:3360],Data_Out[3423:3392],Data_Out[3455:3424],Data_Out[3487:3456],Data_Out[3519:3488],Data_Out[3551:3520],Data_Out[3583:3552],Data_Out[3615:3584],Data_Out[3647:3616],Data_Out[3679:3648],Data_Out[3711:3680],Data_Out[3743:3712],Data_Out[3775:3744],Data_Out[3807:3776],Data_Out[3839:3808],Data_Out[3871:3840],Data_Out[3903:3872],Data_Out[3935:3904],Data_Out[3967:3936],Data_Out[3999:3968],Data_Out[4031:4000],Data_Out[4063:4032],Data_Out[4095:4064]);

            // $fwrite(file_write,"%h\t%h\t%h\t%h\t%h\t%h\t%h\t%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224]);

                $fwrite(file_write_temp,"%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224],Data_Out[287:256],Data_Out[319:288],Data_Out[351:320],Data_Out[383:352],Data_Out[415:384],Data_Out[447:416],Data_Out[479:448],Data_Out[511:480],Data_Out[543:512],Data_Out[575:544],Data_Out[607:576],Data_Out[639:608],Data_Out[671:640],Data_Out[703:672],Data_Out[735:704],Data_Out[767:736],Data_Out[799:768],Data_Out[831:800],Data_Out[863:832],Data_Out[895:864],Data_Out[927:896],Data_Out[959:928],Data_Out[991:960],Data_Out[1023:992],Data_Out[1055:1024],Data_Out[1087:1056],Data_Out[1119:1088],Data_Out[1151:1120],Data_Out[1183:1152],Data_Out[1215:1184],Data_Out[1247:1216],Data_Out[1279:1248],Data_Out[1311:1280],Data_Out[1343:1312],Data_Out[1375:1344],Data_Out[1407:1376],Data_Out[1439:1408],Data_Out[1471:1440],Data_Out[1503:1472],Data_Out[1535:1504],Data_Out[1567:1536],Data_Out[1599:1568],Data_Out[1631:1600],Data_Out[1663:1632],Data_Out[1695:1664],Data_Out[1727:1696],Data_Out[1759:1728],Data_Out[1791:1760],Data_Out[1823:1792],Data_Out[1855:1824],Data_Out[1887:1856],Data_Out[1919:1888],Data_Out[1951:1920],Data_Out[1983:1952],Data_Out[2015:1984],Data_Out[2047:2016],Data_Out[2079:2048],Data_Out[2111:2080],Data_Out[2143:2112],Data_Out[2175:2144],Data_Out[2207:2176],Data_Out[2239:2208],Data_Out[2271:2240],Data_Out[2303:2272],Data_Out[2335:2304],Data_Out[2367:2336],Data_Out[2399:2368],Data_Out[2431:2400],Data_Out[2463:2432],Data_Out[2495:2464],Data_Out[2527:2496],Data_Out[2559:2528],Data_Out[2591:2560],Data_Out[2623:2592],Data_Out[2655:2624],Data_Out[2687:2656],Data_Out[2719:2688],Data_Out[2751:2720],Data_Out[2783:2752],Data_Out[2815:2784],Data_Out[2847:2816],Data_Out[2879:2848],Data_Out[2911:2880],Data_Out[2943:2912],Data_Out[2975:2944],Data_Out[3007:2976],Data_Out[3039:3008],Data_Out[3071:3040],Data_Out[3103:3072],Data_Out[3135:3104],Data_Out[3167:3136],Data_Out[3199:3168],Data_Out[3231:3200],Data_Out[3263:3232],Data_Out[3295:3264],Data_Out[3327:3296],Data_Out[3359:3328],Data_Out[3391:3360],Data_Out[3423:3392],Data_Out[3455:3424],Data_Out[3487:3456],Data_Out[3519:3488],Data_Out[3551:3520],Data_Out[3583:3552],Data_Out[3615:3584],Data_Out[3647:3616],Data_Out[3679:3648],Data_Out[3711:3680],Data_Out[3743:3712],Data_Out[3775:3744],Data_Out[3807:3776],Data_Out[3839:3808],Data_Out[3871:3840],Data_Out[3903:3872],Data_Out[3935:3904],Data_Out[3967:3936],Data_Out[3999:3968],Data_Out[4031:4000],Data_Out[4063:4032],Data_Out[4095:4064]);

            // $fwrite(file_write_temp,"%h%h%h%h%h%h%h%h\n",Data_Out[31:0],Data_Out[63:32],Data_Out[95:64],Data_Out[127:96],Data_Out[159:128],Data_Out[191:160],Data_Out[223:192],Data_Out[255:224]);

               counter = counter +1'd1;
           end
           #Period;
        end
        Data_In = 0;
        $finish;
    end
always  #CLK clk =~clk;
    Residual_Block #(
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