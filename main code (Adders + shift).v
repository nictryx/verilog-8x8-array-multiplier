module project_multiplier(
input [7:0] a,b, 
output [15:0] z
);

// p used as a wire so we can be able to shift it.
wire [15:0] p ;
//used to define the multiplication of the inputs.
wire [63:1] w;
//used to trace the sum & cout of the adders.
wire [97:1] s;

// and g# (wire# , a[#] , b[#]);
and g0 (p[0], a[0],b[0]);

and g1 (w[1], a[7],b[0]);
and g2 (w[2], a[6],b[0]);
and g3 (w[3], a[5],b[0]);
and g4 (w[4], a[4],b[0]);
and g5 (w[5], a[3],b[0]);
and g6 (w[6], a[2],b[0]);
and g7 (w[7], a[1],b[0]);


and g8 (w[8], a[7],b[1]);
and g9 (w[9], a[6],b[1]);
and g10 (w[10], a[5],b[1]);
and g11 (w[11], a[4],b[1]);
and g12 (w[12], a[3],b[1]);
and g13 (w[13], a[2],b[1]);
and g14 (w[14], a[1],b[1]);
and g15 (w[15], a[0],b[1]);

and g16 (w[16], a[7],b[2]);
and g17 (w[17], a[6],b[2]);
and g18 (w[18], a[5],b[2]);
and g19 (w[19], a[4],b[2]);
and g20 (w[20], a[3],b[2]);
and g21 (w[21], a[2],b[2]);
and g22 (w[22], a[1],b[2]);
and g23 (w[23], a[0],b[2]);

and g24 (w[24], a[7],b[3]);
and g25 (w[25], a[6],b[3]);
and g26 (w[26], a[5],b[3]);
and g27 (w[27], a[4],b[3]);
and g28 (w[28], a[3],b[3]);
and g29 (w[29], a[2],b[3]);
and g30 (w[30], a[1],b[3]);
and g31 (w[31], a[0],b[3]);

and g32 (w[32], a[7],b[4]);
and g33 (w[33], a[6],b[4]);
and g34 (w[34], a[5],b[4]);
and g35 (w[35], a[4],b[4]);
and g36 (w[36], a[3],b[4]);
and g37 (w[37], a[2],b[4]);
and g38 (w[38], a[1],b[4]);
and g39 (w[39], a[0],b[4]);

and g40 (w[40], a[7],b[5]);
and g41 (w[41], a[6],b[5]);
and g42 (w[42], a[5],b[5]);
and g43 (w[43], a[4],b[5]);
and g44 (w[44], a[3],b[5]);
and g45 (w[45], a[2],b[5]);
and g46 (w[46], a[1],b[5]);
and g47 (w[47], a[0],b[5]);

and g48 (w[48], a[7],b[6]);
and g49 (w[49], a[6],b[6]);
and g50 (w[50], a[5],b[6]);
and g51 (w[51], a[4],b[6]);
and g52 (w[52], a[3],b[6]);
and g53 (w[53], a[2],b[6]);
and g54 (w[54], a[1],b[6]);
and g55 (w[55], a[0],b[6]);

and g56 (w[56], a[7],b[7]);
and g57 (w[57], a[6],b[7]);
and g58 (w[58], a[5],b[7]);
and g59 (w[59], a[4],b[7]);
and g60 (w[60], a[3],b[7]);
and g61 (w[61], a[2],b[7]);
and g62 (w[62], a[1],b[7]);
and g63 (w[63], a[0],b[7]);


// halfAdder (in1 ,in2 ,sum,cout);
// fullAdder (in1 , in2 , cin, sum, cout);

halfAdder h0 (w[1],w[9],s[2],s[1]); 
halfAdder h1 (w[2],w[10],s[4],s[3]); 
halfAdder h2 (w[3],w[11],s[6],s[5]); 
halfAdder h3 (w[4],w[12],s[8],s[7]); 
halfAdder h4 (w[5],w[13],s[10],s[9]); 
halfAdder h5 (w[6],w[14],s[12],s[11]); 
halfAdder h6 (w[7],w[15],p[1],s[13]); 

