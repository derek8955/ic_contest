#Read All Files
read_file -format verilog  CONV.v
#read_file -format sverilog  CONV.v
current_design CONV
link

#Setting Clock Constraints
source -echo -verbose CONV.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
compile

write -format ddc     -hierarchy -output "conv_syn.ddc"
write_sdf -version 1.0  conv_syn.sdf
write -format verilog -hierarchy -output conv_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  CONV_syn.qor
