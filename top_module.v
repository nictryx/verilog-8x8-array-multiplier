module TOP_M(
input [7:0] A,
input [7:0] B,
input clk,
output [7:0] AN,
output DP, CA, CB, CC, CD, CE, CF, CG
    );
    reg[31:0] ms10 =32'd100000;
    wire[6:0] cathode;
    reg[7:0] AN_wire = 8'b11111110;
    reg [3:0] dig, dig1, dig2, dig3, dig4, dig5;
    reg [32:0] count ; 
    wire [15:0] w0, w1;
         always @ (*)
           begin
           case(AN_wire)
           8'b11111110: dig = dig1;
           8'b11111101: dig = dig2;
           8'b11111011: dig = dig3;
           8'b11110111: dig = dig4;
           8'b11101111: dig = dig5;
           default:     dig = 6'd0;
           endcase
           end
           assign {DP,CA,CB,CC,CD,CE,CF,CG} = {1'b1,~cathode};
           always @ (negedge clk)
           begin
           count <= count + 1;
           AN_wire <= (count%ms10==0)? {AN_wire[6:0],AN_wire[7]} : AN_wire;
           end
           assign AN = AN_wire;
           hex_Seg h1(dig, cathode);
           
           project_multiplier u1(A, B, w0);
         
           
           always @ (*)
           begin
           dig5 <= w0/10000;
           dig4 <= w0/1000 - (10*dig5);
           dig3 <= w0/100 - (100*dig5) - (10*dig4);
           dig2 <= w0/10 - (1000*dig5) - (100*dig4) - (10*dig3);
           dig1 <= w0%10;
           
           end
endmodule
