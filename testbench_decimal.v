module project_multiplier_TB();
reg [7:0] a,b; 
wire [15:0] z;

project_multiplier uut (.a(a), .b(b),.z(z));

initial begin 
$monitor ("a = %d , b = %d, z = %d" ,a,b,z);
end 

initial begin 
#0 a = 8'd170 ; b = 8'd255;
#10 a = 8'd249 ; b = 8'd139;  
#10 $stop ;
end
endmodule
