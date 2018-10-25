module MAC_TB();

reg [7:0] A;
reg [7:0] B;
reg [15:0] ACC;

wire [15:0] MUL;
wire [15:0] MAC;

initial
begin
ACC = 0;
A = 1;
#15 A = 5;
#30 A = 100;
#35 A = 255;
B = 10;
#5 B = 100;
#10 B = 255;
#15 B = 10;
#20 B = 100; 
#25 B = 255;
#30 B = 100;
#35 B = 255;

end


MAC  U0(A,B,ACC,MUL,MAC);

endmodule
