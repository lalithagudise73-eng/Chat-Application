```verilog
// Chat Application
// Verilog HDL
// Simple sender-to-receiver communication system

module chat_application (
    input clk,
    input reset,
    input send,
    input read,
    input [7:0] message_in,

    output reg [7:0] message_out,
    output reg message_ready,
    output reg [3:0] message_count
);

    // Internal message storage
    reg [7:0] message_buffer;

    always @(posedge clk or posedge reset) begin

        if (reset) begin
            message_buffer <= 8'b0;
            message_out <= 8'b0;
            message_ready <= 1'b0;
            message_count <= 4'b0;
        end

        else begin

            // Send message
            if (send) begin
                message_buffer <= message_in;
                message_ready <= 1'b1;
            end

            // Read received message
            if (read && message_ready) begin
                message_out <= message_buffer;
                message_count <= message_count + 1'b1;
                message_ready <= 1'b0;
            end

        end
    end

endmodule
```
