module adder_32bits(

//input
input  wire [31:0]						data_in_1,
input  wire [31:0]						data_in_2,
//output
output wire [31:0]						data_out


);


assign data_out = data_in_1 + data_in_2; //this adder don't have carry_logic


endmodule
