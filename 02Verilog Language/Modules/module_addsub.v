module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

wire [31:0] b_not;
wire cout_lower,cout_upper;
assign b_not = {({32{sub}})^(b)};

add16 addder_16_1(a[15:0],b_not[15:0],sub,sum[15:0],cout_lower);
add16 addder_16_2(a[31:16],b_not[31:16],cout_lower,sum[31:16],cout_upper);

endmodule
