#Read All Files
read_file -format verilog SET.v 
current_design SET
link

#Setting Clock Constraints
source -echo -verbose SET.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc     -hierarchy -output "SET_syn.ddc"
write_sdf -version 1.0  SET_syn.sdf
write -format verilog -hierarchy -output SET_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  SET_syn.qor