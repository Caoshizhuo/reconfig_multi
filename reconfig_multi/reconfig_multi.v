// Code your design here
module reconfig_multi 

(

input  wire[31:0] 		x,
input  wire					s,
output wire[31:0]			y
);

//reg wire define here

wire [31:0]				addr_result_1; //the result from the first Adder
wire [31:0]				addr_result_2;	//the result from the second Adder
wire [31:0]				addr_result_3; //the result from the third Adder
wire [31:0]				adder1_data_in_1;
wire [31:0]				adder1_data_in_2;
wire [31:0]				adder2_data_in_1;
wire [31:0]				adder2_data_in_2;
wire [31:0]				adder3_data_in_1;
wire [31:0]				adder3_data_in_2;



assign adder1_data_in_1 = (!s) ? (x<<1) : (x<<2);

assign adder1_data_in_2 = x;

assign adder2_data_in_1 = (addr_result_1 <<11);

assign adder2_data_in_2 = (!s) ? (x<<3) : (addr_result_1);

assign adder3_data_in_1 = (addr_result_2<<1);

assign adder3_data_in_2 = (!s) ? x : (x<<8);

assign y= addr_result_3;


//assign addr_result_1 = (s==1)? (x+(x<<2)) : (x+(x<<1)); 	//the first addr_result


//assign addr_result_2 = (s==0)? ((addr_result_1<<11)+(x<<3)) : ((addr_result_1 <<11)+addr_result_1);//the second addr_result


//assign addr_result_3 = (s==1)? ((x<<8)+(addr_result_2<<1))  :(x+(addr_result_2<<1));//the third addr_result
  
  
//assign y= addr_result_3;



//the first adder;
adder_32bits adder_32bits_1
(
.data_in_1(adder1_data_in_1),
.data_in_2(adder1_data_in_2),
.data_out(addr_result_1)
);


//the second adder
adder_32bits adder_32bits_2
(
.data_in_1(adder2_data_in_1),
.data_in_2(adder2_data_in_2),
.data_out(addr_result_2)
);

//the third adder
adder_32bits adder_32bits_3
(
.data_in_1(adder3_data_in_1),
.data_in_2(adder3_data_in_2),
.data_out(addr_result_3)

);



endmodule
