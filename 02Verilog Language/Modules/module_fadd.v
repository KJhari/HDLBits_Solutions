module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//

wire cout_lower,cout_upper;
add16 addder_16_1(a[15:0],b[15:0],1'b0,sum[15:0],cout_lower);
add16 addder_16_2(a[31:16],b[31:16],cout_lower,sum[31:16],cout_upper);

endmodule

//module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here


assign sum = a ^ b ^ cin;
assign cout = a&b | a&cin | b&cin;


endmodule
