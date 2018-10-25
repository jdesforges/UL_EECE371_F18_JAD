module MAT_MUL_TB();

reg [23:0] X ;
reg [23:0] Y ;

initial
begin
X = 197121; // [1, 2, 3] This can be changed to fit any array of three 8-bit numbers
Y = 66051;  // [3, 2, 1] Same here
end

MAT_MUL U0(X, Y, MUL); // [1,2,3]*[3,2,1] = 10

endmodule
