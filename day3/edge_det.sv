module edge_det (
input wire clk,
input wire reset,

input wire a_i,

output wire rising_edge,
output wire falling_edge
);

logic a_ff;

always_ff @(posedge clk or posedge reset)
if (reset)
a_ff <= 1'b0;
else
a_ff <= a_i;

assign rising_edge = ~a_ff & a_i;
assign falling_edge = a_ff & ~a_i;

endmodule
