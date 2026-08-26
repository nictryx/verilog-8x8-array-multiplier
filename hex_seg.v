module hex_Seg(input[5:0] dig, output[6:0] dispOUT);
reg[6:0] disp;
always @ (*)
begin
case(dig)
6'b0000000: disp <= 7'b1111110; //0
6'b0000001: disp <= 7'b0110000; //1
6'b0000010: disp <= 7'b1101101; //2
6'b0000011: disp <= 7'b1111001; //3
6'b0000100: disp <= 7'b0110011; //4
6'b0000101: disp <= 7'b1011011; //5
6'b0000110: disp <= 7'b1011111; //6
6'b0000111: disp <= 7'b1110000; //7
6'b0001000: disp <= 7'b1111111; //8
6'b0001001: disp <= 7'b1111011; //9
default: disp <= 7'b0000000;
endcase
end
assign dispOUT = disp;
endmodule
