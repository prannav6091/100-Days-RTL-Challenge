module binarytogray_tb ();
localparam NOB_W = 4;
logic [NOB_W-1:0] bin_i;
logic [NOB_W-1:0] gray_o;

binarytogray #(NOB_W) BTG (.*);

initial begin
for (int i=0; i<2**NOB_W; i=i+1) begin
bin_i = i;
#5;
end
$finish();
end

initial begin
$dumpfile("binarytogray.vcd");
$dumpvars(2, binarytogray_tb);
end

endmodule
