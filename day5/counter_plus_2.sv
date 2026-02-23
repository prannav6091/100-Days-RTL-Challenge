module cp2 (
input wire clk,
input wire reset,
output logic [7:0] c_out);

logic [7:0] n_out;

assign n_out = c_out + 8'h2;

always_ff @(posedge clk or posedge reset)
if (reset)
c_out <= 8'h1;
else
c_out <= n_out;

endmodule
