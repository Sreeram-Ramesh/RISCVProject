`timescale 1ns / 1ps

module reset_ff #(parameter WIDTH = 8) (
    input       clk, rst,
    input       stall_en,
    input       [WIDTH-1:0] d,
    output reg  [WIDTH-1:0] q
);

always @(posedge clk) begin
    if (rst) q <= 0;
    else if (!stall_en) q <= d;
end

endmodule