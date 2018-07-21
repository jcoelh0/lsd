onerror {exit -code 1}
vlib work
vlog -work work AdderDemo.vo
vlog -work work Adder4.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Adder4_vlg_vec_tst -voptargs="+acc"
vcd file -direction AdderDemo.msim.vcd
vcd add -internal Adder4_vlg_vec_tst/*
vcd add -internal Adder4_vlg_vec_tst/i1/*
run -all
quit -f
