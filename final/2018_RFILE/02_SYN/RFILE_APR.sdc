# operating conditions and boundary conditions #

create_clock -name clk  -period 10.0   [get_ports  clk]     ;#Modify period by yourself
set_input_delay  -max 1.0   -clock clk [get_ports value*]   ;#Modify value  by yourself
set_input_delay  -min 0.0   -clock clk [get_ports value*]   ;#Modify value  by yourself
set_output_delay -max 1.0   -clock clk [get_ports exp*]     ;#Modify value  by yourself
set_output_delay -min 0.0   -clock clk [get_ports exp*]     ;#Modify value  by yourself


set_clock_uncertainty  0.1  [all_clocks]
set_clock_latency      1.0  [all_clocks]


#Don't touch the basic env setting as below
set_input_delay  -max 1.0   -clock clk [remove_from_collection [all_inputs]  [get_ports {clk value*}]]
set_input_delay  -min 0.0   -clock clk [remove_from_collection [all_inputs]  [get_ports {clk value*}]]

set_output_delay -max 1.0   -clock clk [remove_from_collection [all_outputs] [get_ports exp*]]
set_output_delay -min 0.0   -clock clk [remove_from_collection [all_outputs] [get_ports exp*]]

set_load         0.01  [all_outputs]
set_drive        0.1   [all_inputs]

set_operating_conditions -max_library slow -max slow

set_max_fanout 6 [all_inputs]

