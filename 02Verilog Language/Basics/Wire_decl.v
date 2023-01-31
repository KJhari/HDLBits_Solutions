`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire NandA;
    wire NandB;
    wire NandOut;
    
    assign NandA = (a & b);
    assign NandB = (c & d);
    assign NandOut = (NandA | NandB);
    
    assign out = NandOut;
    assign out_n = !NandOut;
endmodule
