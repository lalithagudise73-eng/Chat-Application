```verilog
// Testbench for Chat Application

`timescale 1ns/1ps

module chat_application_tb;

    reg clk;
    reg reset;
    reg send;
    reg read;
    reg [7:0] message_in;

    wire [7:0] message_out;
    wire message_ready;
    wire [3:0] message_count;

    // Instantiate the Chat Application
    chat_application DUT (
        .clk(clk),
        .reset(reset),
        .send(send),
        .read(read),
        .message_in(message_in),
        .message_out(message_out),
        .message_ready(message_ready),
        .message_count(message_count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform file
        $dumpfile("chat_waveform.vcd");
        $dumpvars(0, chat_application_tb);

        // Initial values
        clk = 0;
        reset = 1;
        send = 0;
        read = 0;
        message_in = 8'b0;

        // Reset
        #10;
        reset = 0;

        // --------------------------------
        // Send message H
        // --------------------------------
        #10;
        message_in = "H";
        send = 1;

        #10;
        send = 0;
        read = 1;

        #10;
        read = 0;

        // --------------------------------
        // Send message I
        // --------------------------------
        #10;
        message_in = "I";
        send = 1;

        #10;
        send = 0;
        read = 1;

        #10;
        read = 0;

        // --------------------------------
        // Send message O
        // --------------------------------
        #10;
        message_in = "O";
        send = 1;

        #10;
        send = 0;
        read = 1;

        #10;
        read = 0;

        // --------------------------------
        // Send message K
        // --------------------------------
        #10;
        message_in = "K";
        send = 1;

        #10;
        send = 0;
        read = 1;

        #10;
        read = 0;

        #20;

        $finish;

    end

    // Display simulation information
    initial begin

        $monitor(
            "Time=%0t | Send=%b | Read=%b | Input=%c | Output=%c | Ready=%b | Count=%0d",
            $time,
            send,
            read,
            message_in,
            message_out,
            message_ready,
            message_count
        );

    end

endmodule
```
