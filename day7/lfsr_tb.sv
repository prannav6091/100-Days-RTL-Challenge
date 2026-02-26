module lfsr_tb ();
logic clk;
logic reset;
logic [3:0] lfsr_o;

lfsr LFSR (.*);

always begin
clk = 1'b1;
#5;
clk = 1'b0;
#5;
end

initial begin
reset <= 1'b1;
@(posedge clk);
reset <= 1'b0;
@(posedge clk);
for (int i=0; i<32; i=i+1)
@(posedge clk);
$finish();
end

initial begin
$dumpfile("lfsr.vcd");
$dumpvars(2, lfsr_tb);
end

endmodule
