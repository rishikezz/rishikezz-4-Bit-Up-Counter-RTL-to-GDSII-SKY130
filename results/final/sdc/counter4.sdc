###############################################################################
# Created by write_sdc
###############################################################################
current_design counter4
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 20.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {d[0]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {d[1]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {d[2]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {d[3]}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {en}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {load}]
set_input_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {rst_n}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {overflow}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {q[0]}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {q[1]}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {q[2]}]
set_output_delay 4.0000 -clock [get_clocks {clk}] -add_delay [get_ports {q[3]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {overflow}]
set_load -pin_load 0.0334 [get_ports {q[3]}]
set_load -pin_load 0.0334 [get_ports {q[2]}]
set_load -pin_load 0.0334 [get_ports {q[1]}]
set_load -pin_load 0.0334 [get_ports {q[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {en}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {load}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst_n}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {d[0]}]
###############################################################################
# Design Rules
###############################################################################
set_max_transition 0.7500 [current_design]
set_max_capacitance 0.2000 [current_design]
set_max_fanout 10.0000 [current_design]
