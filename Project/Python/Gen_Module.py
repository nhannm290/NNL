import os
import numpy as np

current_dir = os.getcwd()

path_Gen = "/Project/Python/Gen_Module/Module/"
path_Weight = "/Project/Python/Weight_File/"

def wire(channel =8,kernel=16,type_wire ="Valid_Out"):
    wire_input = ""
    for k in range(kernel):
        wire_input = wire_input+ "\twire "
        for c in range(channel):
            if (c==channel-1):
                wire_input = wire_input +"channel"+str(c+1)+"_Kernel"+str(k+1)+"_Valid_Out;\n\n"
            else:
                wire_input = wire_input +"channel"+str(c+1)+"_Kernel"+str(k+1)+"_Valid_Out, "
        wire_input= wire_input +"\tassign add_kernel"+str(k+1)+ "=" 
        for c2 in range(channel):
                if (c2==channel-1):
                    wire_input = wire_input +"channel"+str(c2+1)+"_Kernel"+str(k+1)+"_Valid_Out;\n\n"
                    
                else:
                    wire_input = wire_input +"channel"+str(c2+1)+"_Kernel"+str(k+1)+"_Valid_Out & "
    return(wire_input)

def wire_convo(kernel=16):
    wire_input= "\twire[31:0] "
    for k in range(kernel):
        if (k ==kernel-1):
            wire_input = wire_input + "Data_Out_Kernel"+str(k+1)+";"
        else:
            wire_input = wire_input + "Data_Out_Kernel"+str(k+1)+", "
    return (wire_input)
            
def wire_gen_CHANNEL_Valid_Out(channel = 64):
    wire_output1 = "\twire "
    wire_output2= "assign Valid_Out= "
    for c in range (channel):
        if c == channel -1:
            wire_output1 = wire_output1 + "CHANNEL"+str(c+1)+"_Valid_Out;"
            wire_output2 = wire_output2 + "CHANNEL"+str(c+1)+"_Valid_Out;"
        else:
            wire_output1 = wire_output1 + "CHANNEL"+str(c+1)+"_Valid_Out, "
            wire_output2 = wire_output2 + "CHANNEL"+str(c+1)+"_Valid_Out & "
    return(wire_output1+ "\n\t"+wire_output2)

def wire_add_Valid_Out(kernel=16):
    wire_input = "\twire "
    for k in range(kernel):
        # for c in range(channel):
        if (k==kernel-1):
            wire_input = wire_input +"add_kernel"+str(k+1)+"_Valid_Out;\n"
            # wire_input = wire_input + "\n\twire "
        else:
            wire_input = wire_input +"add_kernel"+str(k+1)+"_Valid_Out, "
    return(wire_input)

def wire_add_Data_Out(kernel=16):
    wire_input = "\twire[31:0] "
    for k in range(kernel):
        # for c in range(channel):
        if (k==kernel-1):
            wire_input = wire_input + "add_k"+str(k+1)+"_Data_Out;\n"
            # wire_input = wire_input + "\n\twire[31:0] "
        else:
            wire_input = wire_input +"add_k"+str(k+1)+"_Data_Out, "
    return(wire_input)

def wire_batch_norm(kernel=16,type_wire = "Data_Out"):
    if type_wire == "Data_Out":
        wire_input = "\twire [31:0] "
    elif type_wire == "Valid_Out":
        wire_input = "\twire "
    for k in range(kernel):
        if k == kernel-1:
            wire_input = wire_input+ "bn"+str(k+1)+"_"+type_wire+";\n"
        else:
            wire_input = wire_input+ "bn"+str(k+1)+"_"+type_wire+", "
    return(wire_input)

def wire_rl(kernel=16):
    wire_input ="\twire "
    wire_input2 = "\t assign Valid_Out = "
    for k in range(kernel):
        if k == kernel-1:
            wire_input = wire_input+ "rl"+str(k+1)+"_Valid_Out;\n"
            wire_input2 =wire_input2 +"rl"+str(k+1)+"_Valid_Out;\n"
        else:
            wire_input = wire_input+ "rl"+str(k+1)+"_Valid_Out, "
            wire_input2 =wire_input2 +"rl"+str(k+1)+"_Valid_Out & "
    return (wire_input + "\n" + wire_input2)


def wire_DataOut(channel = 64):
    output = ""
    for c in range (channel):
        if c ==0:
            output = output + "Data_Out[DATA_WIDHT:0],"
        elif c == channel-1:
            output = output + "Data_Out[" + str((c+1)*32-1) +":" + str(c*32) +"]"
        else:
            output = output + "Data_Out[" + str((c+1)*32-1) +":" + str(c*32) +"],"
    return(output)

