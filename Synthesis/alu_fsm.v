`timescale 1ns / 1ps

module calculator_fsm (
    input clk, reset, start,  
    input [15:0] A, B,  
    input [3:0] op_sel,  
    output reg [31:0] result,  
    output reg done  
);

    parameter IDLE = 2'b00, COMPUTE = 2'b10;  
    reg [1:0] state, next_state;  

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            result <= 0;
            done <= 0;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        case (state)
            IDLE:    next_state = start ? COMPUTE : IDLE;  
            COMPUTE: next_state = IDLE;  
            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk) begin
        if (state == COMPUTE) begin
            case (op_sel)
                4'b0000: result <= A + B;
                4'b0001: result <= A - B;
                4'b0010: result <= A * B;
                4'b0011: result <= (B != 0) ? (A / B) : 16'hFFFF;
                4'b0100: result <= A & B;
                4'b0101: result <= A | B;
                4'b0110: result <= A ^ B;
                4'b0111: result <= ~A;
                4'b1000: result <= A << B[3:0];
                4'b1001: result <= A >> B[3:0];
                4'b1010: result <= A >>> B[3:0];
            endcase
        end
    end

    always @(posedge clk) begin
        if (state == COMPUTE)
            done <= 1;
        else
            done <= 0;
    end

endmodule
