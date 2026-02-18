module edge_det_tb();

logic clk;
logic reset;
logic a_i;
logic rising_edge;
logic falling_edge;

edge_det EDGE_DET (.*);

always begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end

initial begin
reset <= 1'b1;
a_i <= 1'b1;
@(posedge clk);
reset <= 1'b0;
@(posedge clk);
for (int i=0; i<32; i++) begin
a_i <= $random%2;
@(posedge clk);
end
$finish();
end

initial begin
$dumpfile("edge_det.vcd");
$dumpvars(0, edge_det_tb);
end

endmodule
