# operating conditions and boundary conditions #

create_clock -name DCK  -period 1300   [get_ports  DCK] 
create_clock -name GCK  -period 4.50   [get_ports  GCK]

set_clock_uncertainty  0.1  [all_clocks]
set_clock_latency      1.0  [all_clocks]


#Don't touch the basic env setting as below
set_input_delay  -max 1.0   -clock DCK [remove_from_collection [all_inputs] [get_ports {DCK GCK Vsync mode}]]
set_input_delay  -min 0.0   -clock DCK [remove_from_collection [all_inputs] [get_ports {DCK GCK Vsync mode}]]
set_input_delay  -max 1.0   -clock GCK [get_ports Vsync]
set_input_delay  -min 0.0   -clock GCK [get_ports Vsync]

set_output_delay -max 1.0   -clock GCK [get_ports OUT*]
set_output_delay -min 0.0   -clock GCK [get_ports OUT*]

set_load         0.1   [all_outputs]
set_drive        0.1   [all_inputs]

set_operating_conditions -max_library slow -max slow
set_max_fanout 6 [all_inputs]


#set_interactive_constraint_modes func_mode
set_false_path -from DCK  -to GCK
set_false_path -from GCK  -to DCK                       
