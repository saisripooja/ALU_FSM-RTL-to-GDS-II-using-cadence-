`timescale 1ns / 1ps

module calculator_fsm_tb;

    reg clk = 0, reset, start;
    reg [15:0] A, B;
    reg [3:0] op_sel;
    wire [31:0] result;
    wire done;

    calculator_fsm uut (
        .clk(clk),
        .reset(reset),
        .start(start),
        .A(A),
        .B(B),
        .op_sel(op_sel),
        .result(result),
        .done(done)
    );

    always #5 clk = ~clk;

    task apply_op(input [15:0] a,input [15:0] b, input [3:0] sel, input [255:0] label);
    begin
        A = a;
        B = b;
        op_sel = sel;
        @(posedge clk);
        $display("%s: %0d, %0d -> %0d", label, a, b, result);
    end
    endtask

    initial begin
        reset = 1;
        start = 0;
        #5
        reset = 0;
        start = 1; 
        @(posedge clk);

        apply_op($random, $random, 4'b0000, "ADD"); 
         @(posedge clk);
        apply_op($random, $random, 4'b0001, "SUB");
         @(posedge clk);
        apply_op($random, $random, 4'b0010, "MUL");
         @(posedge clk);
        apply_op($random, 16'b0000000000010000, 4'b0011, "DIV");
         @(posedge clk);
        apply_op($random, $random, 4'b0100, "AND");
         @(posedge clk);
        apply_op($random, $random, 4'b0101, "OR");
         @(posedge clk);
        apply_op($random, $random, 4'b0110, "XOR");
         @(posedge clk);
        apply_op($random, 0, 4'b0111, "NOT");
         @(posedge clk);
        apply_op($random, 1, 4'b1000, "LSL");
         @(posedge clk);
        apply_op($random, 1, 4'b1001, "LSR");
         @(posedge clk);
        apply_op($random, 1, 4'b1010, "ASR"); 

        $finish;
    end
endmodule
