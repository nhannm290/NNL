module FiFO #(parameter DEPTH = 220, parameter DATA_WIDTH = 8)(
    input clk, // Module's CLK
    input rst, // Reset signal
    input Data_Valid_In, // check Data In
    input Request, // Start Module if Request = 1 else do nothing (like start)
    input Read_Req, // Read data signal. This will make FIFO read Data from its RAM 
    input Write_Req, // Write data signal. This will make FIFO write Data to its RAM
    input [DATA_WIDTH-1:0] Data_In, // Data in
    output reg [DATA_WIDTH-1:0] Data_Out, // Data_Out
    output wire Empty, // Check FIFO is empty or not
    output wire Full, // Check FIFO is full or not
    output reg Data_Valid_Out // Check Data output
    );
    reg [31:0] Counter =0; // Main counter
    reg [DATA_WIDTH-1:0] FIFO [DEPTH-1:0]; // RAM
    reg [31:0] read_Counter = 0; // address read
    reg [31:0] write_Counter = 0; // address write
    
    integer i;
    assign Empty = (Counter == 0)? 1'b1 : 1'b0;
    assign Full  = (Counter == DEPTH)? 1'b1 : 1'b0;
    
    
    always @ (posedge  clk or negedge rst) begin
        if (rst == 1'b0) Counter <= 0;
        else if (Request == 1'b1) begin
            if (Write_Req == 1'b1 && Data_Valid_In ==1'b1) begin
                if (Full != 1) Counter <= Counter + 32'd1;
                else Counter <= Counter;
            end
            else if (Read_Req == 1'b1) begin
                if (Empty != 1) Counter <= Counter - 32'd1;
                else Counter <= Counter;
            end
            else Counter <= Counter;
        end
    end
    
    always @ (posedge clk or negedge rst) begin 
        if (rst == 1'b0) begin
            read_Counter <= 0;
            write_Counter <= 0;   
            Data_Out <= 0;
            Data_Valid_Out <= 0;
            
            for(i =0; i<DEPTH;i = i+1'd1) begin
                FIFO[i] <= 0;
            end
        end
        else begin
            if (Request == 1'b1) begin
                if (Write_Req == 1'b1 && Counter !=DEPTH && Data_Valid_In == 1'b1) begin // If write data check FULL and signal valid
                    FIFO[write_Counter] <= Data_In;
                    Data_Valid_Out <= 1'b0;
                    write_Counter <= write_Counter +32'd1; //address write
                end
                else if (Write_Req == 1'b1 && Counter == DEPTH && Data_Valid_In == 1'b1) begin // Write until FIFO full
                    $display("Can't Write data. FIFO FULL");
                end
                else if(Read_Req ==1'b1 && Counter !=32'd0) begin // FIFO read mode. will read unitl FIFO empty
                    Data_Out = FIFO[read_Counter];
                    read_Counter <= read_Counter +32'd1;
                    Data_Valid_Out <= 1'b1;
                end
                else if(Read_Req ==1'b1 && Counter ==32'd0) begin // FIFO's empty -> Can't read 
                    Data_Valid_Out <= 0;
                    $display("Can't Read Data. FIFO EMPTY");
                end
                else;
            end
            else begin // Same operation with rst
                read_Counter  <= read_Counter;
                write_Counter <= write_Counter;   
                Data_Out <= 0;
                Data_Valid_Out <= 0;
            end
        end
    end
endmodule
