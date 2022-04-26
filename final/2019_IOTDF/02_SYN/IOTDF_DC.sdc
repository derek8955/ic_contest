# operating conditions and boundary conditions #


create_clock -name clk  -period 10.0   [get_ports  clk]      ;#Modify period by yourself

set_dont_touch_network      [all_clocks]
set_fix_hold                [all_clocks]
set_clock_uncertainty  0.1  [all_clocks]
set_clock_latency      1.0  [all_clocks]
set_ideal_network           [get_ports clk]


#Don't touch the basic env setting as below
set_input_delay  -max 1.0   -clock clk [remove_from_collection [all_inputs]  {clk}]  
set_input_delay  -min 0.0   -clock clk [remove_from_collection [all_inputs]  {clk}] 

set_output_delay -max 1.0   -clock clk [all_outputs]
set_output_delay -min 0.0   -clock clk [all_outputs] 

set_load         0.01  [all_outputs]
set_drive        0.1   [all_inputs]

set_operating_conditions -max_library slow -max slow

set_max_fanout 10 [all_inputs]


