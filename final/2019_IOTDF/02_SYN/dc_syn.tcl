#Read All Files
read_file -format verilog  ../01_RTL/IOTDF.v
#read_file -format sverilog  JAM.v
current_design IOTDF
link

#Setting Clock Constraints
source -echo -verbose IOTDF_APR.sdc
check_design

#Synthesis all design
compile 
#compile -map_effort high -area_effort high -inc
#compile_ultra

write -format ddc     -hierarchy -output "IOTDF_syn.ddc"
write_sdf -version 1.0  IOTDF_syn.sdf
write -format verilog -hierarchy -output IOTDF_syn.v
write_sdc -version 1.7  ../03_APR/IOTDF_APR.sdc

report_area > area.log
report_timing > timing.log
report_power > power.log
report_qor   >  IOTDF_syn.qor

exit
