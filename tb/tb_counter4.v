// Verilog-2005 testbench for the 4-bit counter module `counter4`.
// This is a simple functional testbench  with Icarus Verilog.

`timescale 1ns/1ps

module tb_counter4;
  // Testbench signals (module-scope declarations required by Icarus Verilog)
  reg clk;
  reg rst_n;
  reg en;
  reg load;
  reg [3:0] d;
  wire [3:0] q;
  wire overflow;

  counter4 dut (
  .clk(clk),
  .rst_n(rst_n),
  .en(en),
  .load(load),
  .d(d),
  .q(q),
  .overflow(overflow)
  );

  // Clock generation: 10 ns period => 100 MHz
  initial clk = 0;
  always #5 clk = ~clk; // clock toggles every 5 ns -> period 10 ns

  // Stimulus / test sequence
  initial begin
  // initialize signals
  rst_n = 0;
  en = 0;
  load = 0;
  d = 4'h0;

  // reset asserted for a few cycles
  #20;
  rst_n = 1;

  // simple increment test
  #10 en = 1;
  #200 en = 0;

  // parallel load test
  #10 load = 1; d = 4'hA; // load 1010
  #10 load = 0;

  // overflow test: enable until wrap occurs
  #10 en = 1;
  #200 en = 0;

  // finish
  #50;
  $display("TEST FINISHED");
  $finish;
  end

  // Waveform dump (place files under sim/ locally)
  initial begin
  $dumpfile("sim/tb_counter4.vcd");
  $dumpvars(0, tb_counter4);
  end

  // Simulation timeout guard
  initial begin
  #100000;
  $display("TIMEOUT");
  $finish;
  end

endmodule