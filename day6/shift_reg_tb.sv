module shift_reg_tb ();
logic s_i;
logic clk;
logic reset;
logic[3:0] s_o;

shift_reg SR (.*);

always begin
clk = 1'b0;
#5;
clk = 1'b1;
#5;
end

initial begin
reset <= 1'b1;
s_i <= 1'b0;
@(posedge clk);
reset <= 1'b0;
@(posedge clk);
for (int i=0; i<16; i=i+1) begin
s_i <= $random%2;
@(posedge clk);
end
$finish();
end

initial begin
$dumpfile("shift_reg.vcd");
$dumpvars(0,shift_reg_tb);
end

endmodule
