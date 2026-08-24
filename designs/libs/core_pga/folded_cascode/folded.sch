v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 610 -550 930 -550 {lab=VDD3V3}
N 610 -620 610 -580 {lab=#net1}
N 610 -620 930 -620 {lab=#net1}
N 930 -620 930 -580 {lab=#net1}
N 760 -670 760 -620 {lab=#net1}
N 760 -780 760 -730 {lab=VDD3V3}
N 530 -550 570 -550 {lab=inp}
N 970 -550 1010 -550 {lab=inn}
N 1270 -1100 1270 -1040 {lab=VDD3V3}
N 1270 -1100 1520 -1100 {lab=VDD3V3}
N 1520 -1100 1520 -1040 {lab=VDD3V3}
N 930 -520 930 -440 {lab=#net2}
N 930 -440 1520 -440 {lab=#net2}
N 610 -520 610 -360 {lab=#net3}
N 610 -360 1270 -360 {lab=#net3}
N 1270 -370 1270 -300 {lab=#net3}
N 1270 -560 1270 -370 {lab=#net3}
N 1520 -450 1520 -300 {lab=#net2}
N 1520 -560 1520 -450 {lab=#net2}
N 1270 -150 1520 -150 {lab=VSS}
N 1270 -240 1270 -150 {lab=VSS}
N 1520 -240 1520 -150 {lab=VSS}
N 760 -590 760 -550 {lab=VDD3V3}
N 1400 -150 1400 -120 {lab=VSS}
N 1400 -1150 1400 -1100 {lab=VDD3V3}
N 1310 -270 1480 -270 {lab=Vbsnk}
N 1400 -270 1400 -230 {lab=Vbsnk}
N 1160 -590 1270 -590 {lab=VSS}
N 1520 -590 1640 -590 {lab=VSS}
N 1160 -590 1160 -160 {lab=VSS}
N 1160 -160 1160 -150 {lab=VSS}
N 1160 -150 1270 -150 {lab=VSS}
N 1640 -590 1640 -150 {lab=VSS}
N 1520 -150 1640 -150 {lab=VSS}
N 1310 -590 1480 -590 {lab=Vb0V94}
N 1400 -590 1400 -550 {lab=Vb0V94}
N 1520 -750 1520 -620 {lab=outp}
N 1270 -750 1270 -620 {lab=outn}
N 1310 -780 1480 -780 {lab=Vb1V3}
N 1400 -780 1400 -710 {lab=Vb1V3}
N 1270 -910 1270 -810 {lab=#net4}
N 1520 -910 1520 -810 {lab=#net5}
N 1190 -1100 1190 -940 {lab=VDD3V3}
N 1190 -1100 1270 -1100 {lab=VDD3V3}
N 1190 -940 1190 -780 {lab=VDD3V3}
N 1190 -780 1270 -780 {lab=VDD3V3}
N 1600 -1100 1600 -940 {lab=VDD3V3}
N 1600 -940 1600 -780 {lab=VDD3V3}
N 1520 -780 1600 -780 {lab=VDD3V3}
N 1520 -1100 1600 -1100 {lab=VDD3V3}
N 1240 -670 1270 -670 {lab=outn}
N 1520 -670 1560 -670 {lab=outp}
N 1270 -1040 1270 -970 {lab=VDD3V3}
N 1520 -1040 1520 -970 {lab=VDD3V3}
N 690 -700 720 -700 {lab=Vbtail}
N 760 -730 760 -700 {lab=VDD3V3}
N 1270 -270 1270 -240 {lab=VSS}
N 1520 -270 1520 -240 {lab=VSS}
N 1520 -940 1600 -940 {lab=VDD3V3}
N 1190 -940 1270 -940 {lab=VDD3V3}
N 1310 -940 1480 -940 {lab=Vbfb}
N 1400 -940 1400 -900 {lab=Vbfb}
N 170 -620 230 -620 {lab=outp}
N 170 -580 230 -580 {lab=outn}
N 180 -530 240 -530 {lab=VSS}
N 170 -530 180 -530 {lab=VSS}
N 180 -490 240 -490 {lab=VDD3V3}
N 170 -490 180 -490 {lab=VDD3V3}
N 170 -450 230 -450 {lab=inp}
N 170 -410 230 -410 {lab=inn}
N 170 -330 230 -330 {lab=Vb1V3}
N 170 -290 230 -290 {lab=Vb0V94}
N 170 -210 230 -210 {lab=Vcm}
N 170 -370 230 -370 {lab=Vbfb}
N 170 -250 230 -250 {lab=Vbsnk}
N 170 -170 230 -170 {lab=Vbtail}
C {symbols/pfet_03v3.sym} 590 -550 0 0 {name=M1
L=1u
W=10u
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
C {lab_pin.sym} 760 -590 0 0 {name=p2 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 760 -780 0 0 {name=p1 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 1400 -1150 0 0 {name=p6 sig_type=std_logic lab=VDD3V3}
C {symbols/pfet_03v3.sym} 950 -550 0 1 {name=M2
L=1u
W=10u
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
C {symbols/nfet_03v3.sym} 1290 -590 0 1 {name=M6
L=1u
W=4u
nf=4
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
C {symbols/nfet_03v3.sym} 1500 -590 0 0 {name=M7
L=1u
W=4u
nf=4
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
C {symbols/pfet_03v3.sym} 1290 -780 0 1 {name=M8
L=1u
W=4u
nf=4
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
C {symbols/pfet_03v3.sym} 1500 -780 0 0 {name=M9
L=1u
W=4u
nf=4
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
C {symbols/pfet_03v3.sym} 740 -700 0 0 {name=M3
L=1u
W=32u
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
C {lab_pin.sym} 690 -700 0 0 {name=p8 sig_type=std_logic lab=Vbtail}
C {symbols/nfet_03v3.sym} 1290 -270 0 1 {name=M4
L=1u
W=9u
nf=4
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
C {symbols/nfet_03v3.sym} 1500 -270 0 0 {name=M5
L=1u
W=9u
nf=4
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
C {symbols/pfet_03v3.sym} 1290 -940 0 1 {name=M10
L=1u
W=4u
nf=4
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
C {symbols/pfet_03v3.sym} 1500 -940 0 0 {name=M11
L=1u
W=4u
nf=4
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
C {lab_pin.sym} 1400 -900 0 0 {name=p25 sig_type=std_logic lab=Vbfb}
C {lab_pin.sym} 1400 -230 0 0 {name=p11 sig_type=std_logic lab=Vbsnk}
C {lab_wire.sym} 1400 -120 0 1 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 530 -550 0 0 {name=p12 sig_type=std_logic lab=inp}
C {lab_pin.sym} 1010 -550 0 1 {name=p14 sig_type=std_logic lab=inn}
C {lab_pin.sym} 1400 -710 0 0 {name=p4 sig_type=std_logic lab=Vb1V3}
C {lab_pin.sym} 1400 -550 0 0 {name=p16 sig_type=std_logic lab=Vb0V94}
C {lab_pin.sym} 1560 -670 0 1 {name=p23 sig_type=std_logic lab=outp}
C {lab_pin.sym} 1240 -670 0 0 {name=p7 sig_type=std_logic lab=outn}
C {opin.sym} 230 -620 0 0 {name=p44 lab=outp}
C {lab_pin.sym} 170 -620 0 0 {name=p45 sig_type=std_logic lab=outp}
C {opin.sym} 230 -580 0 0 {name=p46 lab=outn}
C {lab_pin.sym} 170 -580 0 0 {name=p47 sig_type=std_logic lab=outn}
C {iopin.sym} 240 -530 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 170 -530 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 240 -490 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 170 -490 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {ipin.sym} 170 -450 0 0 {name=p5 lab=inp}
C {ipin.sym} 170 -410 0 0 {name=p10 lab=inn}
C {lab_pin.sym} 230 -450 0 1 {name=p15 sig_type=std_logic lab=inp}
C {lab_pin.sym} 230 -410 0 1 {name=p21 sig_type=std_logic lab=inn}
C {lab_pin.sym} 170 -330 0 0 {name=p22 sig_type=std_logic lab=Vb1V3}
C {lab_pin.sym} 170 -290 0 0 {name=p52 sig_type=std_logic lab=Vb0V94}
C {iopin.sym} 230 -330 0 0 {name=p53 lab=Vb1V3}
C {iopin.sym} 230 -290 0 0 {name=p54 lab=Vb0V94}
C {lab_pin.sym} 170 -210 0 0 {name=p19 sig_type=std_logic lab=Vcm}
C {iopin.sym} 230 -210 0 0 {name=p24 lab=Vcm}
C {iopin.sym} 230 -370 0 0 {name=p9 lab=Vbfb}
C {lab_pin.sym} 170 -370 0 0 {name=p3 sig_type=std_logic lab=Vbfb}
C {iopin.sym} 230 -250 0 0 {name=p13 lab=Vbsnk}
C {lab_pin.sym} 170 -250 0 0 {name=p18 sig_type=std_logic lab=Vbsnk}
C {iopin.sym} 230 -170 0 0 {name=p20 lab=Vbtail}
C {lab_pin.sym} 170 -170 0 0 {name=p26 sig_type=std_logic lab=Vbtail}
