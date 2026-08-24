v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1170 -280 1170 -260 {lab=clkb}
N 1190 -280 1190 -260 {lab=clk}
N 1210 -280 1210 -260 {lab=VDD3V3}
N 1210 -280 1240 -280 {lab=VDD3V3}
N 1190 -160 1190 -140 {lab=VSS}
N 770 -270 770 -240 {lab=VDD3V3}
N 770 -160 770 -130 {lab=VSS}
N 690 -200 720 -200 {lab=clk}
N 840 -200 870 -200 {lab=clkb}
N 1070 -210 1120 -210 {lab=in}
N 1260 -210 1320 -210 {lab=#net1}
N 230 -280 290 -280 {lab=VSS}
N 220 -280 230 -280 {lab=VSS}
N 230 -320 290 -320 {lab=VDD3V3}
N 220 -320 230 -320 {lab=VDD3V3}
N 230 -170 290 -170 {lab=clk}
N 230 -240 290 -240 {lab=in}
N 220 -240 230 -240 {lab=in}
N 230 -200 290 -200 {lab=out}
N 220 -200 230 -200 {lab=out}
N 1380 -210 1410 -210 {lab=out}
C {lab_pin.sym} 1240 -280 0 1 {name=p8 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 1190 -140 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1190 -280 0 1 {name=p31 sig_type=std_logic lab=clk}
C {lab_wire.sym} 1170 -280 0 0 {name=p33 sig_type=std_logic lab=clkb}
C {/foss/designs/core_pga/switch/switch.sym} 1120 -160 0 0 {name=x4}
C {lab_wire.sym} 870 -200 0 1 {name=p102 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 690 -200 0 0 {name=p103 sig_type=std_logic lab=clk}
C {lab_pin.sym} 770 -270 0 0 {name=p104 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 770 -130 0 0 {name=p105 sig_type=std_logic lab=VSS}
C {/foss/designs/core_pga/inverter/inverter.sym} 720 -160 0 0 {name=x19}
C {lab_wire.sym} 1070 -210 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_wire.sym} 1410 -210 0 1 {name=p2 sig_type=std_logic lab=out}
C {iopin.sym} 290 -280 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 220 -280 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 290 -320 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 220 -320 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {ipin.sym} 230 -170 0 0 {name=p5 lab=clk}
C {lab_pin.sym} 290 -170 0 1 {name=p15 sig_type=std_logic lab=clk}
C {iopin.sym} 290 -240 0 0 {name=p6 lab=in}
C {lab_wire.sym} 220 -240 0 0 {name=p7 sig_type=std_logic lab=in}
C {iopin.sym} 290 -200 0 0 {name=p10 lab=out}
C {lab_wire.sym} 220 -200 0 0 {name=p11 sig_type=std_logic lab=out}
C {symbols/cap_mim_2f0fF.sym} 1350 -210 1 0 {name=C8
W=11e-6
L=11e-6
model=cap_mim_2f0fF
spiceprefix=X
m=4}
