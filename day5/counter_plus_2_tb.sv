module cp2_tb ();
logic clk;
logic reset;
logic [7:0] c_out;

cp2 CP2 (.*);

always begin
clk = 1'b0;
#5;
clk = 1'b1;
#5;
end

initial begin
reset = 1'b1;
@(posedge clk);
@(posedge clk);
reset = 1'b0;
for (int i=0; i<128; i++) begin
@(posedge clk);
end
$finish();
end

initial begin
$dumpfile("cp2.vcd");
$dumpvars(0, cp2_tb);
end

endmodule
