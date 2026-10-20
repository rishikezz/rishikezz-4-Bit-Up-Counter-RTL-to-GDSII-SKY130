// 4-bit up-counter with synchronous active-low reset, enable, parallel load,
// and single-cycle overflow pulse when the counter wraps from 4'b1111 -> 4'b0000
//
// Ports:
//   clk      - system clock (positive-edge triggered)
//   rst_n    - active-low synchronous reset; when '0' the counter is reset on
//              the next rising edge of clk
//   en       - enable; when high the counter increments on each rising edge
//   load     - parallel load enable; when high at the clock edge, 'd' is
//              loaded into the counter (takes priority over 'en')
//   d[3:0]   - parallel data input to be loaded when 'load'==1
//   q[3:0]   - current 4-bit counter value (registered)
//   overflow - single-clock pulse asserted '1' when an increment causes the
//              counter to wrap from 4'b1111 to 4'b0000


module counter4 (
    input        clk,       // system clock
    input        rst_n,     // active-low synchronous reset
    input        en,        // count enable
    input        load,      // parallel load enable (has priority over en)
    input  [3:0] d,         // parallel load data
    output reg [3:0] q,     // counter output
    output reg   overflow   // single-cycle overflow pulse
);

    // Sequential logic: synchronous positive-edge behavior with synchronous
    // active-low reset. All registered outputs are updated in this single
    // always block to ensure one unique driver per signal.
    always @(posedge clk) begin
        // Handle synchronous active-low reset first
        if (!rst_n) begin
            q        <= 4'b0000; // reset counter to 0 on next rising edge when rst_n==0
            overflow <= 1'b0;    // clear overflow on reset
        end else begin
            // Default: clear overflow each cycle unless a wrap condition occurs.
            // This ensures overflow is a one-clock pulse.
            overflow <= 1'b0;

            // Parallel load has priority over increment/hold behavior.
            if (load) begin
                q <= d;           // load supplied data regardless of 'en'
            end else if (en) begin
                // Increment path: detect wrap from 4'b1111 to 4'b0000
                if (q == 4'b1111) begin
                    q        <= 4'b0000; // wrap to zero
                    overflow <= 1'b1;    // pulse overflow for this clock
                end else begin
                    q <= q + 1'b1;       // normal increment
                end
            end else begin
                q <= q; // hold current value when not enabled (explicit for clarity)
            end
        end
    end

endmodule