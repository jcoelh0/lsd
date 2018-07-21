onerror {exit -code 1}
vlib work
vlog -work work DrinksMachine.vo
vlog -work work FSM.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.DrinksFSM_vlg_vec_tst -voptargs="+acc"
vcd file -direction DrinksMachine.msim.vcd
vcd add -internal DrinksFSM_vlg_vec_tst/*
vcd add -internal DrinksFSM_vlg_vec_tst/i1/*
run -all
quit -f