FullAdder F7 (w[8],w[17],s[1],s[15],s[14]); 
FullAdder F8 (s[2],w[18],s[3],s[17],s[16]); 
FullAdder F9 (s[4],w[19],s[5],s[19],s[18]); 
FullAdder F10 (s[6],w[20],s[7],s[21],s[20]); 
FullAdder F11 (s[8],w[21],s[9],s[23],s[22]);
FullAdder F12 (s[10],w[22],s[11],s[25],s[24]);
FullAdder F13 (s[12],w[23],s[13],p[2],s[26]);

FullAdder F14 (w[16],w[25],s[14],s[28],s[27]); 
FullAdder F15 (s[15],w[26],s[16],s[30],s[29]); 
FullAdder F16 (s[17],w[27],s[18],s[32],s[31]); 
FullAdder F17 (s[19],w[28],s[20],s[34],s[33]); 
FullAdder F18 (s[21],w[29],s[22],s[36],s[35]); 
FullAdder F19 (s[23],w[30],s[24],s[38],s[37]); 
FullAdder F20 (s[25],w[31],s[26],p[3],s[39]); 

FullAdder F21 (w[24],w[33],s[27],s[41],s[40]); 
FullAdder F22 (s[28],w[34],s[29],s[43],s[42]); 
FullAdder F23 (s[30],w[35],s[31],s[45],s[44]);
FullAdder F24 (s[32],w[36],s[33],s[47],s[46]);  
FullAdder F25 (s[34],w[37],s[35],s[49],s[48]);  
FullAdder F26 (s[36],w[38],s[37],s[51],s[50]);  
FullAdder F27 (s[38],w[39],s[39],p[4],s[52]); 

FullAdder F28 (w[32],w[41],s[40],s[54],s[53]); 
FullAdder F29 (s[41],w[42],s[42],s[56],s[55]); 
FullAdder F30 (s[43],w[43],s[44],s[58],s[57]); 
FullAdder F31 (s[45],w[44],s[46],s[60],s[59]); 
FullAdder F32 (s[47],w[45],s[48],s[62],s[61]); 
FullAdder F33 (s[49],w[46],s[50],s[64],s[63]); 
FullAdder F34 (s[51],w[47],s[52],p[5],s[65]); 

FullAdder F35 (w[40],w[49],s[53],s[67],s[66]); 
FullAdder F36 (s[54],w[50],s[55],s[69],s[68]); 
FullAdder F37 (s[56],w[51],s[57],s[71],s[70]);
FullAdder F38 (s[58],w[52],s[59],s[73],s[72]); 
FullAdder F39 (s[60],w[53],s[61],s[75],s[74]);  
FullAdder F40 (s[62],w[54],s[63],s[77],s[76]);  
FullAdder F41 (s[64],w[55],s[65],p[6],s[78]);

FullAdder F42 (w[48],w[57],s[66],s[80],s[79]); 
FullAdder F43 (s[67],w[58],s[68],s[82],s[81]); 
FullAdder F44 (s[69],w[59],s[70],s[84],s[83]); 
FullAdder F45 (s[71],w[60],s[72],s[86],s[85]);
FullAdder F46 (s[73],w[61],s[74],s[88],s[87]);  
FullAdder F47 (s[75],w[62],s[76],s[90],s[89]);
FullAdder F48 (s[77],w[63],s[78],p[7],s[91]);

FullAdder F49 (w[56],s[79],s[92],p[14],p[15]); 
FullAdder F50 (s[80],s[81],s[93],p[13],s[92]); 
FullAdder F51 (s[82],s[83],s[94],p[12],s[93]); 
FullAdder F52 (s[84],s[85],s[95],p[11],s[94]); 
FullAdder F53 (s[86],s[87],s[96],p[10],s[95]); 
FullAdder F54 (s[88],s[89],s[97],p[9],s[96]); 
halfAdder h55 (s[90],s[91],p[8],s[97]); 

//shift right by 2
assign z = p [15:0]  >> 2;

endmodule
