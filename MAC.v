module MAC(x, y, acc, mul, mac);

input [7:0] x;
input [7:0] y;
input [15:0] acc;

output [15:0] mul;
output [15:0] mac;

assign mul = x * y;
assign mac = mul + acc;

endmodule
