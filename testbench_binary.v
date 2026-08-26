module project_multiplier_TB();
reg [7:0] a,b; 
wire [15:0] z;

project_multiplier uut (.a(a), .b(b),.z(z));

initial begin 
$monitor ("a = %b , b = %b, z = %b" ,a,b,z);
end 

initial begin 
#0 a = 8'b10101010 ; b = 8'b11111111;
#10 a = 8'b11111001 ; b = 8'b10001011;  
#10 $stop ;
end
endmodule
