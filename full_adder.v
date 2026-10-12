// Implement module called full_adder
module full_adder(
    input A, B, Cin,
    
    output Y,
    output Cout
);

    assign Y = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);


endmodule