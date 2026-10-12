module light(
    // Declare downstairs and upstairs input
    input A, B,
    // Declare stair light output
    output Y
);

    // Enter logic equation here
    assign Y = A ^ B;

endmodule