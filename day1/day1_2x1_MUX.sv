module mux (
input [7:0] a;
input [7:0] b;
input s;
output [7:0] o;
);

assign o = s ? a:b;
endmodule
