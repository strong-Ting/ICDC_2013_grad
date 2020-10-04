#Read All Files
read_verilog ../src/FAS.v
current_design FAS
link

#Setting Clock Constraints
source -echo -verbose FAS.sdc

#Synthesis all design
compile -map_effort high -area_effort high
compile -map_effort high -area_effort high -inc

write -format ddc     -hierarchy -output "FAS_syn.ddc"
write_sdf FAS_syn.sdf
write_file -format verilog -hierarchy -output FAS_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  FAS_syn.qor

