module MAC(

input [7:0] x,
input [7:0] y,

input clk,
input clear,
input clk2,
input load,
output reg [15:0] mac_out
);

reg  [15:0] x_reg, y_reg;
reg  load_reg;
reg  [15:0] old_result;
wire [15:0] multiplied;

assign multa = x_reg * y_reg;
	
always @ (mac_out, load_reg)
begin
	if (load_reg)
		old_result <= 0;
	else
		old_result <= mac_out;
end

always @ (posedge clk or posedge clear)
begin
	if (clear)
	begin
		x_reg <= 0;
		y_reg <= 0;
		load_reg <= 0;
		mac_out <= 0;
	end
	
	else if (clk2)
	begin
		x_reg <= x;
		y_reg <= y;
		load_reg <= load;
		mac_out <= old_result + multiplied;
	end
end
endmodule