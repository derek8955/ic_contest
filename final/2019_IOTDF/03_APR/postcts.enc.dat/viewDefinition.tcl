if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name lib_max\
   -timing\
    [list ${::IMEX::libVar}/mmmc/slow.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name DC_max\
   -library_set lib_max
create_constraint_mode -name func_mode\
   -sdc_files\
    [list ${::IMEX::dataVar}/mmmc/modes/func_mode/func_mode.sdc]
create_analysis_view -name av_func_mode -constraint_mode func_mode -delay_corner DC_max -latency_file ${::IMEX::dataVar}/mmmc/views/av_func_mode/latency.sdc
set_analysis_view -setup [list av_func_mode] -hold [list av_func_mode]
catch {set_interactive_constraint_mode [list func_mode] } 
