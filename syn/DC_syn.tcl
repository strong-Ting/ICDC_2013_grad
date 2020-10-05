
set_host_options -max_cores 6
#Read All Files
read_verilog ../src/FAS.v
current_design FAS
link

#Setting Clock Constraints
source -echo -verbose FAS.sdc

#Synthesis all design
compile -map_effort medium -area_effort medium
compile -map_effort medium -area_effort medium -inc

write -format ddc     -hierarchy -output "FAS_syn.ddc"
write_sdf FAS_syn.sdf
write_file -format verilog -hierarchy -output FAS_syn.v
report_area > area.log
report_timing > timing.log
report_qor   >  FAS_syn.qor