def wire_gen(channel = 64):
    output = ""
    for c in range (channel):
        if c ==0:
            output = output + "Data_Out[DATA_WIDHT-1:0], "
        elif c == 1:
            output = output + "Data_Out[DATA_WIDHT*2-1:DATA_WIDHT],"
        elif c == channel-1:
            output = output + "Data_Out[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c) +"]"
        else:
            output = output + "Data_Out[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c) +"],"
    return(output)


def convo3x3_stride_1x1_padding1(channel=128, path_kernel = current_dir+path_Weight+"Residual_Separable_Convolution_0/residual_blocks_0_depthwise_conv2_0_weight.txt"):
    file_kernel = open(path_kernel,"r")
    array_kernel = []
    for line in file_kernel:
        array_kernel.append(int(line.split("\n")[0]))
    i = 0
    convo_out =""
    for c in range (channel):
        convo_module = "\tConvolution2D_3x3_stride_1x1_padding_1x1 #(\n"
        convo_module = convo_module + "\t\t.IMG_WIDHT(IMG_WIDHT),\n"
        convo_module= convo_module + "\t\t.IMG_HEIGHT(IMG_HEIGHT)\n"
        convo_module= convo_module + "\t)\n"
        convo_module = convo_module +"\t\tCHANNEL"+str(c+1) +" (\n"

        if (c==0):
            input_convo_Module = "\t\t\t.Data_In(Data_In[DATA_WIDHT-1:0]),\n"
        elif (c==1):
            input_convo_Module = "\t\t\t.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
        else:
            input_convo_Module = "\t\t\t.Data_In(Data_In[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c) +"]),\n"
        if len(str(array_kernel[i])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel0(32'b00"+str(array_kernel[i])+"),\n"
        else: 
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel0(32'b"+str(array_kernel[i])+"),\n"
        if len(str(array_kernel[i+1])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel1(32'b00"+str(array_kernel[i+1])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel1(32'b"+str(array_kernel[i+1])+"),\n"
        if len(str(array_kernel[i+2])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel2(32'b00"+str(array_kernel[i+2])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel2(32'b"+str(array_kernel[i+2])+"),\n"
        if len(str(array_kernel[i+3])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel3(32'b00"+str(array_kernel[i+3])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel3(32'b"+str(array_kernel[i+3])+"),\n"
        if len(str(array_kernel[i+4])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel4(32'b00"+str(array_kernel[i+4])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel4(32'b"+str(array_kernel[i+4])+"),\n"
        if len(str(array_kernel[i+5])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel5(32'b00"+str(array_kernel[i+5])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel5(32'b"+str(array_kernel[i+5])+"),\n"
        if len(str(array_kernel[i+6])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel6(32'b00"+str(array_kernel[i+6])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel6(32'b"+str(array_kernel[i+6])+"),\n"
        if len(str(array_kernel[i+7])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel7(32'b00"+str(array_kernel[i+7])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel7(32'b"+str(array_kernel[i+7])+"),\n"
        if len(str(array_kernel[i+8])) !=32:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel8(32'b00"+str(array_kernel[i+8])+"),\n"
        else:
            input_convo_Module = input_convo_Module + "\t\t\t.Kernel8(32'b"+str(array_kernel[i+8])+"),\n"
        input_convo_Module = input_convo_Module +"\t\t\t.Valid_In(Valid_In),\n"
        input_convo_Module = input_convo_Module +"\t\t\t.clk(clk),\n"
        input_convo_Module = input_convo_Module +"\t\t\t.rst(rst),\n"
        if (c==0):
            input_convo_Module = input_convo_Module+ "\t\t\t.Data_Out(Data_Out[DATA_WIDHT-1:0]),\n"
        elif (c==1):
            input_convo_Module = input_convo_Module+ "\t\t\t.Data_Out(Data_Out[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
        else:
            input_convo_Module = input_convo_Module+ "\t\t\t.Data_Out(Data_Out[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c) +"]),\n"
        input_convo_Module = input_convo_Module +"\t\t\t.Valid_Out(CHANNEL"+str(c+1)+"_Valid_Out)\n"
        input_convo_Module = input_convo_Module +"\t\t);\n"
        i = i+9
        convo_output_module = convo_module +input_convo_Module 
        convo_out = convo_out + convo_output_module
        
    return(convo_out) 

def convo3x3_stride_1x1_padding1_ver2(kernel = 7,channel=128, path_kernel = current_dir+path_Weight+"Residual_Separable_Convolution_0/residual_blocks_0_depthwise_conv2_0_weight.txt"):
    file_kernel = open(path_kernel,"r")
    array_kernel = []
    for line in file_kernel:
        array_kernel.append(int(line.split("\n")[0]))
    i = 0
    convo_output = ""
    for k in range (kernel):
        convo_out =""
        for c in range (channel):
            convo_module = "\tConvolution2D_3x3_stride_1x1_padding_1x1 #(\n"
            convo_module = convo_module + "\t\t.IMG_WIDHT(IMG_WIDHT),\n"
            convo_module= convo_module + "\t\t.IMG_HEIGHT(IMG_HEIGHT)\n"
            convo_module= convo_module + "\t)\n"
            convo_module = convo_module +"\t\tCHANNEL"+str(c+1)+"_KERNEL"+str(k+1)+" (\n"

            if (c==0):
                input_convo_Module = "\t\t\t.Data_In(Data_In[DATA_WIDHT-1:0]),\n"
            elif (c==1):
                input_convo_Module = "\t\t\t.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
            else:
                input_convo_Module = "\t\t\t.Data_In(Data_In[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c) +"]),\n"
            if len(str(array_kernel[i])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel0(32'b00"+str(array_kernel[i])+"),\n"
            else: 
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel0(32'b"+str(array_kernel[i])+"),\n"
            if len(str(array_kernel[i+1])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel1(32'b00"+str(array_kernel[i+1])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel1(32'b"+str(array_kernel[i+1])+"),\n"
            if len(str(array_kernel[i+2])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel2(32'b00"+str(array_kernel[i+2])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel2(32'b"+str(array_kernel[i+2])+"),\n"
            if len(str(array_kernel[i+3])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel3(32'b00"+str(array_kernel[i+3])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel3(32'b"+str(array_kernel[i+3])+"),\n"
            if len(str(array_kernel[i+4])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel4(32'b00"+str(array_kernel[i+4])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel4(32'b"+str(array_kernel[i+4])+"),\n"
            if len(str(array_kernel[i+5])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel5(32'b00"+str(array_kernel[i+5])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel5(32'b"+str(array_kernel[i+5])+"),\n"
            if len(str(array_kernel[i+6])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel6(32'b00"+str(array_kernel[i+6])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel6(32'b"+str(array_kernel[i+6])+"),\n"
            if len(str(array_kernel[i+7])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel7(32'b00"+str(array_kernel[i+7])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel7(32'b"+str(array_kernel[i+7])+"),\n"
            if len(str(array_kernel[i+8])) !=32:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel8(32'b00"+str(array_kernel[i+8])+"),\n"
            else:
                input_convo_Module = input_convo_Module + "\t\t\t.Kernel8(32'b"+str(array_kernel[i+8])+"),\n"
            input_convo_Module = input_convo_Module +"\t\t\t.Valid_In(Valid_In),\n"
            input_convo_Module = input_convo_Module +"\t\t\t.clk(clk),\n"
            input_convo_Module = input_convo_Module +"\t\t\t.rst(rst),\n"
            if (c==0):
                input_convo_Module = input_convo_Module+ "\t\t\t.Data_Out(Data_Out_Kernel"+str(k+1)+"[DATA_WIDHT-1:0]),\n"
            elif (c==1):
                input_convo_Module = input_convo_Module+ "\t\t\t.Data_Out(Data_Out_Kernel"+str(k+1)+"[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
            else:
                input_convo_Module = input_convo_Module+ "\t\t\t.Data_Out(Data_Out_Kernel"+str(k+1)+"[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c) +"]),\n"
            # channel1_Kernel1_Valid_Out
            input_convo_Module = input_convo_Module +"\t\t\t.Valid_Out(channel"+str(c+1)+"_Kernel"+str(k+1)+"_Valid_Out)\n"
            input_convo_Module = input_convo_Module +"\t\t);\n"
            i = i+9
            convo_output_module = convo_module +input_convo_Module 
            convo_out = convo_out + convo_output_module
        convo_out = convo_out + "\n" + adder(kernel = k,channel = channel) +"\n"
        convo_output = convo_output+ convo_out 
    return(convo_output) 




def convo(channel = 1, kernel = 1,string_kernel = "00111101100101001011110111101100"):
    convo_Module ="\tConvolution2D_1x1_stride_1x1 "+"CHANNEL"+str(channel+1)+"_Kernel"+str(kernel+1)+ " (\n"
    if (channel==0):
        input_convo_Module = "\t\t.Data_In(Data_In[DATA_WIDHT-1:0]),\n"
    elif (channel==1):
        input_convo_Module = "\t\t.Data_In(Data_In[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
    else:
        input_convo_Module = "\t\t.Data_In(Data_In[DATA_WIDHT*"+str(channel+1)+"-1:DATA_WIDHT*"+str(channel) +"]),\n"

    input_convo_Module = input_convo_Module + "\t\t.Kernel(32'b"+string_kernel+"),\n"
    input_convo_Module = input_convo_Module +"\t\t.Valid_In(Valid_In),\n"
    input_convo_Module = input_convo_Module +"\t\t.clk(clk),\n"
    input_convo_Module = input_convo_Module +"\t\t.rst(rst),\n"
    if (channel==0):
        input_convo_Module = input_convo_Module+ "\t\t.Data_Out(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT-1:0]),\n"
    else:
        input_convo_Module = input_convo_Module+ "\t\t.Data_Out(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*"+str(channel+1)+"-1:DATA_WIDHT*"+str(channel) +"]),\n"
    input_convo_Module = input_convo_Module +"\t\t.Valid_Out("+"channel"+str(channel+1)+"_Kernel"+str(kernel+1)+"_Valid_Out)\n"
    input_convo_Module = input_convo_Module +"\t);\n"
    output_string = convo_Module + input_convo_Module
    return(output_string)

# def convo3(channel=8,kernel=16,path_kernel = current_dir+path_Weight+"Residual_Separable_Convolution_0/residual_blocks_0_depthwise_conv2_0_weight.txt",path_A = current_dir+path_Weight+"Residual_Separable_Convolution_0/A_num.txt",path_B = current_dir+path_Weight+"Residual_Separable_Convolution_0/B_num.txt" ):
#     file_kernel = open(path_kernel,"r")
#     file_A = open(path_A,"r")
#     file_B = open(path_B,"r")
#     line_kernel = file_kernel.readline()
#     line_A = file_A.readline()
#     line_B = file_B.readline()

#     convo_channel = ""
#     convo_kernel = ""
#     for k in range (kernel):
#         for c in range (channel):
#             convo_channel = convo_channel +convo(channel =c,kernel = k,string_kernel = line_kernel.split("\n")[0])
#             line_kernel = file_kernel.readline()
#         convo_kernel = convo_kernel + convo_channel 
#     print(convo_channel)




def adder(kernel =0,channel = 8):
    adder_module = "\tAdder_"+str(channel)+"input add_k"+str(kernel+1)+"(\n"
    # adder_input = "\t\t.Data1(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT-1:0]),\n"
    # adder_input = adder_input + "\t\t.Data2(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
    # adder_input = adder_input + "\t\t.Data3(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*3-1:DATA_WIDHT*2]),\n"
    # adder_input = adder_input + "\t\t.Data4(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*4-1:DATA_WIDHT*3]),\n"
    # adder_input = adder_input + "\t\t.Data5(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*5-1:DATA_WIDHT*4]),\n"
    # adder_input = adder_input + "\t\t.Data6(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*6-1:DATA_WIDHT*5]),\n"
    # adder_input = adder_input + "\t\t.Data7(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*7-1:DATA_WIDHT*6]),\n"
    # adder_input = adder_input + "\t\t.Data8(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*8-1:DATA_WIDHT*7]),\n"
    for c in range(channel):
        if c == 0:
            adder_input = "\t\t.Data1(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT-1:0]),\n"
        elif c ==1 :
            adder_input = adder_input + "\t\t.Data2(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
        else:
            adder_input = adder_input + "\t\t.Data"+str(c+1)+"(Data_Out_Kernel"+str(kernel+1)+"[DATA_WIDHT*"+str(c+1)+"-1:DATA_WIDHT*"+str(c)+"]),\n"
    adder_input = adder_input + "\t\t.Valid_In(add_kernel"+str(kernel+1)+"),\n"
    adder_input = adder_input + "\t\t.Data_Out(add_k"+str(kernel+1)+"_Data_Out),\n"
    adder_input = adder_input + "\t\t.Valid_Out(add_kernel"+str(kernel+1)+"_Valid_Out)\n"
    adder_input = adder_input + "\t);\n"

    adder_output = adder_module +adder_input ;
    return(adder_output) 


def batch_norm(kernel =1,A_string ="00111111010000011000011001101000",B_string="10111110011000010011010010000110"):
    batch_norm_Module = "\tBatch_Norm " +"bn_kernel"+str(kernel+1)+"(\n"

    batch_norm_input = "\t\t.Data_A(32'b"+A_string+"),\n"
    batch_norm_input = batch_norm_input +"\t\t.Data_B(32'b"+B_string+"),\n"
    batch_norm_input = batch_norm_input + "\t\t.Data_In("+"add_k"+str(kernel+1)+"_Data_Out"+"),\n"
    batch_norm_input = batch_norm_input + "\t\t.Valid_In(add_kernel"+str(kernel+1)+"_Valid_Out),\n"
    batch_norm_input = batch_norm_input + "\t\t.Data_Out(" +"bn"+str(kernel+1)+"_Data_Out),\n"
    batch_norm_input = batch_norm_input + "\t\t.Valid_Out(" +"bn"+str(kernel+1)+"_Valid_Out)\n"
    batch_norm_input = batch_norm_input + "\t);\n" 
    batch_norm_output = batch_norm_Module +batch_norm_input
    return(batch_norm_output)

# print(batch_norm_output)

def relu(kernel = 1):
    relu_module = "\tRelu_Core "+"rl_kernel"+str(kernel+1)+"(\n"
    relu_input = "\t\t.Data_In(bn"+str(kernel+1)+"_Data_Out),\n"
    relu_input = relu_input +"\t\t.Valid_In(bn"+str(kernel+1)+"_Valid_Out),\n"
    if(kernel == 0):
        relu_input = relu_input + "\t\t.Data_Out(Data_Out[DATA_WIDHT-1:0]),\n"
    elif (kernel == 1):
        relu_input = relu_input + "\t\t.Data_Out(Data_Out[DATA_WIDHT*2-1:DATA_WIDHT]),\n"
    else:
        relu_input = relu_input + "\t\t.Data_Out(Data_Out[DATA_WIDHT*"+str(kernel+1)+"-1:DATA_WIDHT*"+str(kernel)+"]),\n"
    relu_input = relu_input +"\t\t.Valid_Out(rl"+str(kernel+1)+"_Valid_Out)\n"
    relu_input = relu_input +"\t);\n"
    relu_output = relu_module + relu_input
    return (relu_output)
    # print(relu_output)


file_read_Kernel = open(current_dir+path_Weight+"Residual_Separable_Convolution_blocks_3/conv/residual_blocks.3.residual_conv.weight.txt","r")

file_read_A = open(current_dir+path_Weight+"Residual_Separable_Convolution_blocks_3/conv/A_num.txt","r")
file_read_B = open(current_dir+path_Weight+"Residual_Separable_Convolution_blocks_3/conv/B_num.txt","r")

line_read_Kernel = file_read_Kernel.readline()

line_A = file_read_A.readline()
line_B = file_read_B.readline()

file_write = open(current_dir+path_Gen+"Separable.v","w")


file_write.write(wire_convo(kernel =7)+"\n")
file_write.write(wire_add_Data_Out(kernel=7)+"\n")
file_write.write(wire_add_Valid_Out(kernel=7)+"\n")
file_write.write(wire(channel=128,kernel=7,type_wire="Valid_Out")+"\n")
# file_write.write(wire_batch_norm(kernel=128,type_wire="Data_Out")+"\n")
# file_write.write(wire_batch_norm(kernel=128,type_wire="Valid_Out")+"\n")
# file_write.write(wire_rl(kernel=128))

# for kernel in range(128):
#     file_write.write("/"*10+"KERNEL"+str(kernel+1)+"/"*10+"\n")
#     for channel in range(64):
#         # print(convo(channel=channel,kernel=0,string_kernel = str(line_read)))
#         file_write.write(convo(channel=channel,kernel=kernel,string_kernel = str(line_read_Kernel).split("\n")[0]))
#         line_read_Kernel = file_read_Kernel.readline()
#     file_write.write(adder(kernel=kernel,channel=64))
#     file_write.write(batch_norm(kernel=kernel,A_string=line_A.split("\n")[0],B_string=line_B.split("\n")[0]))
#     line_A = file_read_A.readline()
#     line_B = file_read_B.readline()
#     file_write.write(relu(kernel=kernel))


# print(adder(kernel=16,channel=16))
# file_write.write(wire_convo(channel=16))

file_write.write(convo3x3_stride_1x1_padding1_ver2(kernel = 7,channel=128,path_kernel=current_dir+path_Weight+"Convo3/conv3.weight.txt"))

# file_write.write(convo3x3_stride_1x1_padding1(channel=128,path_kernel=current_dir+path_Weight+"Residual_Separable_Convolution_blocks_3/residual_blocks.3.depthwise_conv2.0.weight.txt"))

# file_write.write(wire_DataOut(channel = 128))