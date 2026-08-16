v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 690 -670 1010 -670 {lab=VDD3V3}
N 690 -740 690 -700 {lab=#net1}
N 690 -740 1010 -740 {lab=#net1}
N 1010 -740 1010 -700 {lab=#net1}
N 840 -790 840 -740 {lab=#net1}
N 840 -900 840 -850 {lab=VDD3V3}
N 610 -670 650 -670 {lab=vp}
N 1050 -670 1090 -670 {lab=vn}
N 1350 -1220 1350 -1160 {lab=VDD3V3}
N 1350 -1220 1600 -1220 {lab=VDD3V3}
N 1600 -1220 1600 -1160 {lab=VDD3V3}
N 1010 -640 1010 -560 {lab=#net2}
N 1010 -560 1600 -560 {lab=#net2}
N 690 -640 690 -480 {lab=#net3}
N 690 -480 1350 -480 {lab=#net3}
N 1350 -490 1350 -420 {lab=#net3}
N 1350 -680 1350 -490 {lab=#net3}
N 1600 -570 1600 -420 {lab=#net2}
N 1600 -680 1600 -570 {lab=#net2}
N 1350 -270 1600 -270 {lab=VSS}
N 1350 -360 1350 -270 {lab=VSS}
N 1600 -360 1600 -270 {lab=VSS}
N 840 -710 840 -670 {lab=VDD3V3}
N 1480 -270 1480 -240 {lab=VSS}
N 1470 -1270 1470 -1220 {lab=VDD3V3}
N 760 -820 800 -820 {lab=VDD2V2}
N 840 -850 840 -820 {lab=VDD3V3}
N 1600 -390 1600 -360 {lab=VSS}
N 1390 -390 1560 -390 {lab=VDD0V9}
N 1350 -390 1350 -360 {lab=VSS}
N 1480 -390 1480 -350 {lab=VDD0V9}
N 1240 -710 1350 -710 {lab=VSS}
N 1600 -710 1720 -710 {lab=VSS}
N 1240 -710 1240 -280 {lab=VSS}
N 1240 -280 1240 -270 {lab=VSS}
N 1240 -270 1350 -270 {lab=VSS}
N 1720 -710 1720 -270 {lab=VSS}
N 1600 -270 1720 -270 {lab=VSS}
N 1390 -710 1560 -710 {lab=VDD1V2}
N 1480 -710 1480 -670 {lab=VDD1V2}
N 1600 -870 1600 -740 {lab=out}
N 1350 -870 1350 -740 {lab=#net4}
N 1390 -900 1560 -900 {lab=#net4}
N 1350 -830 1430 -830 {lab=#net4}
N 1430 -900 1430 -830 {lab=#net4}
N 1390 -1060 1560 -1060 {lab=#net5}
N 1350 -990 1430 -990 {lab=#net5}
N 1430 -1060 1430 -990 {lab=#net5}
N 1350 -1030 1350 -930 {lab=#net5}
N 1600 -1030 1600 -930 {lab=#net6}
N 1350 -1160 1350 -1090 {lab=VDD3V3}
N 1600 -1160 1600 -1090 {lab=VDD3V3}
N 1270 -1060 1350 -1060 {lab=VDD3V3}
N 1270 -1220 1270 -1060 {lab=VDD3V3}
N 1270 -1220 1350 -1220 {lab=VDD3V3}
N 1270 -1060 1270 -900 {lab=VDD3V3}
N 1270 -900 1350 -900 {lab=VDD3V3}
N 1600 -1060 1680 -1060 {lab=VDD3V3}
N 1680 -1220 1680 -1060 {lab=VDD3V3}
N 1680 -1060 1680 -900 {lab=VDD3V3}
N 1600 -900 1680 -900 {lab=VDD3V3}
N 1600 -1220 1680 -1220 {lab=VDD3V3}
N 1600 -790 1640 -790 {lab=out}
N 200 -1080 240 -1080 {lab=VDD3V3}
N 200 -1040 240 -1040 {lab=VDD2V2}
N 200 -1000 240 -1000 {lab=VDD1V2}
N 200 -960 240 -960 {lab=VDD0V9}
N 200 -920 250 -920 {lab=vp}
N 200 -880 250 -880 {lab=vn}
N 200 -1120 240 -1120 {lab=VSS}
N 190 -840 250 -840 {lab=xxx}
C {symbols/pfet_03v3.sym} 670 -670 0 0 {name=M1
L=1u
W=1.7u
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
C {lab_pin.sym} 840 -710 0 0 {name=p2 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 840 -900 0 0 {name=p1 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 610 -670 0 0 {name=p4 sig_type=std_logic lab=vp}
C {lab_pin.sym} 1470 -1270 0 0 {name=p6 sig_type=std_logic lab=VDD3V3}
C {symbols/pfet_03v3.sym} 1030 -670 0 1 {name=M2
L=1u
W=1.7u
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
C {symbols/pfet_03v3.sym} 820 -820 0 0 {name=M3
L=2u
W=2.6u
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
C {lab_pin.sym} 760 -820 0 0 {name=p8 sig_type=std_logic lab=VDD2V2}
C {symbols/nfet_03v3.sym} 1370 -390 0 1 {name=M5
L=1u
W=1.2u
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
C {lab_pin.sym} 1480 -350 0 0 {name=p10 sig_type=std_logic lab=VDD0V9}
C {symbols/nfet_03v3.sym} 1580 -390 0 0 {name=M4
L=1u
W=1.2u
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
C {symbols/nfet_03v3.sym} 1370 -710 0 1 {name=M6
L=1u
W=1.2u
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
C {symbols/nfet_03v3.sym} 1580 -710 0 0 {name=M7
L=1u
W=1.2u
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
C {lab_pin.sym} 1480 -670 0 0 {name=p12 sig_type=std_logic lab=VDD1V2}
C {symbols/pfet_03v3.sym} 1370 -1060 0 1 {name=M10
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 1580 -1060 0 0 {name=M11
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 1370 -900 0 1 {name=M8
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 1580 -900 0 0 {name=M9
L=1u
W=4u
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
C {lab_pin.sym} 1640 -790 0 1 {name=p3 sig_type=std_logic lab=out}
C {lab_pin.sym} 1090 -670 0 1 {name=p14 sig_type=std_logic lab=vn}
C {iopin.sym} 240 -1080 0 0 {name=p5 lab=VDD3V3}
C {lab_pin.sym} 200 -1080 0 0 {name=p7 sig_type=std_logic lab=VDD3V3}
C {iopin.sym} 240 -1040 0 0 {name=p9 lab=VDD2V2}
C {lab_pin.sym} 200 -1040 0 0 {name=p11 sig_type=std_logic lab=VDD2V2}
C {iopin.sym} 240 -1000 0 0 {name=p13 lab=VDD1V2}
C {lab_pin.sym} 200 -1000 0 0 {name=p15 sig_type=std_logic lab=VDD1V2}
C {iopin.sym} 240 -960 0 0 {name=p16 lab=VDD0V9}
C {lab_pin.sym} 200 -960 0 0 {name=p17 sig_type=std_logic lab=VDD0V9}
C {ipin.sym} 200 -920 0 0 {name=p18 lab=vp}
C {lab_pin.sym} 250 -920 0 1 {name=p19 sig_type=std_logic lab=vp}
C {ipin.sym} 200 -880 0 0 {name=p20 lab=vn}
C {lab_pin.sym} 250 -880 0 1 {name=p21 sig_type=std_logic lab=vn}
C {iopin.sym} 240 -1120 0 0 {name=p22 lab=VSS}
C {lab_pin.sym} 200 -1120 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1480 -240 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {opin.sym} 250 -840 0 0 {name=p25 lab=out}
C {lab_pin.sym} 190 -840 0 0 {name=p26 sig_type=std_logic lab=out}
