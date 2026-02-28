module btoonehot_tb ();

localparam BIN_W = 4;
localparam ONE_HOT_W = 16;
logic [BIN_W-1:0] bin_i;
logic [ONE_HOT_W-1:0] one_hot_o;

btoonehot #(BIN_W, ONE_HOT_W) BTOONEHOT(.*);

initial begin
for (int i=0; i<16; i=i+1) begin
bin_i = $urandom_range(0, 4'hF);
#5;
end
$finish();
end

initial begin
$dumpfile("btoonehot.vcd");
$dumpvars(2, btoonehot_tb);
end

endmodule
