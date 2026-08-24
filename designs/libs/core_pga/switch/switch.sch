v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1130 -480 1130 -390 {lab=VDD3V3}
N 1130 -340 1130 -250 {lab=VSS}
N 1130 -560 1130 -520 {lab=clkb}
N 1130 -210 1130 -170 {lab=clk}
N 1030 -250 1100 -250 {lab=in}
N 1030 -480 1030 -250 {lab=in}
N 1030 -480 1100 -480 {lab=in}
N 1160 -480 1230 -480 {lab=out}
N 1230 -480 1230 -250 {lab=out}
N 1160 -250 1230 -250 {lab=out}
N 590 -390 650 -390 {lab=VSS}
N 580 -390 590 -390 {lab=VSS}
N 590 -430 650 -430 {lab=VDD3V3}
N 580 -430 590 -430 {lab=VDD3V3}
N 590 -280 650 -280 {lab=clk}
N 590 -240 650 -240 {lab=clkb}
N 590 -350 650 -350 {lab=in}
N 580 -350 590 -350 {lab=in}
N 940 -360 1030 -360 {lab=in}
N 1230 -360 1320 -360 {lab=out}
N 590 -310 650 -310 {lab=out}
N 580 -310 590 -310 {lab=out}
N 1550 -490 1580 -490 {lab=VDD3V3}
N 1550 -560 1550 -490 {lab=VDD3V3}
N 1550 -560 1620 -560 {lab=VDD3V3}
N 1620 -560 1620 -520 {lab=VDD3V3}
N 1620 -520 1620 -490 {lab=VDD3V3}
N 1620 -460 1620 -430 {lab=VDD3V3}
N 1550 -430 1620 -430 {lab=VDD3V3}
N 1550 -490 1550 -430 {lab=VDD3V3}
N 1630 -370 1630 -320 {lab=VSS}
N 1550 -370 1630 -370 {lab=VSS}
N 1550 -370 1550 -290 {lab=VSS}
N 1550 -290 1590 -290 {lab=VSS}
N 1630 -260 1630 -230 {lab=VSS}
N 1550 -230 1630 -230 {lab=VSS}
N 1550 -290 1550 -230 {lab=VSS}
N 1630 -290 1630 -260 {lab=VSS}
C {symbols/pfet_03v3.sym} 1130 -500 1 0 {name=M5
L=0.36u
W=4.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1130 -230 1 1 {name=M7
L=0.36u
W=1.3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1130 -390 0 1 {name=p8 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 1130 -340 0 1 {name=p9 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1130 -560 0 0 {name=p33 sig_type=std_logic lab=clkb}
C {lab_wire.sym} 1130 -170 0 0 {name=p1 sig_type=std_logic lab=clk}
C {iopin.sym} 650 -390 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 580 -390 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 650 -430 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 580 -430 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {ipin.sym} 590 -280 0 0 {name=p5 lab=clk}
C {lab_pin.sym} 650 -280 0 1 {name=p15 sig_type=std_logic lab=clk}
C {ipin.sym} 590 -240 0 0 {name=p2 lab=clkb}
C {lab_pin.sym} 650 -240 0 1 {name=p3 sig_type=std_logic lab=clkb}
C {iopin.sym} 650 -350 0 0 {name=p4 lab=in}
C {lab_wire.sym} 580 -350 0 0 {name=p6 sig_type=std_logic lab=in}
C {lab_wire.sym} 940 -360 0 0 {name=p7 sig_type=std_logic lab=in}
C {iopin.sym} 650 -310 0 0 {name=p10 lab=out}
C {lab_wire.sym} 580 -310 0 0 {name=p11 sig_type=std_logic lab=out}
C {lab_wire.sym} 1320 -360 0 1 {name=p12 sig_type=std_logic lab=out}
C {symbols/pfet_03v3.sym} 1600 -490 0 0 {name=M1
L=0.36u
W=4.5u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1620 -560 0 1 {name=p13 sig_type=std_logic lab=VDD3V3}
C {symbols/nfet_03v3.sym} 1610 -290 0 0 {name=M2
L=0.36u
W=1.3u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1550 -370 0 0 {name=p14 sig_type=std_logic lab=VSS}
