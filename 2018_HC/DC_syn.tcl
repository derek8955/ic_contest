# Read all Files
read_verilog huffman.v
current_design huffman
link

# Setting Clock Constraits
source -echo -verbose huffman.sdc

# Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc  -hierarchy -output "huffman_syn.ddc"
write_sdf huffman_syn.sdf
write_file -format verilog -hierarchy -output huffman_syn.v
report_area > area.log
report_timing > timing.log
report_qor > huffman_syn.qor

