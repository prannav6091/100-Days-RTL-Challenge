module binarytogray #(
parameter NOB_W = 4
)(
input wire[NOB_W-1:0] bin_i,
output wire[NOB_W-1:0] gray_o

);

assign gray_o[NOB_W-1] = bin_i[NOB_W-1];

genvar i;
for(i=NOB_W-2; i>=0; i=i-1)
assign gray_o[i] = bin_i[i+1]^bin_i[i];

endmodule
