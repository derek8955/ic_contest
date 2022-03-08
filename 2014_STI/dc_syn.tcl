#Read All Files
read_file -format verilog  STI_DAC.v
#read_file -format sverilog  STI_DAC.v
current_design STI_DAC
link

#Setting Clock Constraints
source -echo -verbose STI_DAC.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

#Synthesis all design
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc
compile

write -format ddc     -hierarchy -output "STI_DAC.ddc"
write_sdf -version 1.0  STI_DAC_syn.sdf
write -format verilog -hierarchy -output STI_DAC_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  STI_DAC_syn.qor
