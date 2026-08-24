v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1100 -220 1100 -200 {lab=clkb}
N 1120 -220 1120 -200 {lab=clk}
N 1140 -220 1140 -200 {lab=VDD3V3}
N 1140 -220 1170 -220 {lab=VDD3V3}
N 1120 -100 1120 -80 {lab=VSS}
N 700 -210 700 -180 {lab=VDD3V3}
N 700 -100 700 -70 {lab=VSS}
N 620 -140 650 -140 {lab=clk}
N 770 -140 800 -140 {lab=clkb}
N 1000 -150 1050 -150 {lab=in}
N 1190 -150 1250 -150 {lab=#net1}
N 160 -220 220 -220 {lab=VSS}
N 150 -220 160 -220 {lab=VSS}
N 160 -260 220 -260 {lab=VDD3V3}
N 150 -260 160 -260 {lab=VDD3V3}
N 160 -110 220 -110 {lab=clk}
N 160 -180 220 -180 {lab=in}
N 150 -180 160 -180 {lab=in}
N 160 -140 220 -140 {lab=out}
N 150 -140 160 -140 {lab=out}
N 1310 -150 1340 -150 {lab=out}
C {lab_pin.sym} 1170 -220 0 1 {name=p8 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 1120 -80 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1120 -220 0 1 {name=p31 sig_type=std_logic lab=clk}
C {lab_wire.sym} 1100 -220 0 0 {name=p33 sig_type=std_logic lab=clkb}
C {/foss/designs/core_pga/switch/switch.sym} 1050 -100 0 0 {name=x4}
C {lab_wire.sym} 800 -140 0 1 {name=p102 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 620 -140 0 0 {name=p103 sig_type=std_logic lab=clk}
C {lab_pin.sym} 700 -210 0 0 {name=p104 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 700 -70 0 0 {name=p105 sig_type=std_logic lab=VSS}
C {/foss/designs/core_pga/inverter/inverter.sym} 650 -100 0 0 {name=x19}
C {lab_wire.sym} 1000 -150 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 1340 -150 0 1 {name=p2 sig_type=std_logic lab=out}
C {iopin.sym} 220 -220 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 150 -220 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 220 -260 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 150 -260 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {ipin.sym} 160 -110 0 0 {name=p5 lab=clk}
C {lab_pin.sym} 220 -110 0 1 {name=p15 sig_type=std_logic lab=clk}
C {iopin.sym} 220 -180 0 0 {name=p6 lab=in}
C {lab_wire.sym} 150 -180 0 0 {name=p7 sig_type=std_logic lab=in}
C {iopin.sym} 220 -140 0 0 {name=p10 lab=out}
C {lab_wire.sym} 150 -140 0 0 {name=p11 sig_type=std_logic lab=out}
C {symbols/cap_mim_2f0fF.sym} 1280 -150 1 0 {name=C11
W=11e-6
L=11e-6
model=cap_mim_2f0fF
spiceprefix=X
m=16}
