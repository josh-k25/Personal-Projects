module and_gate_tb;
    reg a, b;
    wire out;

    // Instantiate the module under test
    and_gate uut (
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        // Create waveform file
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);

        // Test all input combinations
        a = 0; b = 0; #5;
        a = 0; b = 1; #5;
        a = 1; b = 0; #5;
        a = 1; b = 1; #5;

        $finish;
    end
endmodule
