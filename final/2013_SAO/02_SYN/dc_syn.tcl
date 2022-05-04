
read_file -format verilog ../01_RTL/SAO.v
current_design SAO
link

source -echo -verbose SAO_APR.sdc
check_design

compile

write_sdc -version 1.7 "../03_APR/SAO_APR.sdc"
write_sdf -version 1.0 -context verilog SAO_syn.sdf
write -format ddc -hierarchy -output SAO_syn.ddc
write -format verilog -hierarchy -output SAO_syn.v

report_area > area.log
report_timing > timing.log 
report_qor > SAO_syn.qor

exit