`timescale 1 ns/ 1 ns

module reconfig_multi_tb();

reg  [31:0] 	x     ;
wire [31:0]  	y     ;
reg				s     ;

initial begin   
		s              =1'b1;
		x   				=32'd1; 
	#10000;
		s					=1'b0;
		x					=32'd1;
	#10000;
	
	
		s 	  	         =1'b1;
		x   				=32'd3; 
	#10000;
		s					=1'b0;
		x					=32'd3;
	#10000;
end 


reconfig_multi u_reconfig_multi(
  .x(x),       
  .y(y),     
  .s(s)
);
endmodule
