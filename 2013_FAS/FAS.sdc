# operating conditions and boundary conditions #

set cycle  20         ;	#clock period defined by designer

create_clock -period $cycle [get_ports  clk]
set_dont_touch_network      [get_clocks clk]
set_clock_uncertainty  1  [get_clocks clk]
set_clock_latency      1  [get_clocks clk]

set_input_delay 1 -clock clk [get_ports rst]
set_input_delay 4 -clock clk [get_ports F_IO*]
set_input_delay 0 -clock clk [get_ports F_RB*]

set_output_delay 1 -clock clk [get_ports done]

set_output_delay 2 -max -clock clk [get_ports F_IO*] -add_delay
set_output_delay -1 -min -clock clk [get_ports F_IO*] -add_delay
set_output_delay -1 -min -clock clk [get_ports F_CLE*]
set_output_delay -1 -min -clock clk [get_ports F_ALE*]
set_output_delay 2 -max -clock clk [get_ports F_REN*]
set_output_delay 2 -max -clock clk [get_ports F_WEN*]

set_min_delay 1 -from [get_ports F_RB*]

set_fix_hold clk

set_load -pin_load 1  [all_outputs]
set_drive          1  [all_inputs]

set_operating_conditions -min_library fast -min fast -max_library slow -max slow
set_wire_load_model -name tsmc13_wl10 -library slow                        
