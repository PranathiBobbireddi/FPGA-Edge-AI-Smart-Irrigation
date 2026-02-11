`timescale 1ns / 1ps

// -----------------------------------------------------
// Top Module
// Connects classifier and irrigation controller
// -----------------------------------------------------

module top_module (
    input  wire [9:0] moisture,
    output wire [1:0] class,
    output wire       pump
);

    // Instantiate classifier
    moisture_classifier classifier_inst (
        .moisture(moisture),
        .class(class)
    );

    // Instantiate irrigation controller
    irrigation_controller controller_inst (
        .class(class),
        .pump(pump)
    );

endmodule
