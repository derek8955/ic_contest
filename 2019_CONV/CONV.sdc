# operating conditions and boundary conditions #

create_clock -name clk  -period 10.0   [get_ports  clk] 

set_dont_touch_network      [all_clocks]
set_fix_hold                [all_clocks]
set_clock_uncertainty  0.1  [all_clocks]
set_clock_latency      0.5  [all_clocks]
set_ideal_network           [get_ports clk]



#Don't touch the basic env setting as below
set_input_delay  5.0   -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 0.5    -clock clk [all_outputs] 

set_load         1   [all_outputs]
set_drive        1   [all_inputs]

set_operating_conditions -max_library slow -max slow
set_wire_load_model -name tsmc13_wl10 -library slow                        
set_max_fanout 20 [all_inputs]
                     


