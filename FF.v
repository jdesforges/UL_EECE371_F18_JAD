module FF(D,Q,Clk);

input D, Clk;
output reg Q;
wire temp;

assign temp = D;

always @ (posedge Clk) begin
	Q <= temp;
end

endmodule
