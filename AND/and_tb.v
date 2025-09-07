
module tb_and_gate;

    // Inputs
    reg a, b;

    // Output
    wire y;

    // Instantiate the AND gate
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // Task to apply stimulus
    task stimuli(input reg a_in, input reg b_in);
    begin
        a = a_in;
        b = b_in;
        #10; // wait for 10 ns
        $display("Time=%0t : a=%b, b=%b => y=%b", $time, a, b, y);
    end
    endtask

    // Initial block to call the task
    initial begin
        stimuli(0, 0);
        stimuli(0, 1);
        stimuli(1, 0);
        stimuli(1, 1);

        $finish;
    end

endmodule

