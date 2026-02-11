`timescale 1ns / 1ps

// -----------------------------------------------------
// Irrigation Controller
// Controls pump based on soil condition
// -----------------------------------------------------

module irrigation_controller (
    input  wire [1:0] class,
    output reg        pump
);

    always @(*) begin
        case (class)
            2'b00: pump = 1'b1;   // Dry -> Pump ON
            2'b01: pump = 1'b0;   // Optimal -> Pump OFF
            2'b10: pump = 1'b0;   // Wet -> Pump OFF
            default: pump = 1'b0;
        endcase
    end

endmodule
