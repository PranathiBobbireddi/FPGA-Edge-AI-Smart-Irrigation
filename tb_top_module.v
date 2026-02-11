`timescale 1ns / 1ps

// -----------------------------------------------------
// Testbench for Smart Irrigation System
// -----------------------------------------------------

module tb_top_module;

    reg  [9:0] moisture;
    wire [1:0] class;
    wire       pump;

    // Instantiate Device Under Test (DUT)
    top_module dut (
        .moisture(moisture),
        .class(class),
        .pump(pump)
    );

    initial begin
        // Test 1: Dry soil
        moisture = 10'd100;
        #10;

        // Test 2: Dry boundary
        moisture = 10'd350;
        #10;

        // Test 3: Optimal soil
        moisture = 10'd500;
        #10;

        // Test 4: Optimal boundary
        moisture = 10'd700;
        #10;

        // Test 5: Wet soil
        moisture = 10'd900;
        #10;

        // End simulation
        $stop;
    end

endmodule
