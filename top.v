// Implement top level module
module top(
    input [7:0] sw,
    output [5:0] led
);

    light light_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0])
    );

    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    wire carry1;
    wire carry2;
    
    full_adder FA1 (
        .A(sw[4]),
        .B(sw[6]),
        .Cin(1'b0),
        .Y(led[3]),
        .Cout(carry1)
    );
    
    full_adder FA2 (
        .A(sw[5]),
        .B(sw[7]),
        .Cin(carry1),
        .Y(led[4]),
        .Cout(carry2)
    );
    
    assign led[5] = carry2;

endmodule