module MAT_MUL(x, y, mul);

input [23:0] x; // Inputs a 3 byte number, which represents 3 different 8-bit numbers
input [23:0] y; // Same for y

output [15:0] mul; // Final multiplied output

wire [7:0] A_temp [2:0], B_temp [2:0]; // Temp arrays
wire [15:0] p [2:0], mac [2:0]; // Multiplied and MAC outputs from MAC module

assign {A_temp[0], A_temp[1], A_temp[2]} = x; // Inserting each byte of X into the temp array
assign {B_temp[0], B_temp[1], B_temp[2]} = y; // Same for y

MAC u0 (A_temp[0], B_temp[0], 0, p[0], mac[0]); // Calls MAC module on A1*B1 and outputs value to MAC and p arrays
MAC u1 (A_temp[1], B_temp[1], mac[0], p[1], mac[1]); // Calls MAC on A2*B2 and outputs to MAC and p arrays
MAC u2 (A_temp[2], B_temp[2], mac[1], p[2], mac[2]); // Calls MAC on A3*B3 and outputs to MAC and p arrays

assign mul = mac[2]; // Assign final output to the final MAC output of the array multiplication

endmodule

