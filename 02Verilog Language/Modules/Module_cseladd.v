module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire cout_lower,cout_upper_1,cout_upper_2;
wire [15:0] sum1,sum2;
add16 addder_16_lower(a[15:0],b[15:0],1'b0,sum[15:0],cout_lower);
add16 addder_16_upper_1(a[31:16],b[31:16],1'b0,sum1,cout_upper_1);
add16 addder_16_upper_2(a[31:16],b[31:16],1'b1,sum2,cout_upper_2);

always @ (cout_lower, sum1, sum2) begin
        case (cout_lower)
            1'b0: sum[31:16] <=sum1;
            1'b1:  sum[31:16] <=sum2;
        endcase
    end

endmodule
