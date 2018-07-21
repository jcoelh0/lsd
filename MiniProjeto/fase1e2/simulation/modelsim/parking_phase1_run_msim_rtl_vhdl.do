transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jcoel/Desktop/LSD2/MicroProjeto/timer.vhd}
vcom -93 -work work {C:/Users/jcoel/Desktop/LSD2/MicroProjeto/freqDivider.vhd}
vcom -93 -work work {C:/Users/jcoel/Desktop/LSD2/MicroProjeto/parking_phase2.vhd}

