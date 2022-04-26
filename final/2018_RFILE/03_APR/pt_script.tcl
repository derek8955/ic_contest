#PrimeTime Script
set power_enable_analysis TRUE
set power_analysis_mode time_based

read_file -format verilog  ./RFILE_pr.v
current_design RFILE
link

source ./RFILE_APR.sdc
#read_parasitics -format SPEF -verbose  ./RFILE_pr.spef


## Measure  power
read_vcd  -strip_path test/u_RFILE  ./RFILE.fsdb
#report_switching_activity -list_not_annotated -show_pin

update_power

report_power


