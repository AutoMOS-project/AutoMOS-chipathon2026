v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1070 -270 1070 -250 {lab=clkb}
N 1090 -270 1090 -250 {lab=clk}
N 1110 -270 1110 -250 {lab=VDD3V3}
N 1110 -270 1140 -270 {lab=VDD3V3}
N 1090 -150 1090 -130 {lab=VSS}
N 670 -260 670 -230 {lab=VDD3V3}
N 670 -150 670 -120 {lab=VSS}
N 590 -190 620 -190 {lab=clk}
N 740 -190 770 -190 {lab=clkb}
N 970 -200 1020 -200 {lab=in}
N 1160 -200 1220 -200 {lab=#net1}
N 130 -270 190 -270 {lab=VSS}
N 120 -270 130 -270 {lab=VSS}
N 130 -310 190 -310 {lab=VDD3V3}
N 120 -310 130 -310 {lab=VDD3V3}
N 130 -160 190 -160 {lab=clk}
N 130 -230 190 -230 {lab=in}
N 120 -230 130 -230 {lab=in}
N 130 -190 190 -190 {lab=out}
N 120 -190 130 -190 {lab=out}
N 1280 -200 1310 -200 {lab=out}
C {lab_pin.sym} 1140 -270 0 1 {name=p8 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 1090 -130 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1090 -270 0 1 {name=p31 sig_type=std_logic lab=clk}
C {lab_wire.sym} 1070 -270 0 0 {name=p33 sig_type=std_logic lab=clkb}
C {/foss/designs/core_pga/switch/switch.sym} 1020 -150 0 0 {name=x4}
C {lab_wire.sym} 770 -190 0 1 {name=p102 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 590 -190 0 0 {name=p103 sig_type=std_logic lab=clk}
C {lab_pin.sym} 670 -260 0 0 {name=p104 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 670 -120 0 0 {name=p105 sig_type=std_logic lab=VSS}
C {/foss/designs/core_pga/inverter/inverter.sym} 620 -150 0 0 {name=x19}
C {lab_wire.sym} 970 -200 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 1310 -200 0 1 {name=p2 sig_type=std_logic lab=out}
C {iopin.sym} 190 -270 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 120 -270 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 190 -310 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 120 -310 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {ipin.sym} 130 -160 0 0 {name=p5 lab=clk}
C {lab_pin.sym} 190 -160 0 1 {name=p15 sig_type=std_logic lab=clk}
C {iopin.sym} 190 -230 0 0 {name=p6 lab=in}
C {lab_wire.sym} 120 -230 0 0 {name=p7 sig_type=std_logic lab=in}
C {iopin.sym} 190 -190 0 0 {name=p10 lab=out}
C {lab_wire.sym} 120 -190 0 0 {name=p11 sig_type=std_logic lab=out}
C {symbols/cap_mim_2f0fF.sym} 1250 -200 1 0 {name=C3
W=11e-6
L=11e-6
model=cap_mim_2f0fF
spiceprefix=X
m=8}
