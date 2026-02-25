module shift_reg (
input wire clk,
input wire reset,
input wire s_i,
output wire[3:0] s_o
);

logic[3:0] sr_ff;
logic[3:0] next_sr;

assign next_sr = {sr_ff[2:0],s_i};

always_ff @(posedge clk or posedge reset)
if (reset)
sr_ff <= 4'b0;
else
sr_ff <= next_sr;

assign s_o = sr_ff;

endmodule

