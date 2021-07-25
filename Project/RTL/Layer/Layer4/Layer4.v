module Layer4 #(
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

    wire [DATA_WIDHT*32-1:0] sp_8Channel_Data_Out,sp_16Channel_Data_Out,Convo3_Data_Out,lb_Data_Out,Max_Data_Out;
    wire sp_8Channel_Valid_Out,sp_16Channel_Valid_Out,Convo_Valid_Out,lb_Valid_Out,add_Valid_In,Max_Valid_Out;

    assign add_Valid_In = Max_Valid_Out& lb_Valid_Out;


    Separable_Convolution_Part1_Layer4 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        sp_convo_16channel (
            .Data_In(Data_In),
            .Valid_In(Valid_In),
            .clk(clk),
            .rst(rst),
            .Data_Out(sp_8Channel_Data_Out),
            .Valid_Out(sp_8Channel_Valid_Out)
        );

    Separable_Convolution_Part2_Layer4 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        sp_convo_32channel(
            .Data_In(sp_8Channel_Data_Out),
            .Valid_In(sp_8Channel_Valid_Out),
            .clk(clk),
            .rst(rst),
            .Data_Out(sp_16Channel_Data_Out),
            .Valid_Out(sp_16Channel_Valid_Out)
        );

    MaxPooling_3x3_stride_1x1_padding_1 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )   
        maxpooling[31:0] (
            .Data_In({sp_16Channel_Data_Out[DATA_WIDHT-1:0],sp_16Channel_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],sp_16Channel_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],sp_16Channel_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],sp_16Channel_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],sp_16Channel_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],sp_16Channel_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],sp_16Channel_Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],sp_16Channel_Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],sp_16Channel_Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],sp_16Channel_Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],sp_16Channel_Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],sp_16Channel_Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],sp_16Channel_Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],sp_16Channel_Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],sp_16Channel_Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],sp_16Channel_Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],sp_16Channel_Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],sp_16Channel_Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],sp_16Channel_Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],sp_16Channel_Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],sp_16Channel_Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],sp_16Channel_Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],sp_16Channel_Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],sp_16Channel_Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],sp_16Channel_Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],sp_16Channel_Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],sp_16Channel_Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],sp_16Channel_Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],sp_16Channel_Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],sp_16Channel_Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],sp_16Channel_Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]}),
            .Valid_In(sp_16Channel_Valid_Out),
            .clk(clk),
            .rst(rst),
            .Data_Out({Max_Data_Out[DATA_WIDHT-1:0],Max_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Max_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Max_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Max_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Max_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Max_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],Max_Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],Max_Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],Max_Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],Max_Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],Max_Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],Max_Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],Max_Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],Max_Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],Max_Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],Max_Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],Max_Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],Max_Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],Max_Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],Max_Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],Max_Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],Max_Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],Max_Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],Max_Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],Max_Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],Max_Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],Max_Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],Max_Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],Max_Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],Max_Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],Max_Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]}),
            .Valid_Out(Max_Valid_Out)
        );


    Convo_Layer4 #(
        .DATA_WIDHT(DATA_WIDHT),
        .IMG_WIDHT(IMG_WIDHT),
        .IMG_HEIGHT(IMG_HEIGHT)
    )
        convo (
            .Data_In(Data_In),
            .Valid_In(Valid_In),
            .clk(clk),
            .rst(rst),
            .Data_Out(Convo3_Data_Out),
            .Valid_Out(Convo_Valid_Out)
        );

    
    Line_Buffer #(
        .LENGHT(139),
        .DATA_WIDTH(32)
    )
        lb[31:0] (
            .clk(clk),
            .rst(rst),
            .Valid_In(Convo_Valid_Out),
            .Data_In({Convo3_Data_Out[DATA_WIDHT-1:0],Convo3_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Convo3_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Convo3_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Convo3_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Convo3_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Convo3_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],Convo3_Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],Convo3_Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],Convo3_Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],Convo3_Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],Convo3_Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],Convo3_Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],Convo3_Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],Convo3_Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],Convo3_Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],Convo3_Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],Convo3_Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],Convo3_Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],Convo3_Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],Convo3_Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],Convo3_Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],Convo3_Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],Convo3_Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],Convo3_Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],Convo3_Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],Convo3_Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],Convo3_Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],Convo3_Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],Convo3_Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],Convo3_Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],Convo3_Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]}),
            .Valid_Out(lb_Valid_Out),
            .Data_Out({lb_Data_Out[DATA_WIDHT-1:0],lb_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],lb_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],lb_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],lb_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],lb_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],lb_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],lb_Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],lb_Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],lb_Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],lb_Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],lb_Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],lb_Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],lb_Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],lb_Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],lb_Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],lb_Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],lb_Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],lb_Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],lb_Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],lb_Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],lb_Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],lb_Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],lb_Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],lb_Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],lb_Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],lb_Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],lb_Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],lb_Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],lb_Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],lb_Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],lb_Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]})
        );


    FP_Adder adder[31:0] (
        .Data_A({Max_Data_Out[DATA_WIDHT-1:0],Max_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Max_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Max_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Max_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Max_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Max_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],Max_Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],Max_Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],Max_Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],Max_Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],Max_Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],Max_Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],Max_Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],Max_Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],Max_Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],Max_Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],Max_Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],Max_Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],Max_Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],Max_Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],Max_Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],Max_Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],Max_Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],Max_Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],Max_Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],Max_Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],Max_Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],Max_Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],Max_Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],Max_Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],Max_Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]}),
        .Data_B({lb_Data_Out[DATA_WIDHT-1:0],lb_Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],lb_Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],lb_Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],lb_Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],lb_Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],lb_Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],lb_Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],lb_Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],lb_Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],lb_Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],lb_Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],lb_Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],lb_Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],lb_Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],lb_Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],lb_Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],lb_Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],lb_Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],lb_Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],lb_Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],lb_Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],lb_Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],lb_Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],lb_Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],lb_Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],lb_Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],lb_Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],lb_Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],lb_Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],lb_Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],lb_Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]}),
        .Valid_In(add_Valid_In),
        .Mode(1'b0),
        .RMode(2'b0),
        .Data_Out({Data_Out[DATA_WIDHT-1:0],Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],Data_Out[DATA_WIDHT*3-1:DATA_WIDHT*2],Data_Out[DATA_WIDHT*4-1:DATA_WIDHT*3],Data_Out[DATA_WIDHT*5-1:DATA_WIDHT*4],Data_Out[DATA_WIDHT*6-1:DATA_WIDHT*5],Data_Out[DATA_WIDHT*7-1:DATA_WIDHT*6],Data_Out[DATA_WIDHT*8-1:DATA_WIDHT*7],Data_Out[DATA_WIDHT*9-1:DATA_WIDHT*8],Data_Out[DATA_WIDHT*10-1:DATA_WIDHT*9],Data_Out[DATA_WIDHT*11-1:DATA_WIDHT*10],Data_Out[DATA_WIDHT*12-1:DATA_WIDHT*11],Data_Out[DATA_WIDHT*13-1:DATA_WIDHT*12],Data_Out[DATA_WIDHT*14-1:DATA_WIDHT*13],Data_Out[DATA_WIDHT*15-1:DATA_WIDHT*14],Data_Out[DATA_WIDHT*16-1:DATA_WIDHT*15],Data_Out[DATA_WIDHT*17-1:DATA_WIDHT*16],Data_Out[DATA_WIDHT*18-1:DATA_WIDHT*17],Data_Out[DATA_WIDHT*19-1:DATA_WIDHT*18],Data_Out[DATA_WIDHT*20-1:DATA_WIDHT*19],Data_Out[DATA_WIDHT*21-1:DATA_WIDHT*20],Data_Out[DATA_WIDHT*22-1:DATA_WIDHT*21],Data_Out[DATA_WIDHT*23-1:DATA_WIDHT*22],Data_Out[DATA_WIDHT*24-1:DATA_WIDHT*23],Data_Out[DATA_WIDHT*25-1:DATA_WIDHT*24],Data_Out[DATA_WIDHT*26-1:DATA_WIDHT*25],Data_Out[DATA_WIDHT*27-1:DATA_WIDHT*26],Data_Out[DATA_WIDHT*28-1:DATA_WIDHT*27],Data_Out[DATA_WIDHT*29-1:DATA_WIDHT*28],Data_Out[DATA_WIDHT*30-1:DATA_WIDHT*29],Data_Out[DATA_WIDHT*31-1:DATA_WIDHT*30],Data_Out[DATA_WIDHT*32-1:DATA_WIDHT*31]}),
        .Valid_Out(Valid_Out)
    );



endmodule