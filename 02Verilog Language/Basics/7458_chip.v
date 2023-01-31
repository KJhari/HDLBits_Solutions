module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire AndP2abOut;
    wire AndP2cdOut;
    assign AndP2abOut = (p2a & p2b);
    assign  AndP2cdOut = (p2c & p2d);
    
    assign p2y = (AndP2abOut | AndP2cdOut);
    
    wire AndP1abcOut;
    wire AndP1fedOut;
    
    assign AndP1fedOut = (p1f & p1d & p1e);
    assign AndP1abcOut = (p1a & p1b & p1c);
    
    assign p1y = (AndP1fedOut | AndP1abcOut );
    
endmodule
