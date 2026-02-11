`timescale 1ns / 1ps

// -----------------------------------------------------
// Moisture Classifier (Edge AI Inference Engine)
// 00 -> Dry
// 01 -> Optimal
// 10 -> Wet
// -----------------------------------------------------

module moisture_classifier (
    input  wire [9:0] moisture,   // 10-bit soil moisture ADC input
    output reg  [1:0] class       // Soil condition class
);

    always @(*) begin
        if (moisture <= 10'd350)
            class = 2'b00;          // Dry
        else if (moisture <= 10'd700)
            class = 2'b01;          // Optimal
        else
            class = 2'b10;          // Wet
    end

endmodule
