#Read All Files
read_verilog LCD_CTRL.v
current_design LCD_CTRL
link

#Setting Clock Constraints
source -echo -verbose LCD_CTRL.sdc

#Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc     -hierarchy -output "LCD_CTRL_syn.ddc"
write_sdf LCD_CTRL_syn.sdf
write_file -format verilog -hierarchy -output LCD_CTRL_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  LCD_CTRL_syn.qor

