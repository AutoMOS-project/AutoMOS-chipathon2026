v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 880 -410 880 -350 {lab=#net1}
N 880 -350 1160 -350 {lab=#net1}
N 1160 -410 1160 -350 {lab=#net1}
N 780 -440 840 -440 {lab=vp}
N 1020 -150 1020 -90 {lab=VSS}
N 1020 -180 1040 -180 {lab=VSS}
N 1440 -410 1440 -350 {lab=#net2}
N 1440 -350 1720 -350 {lab=#net2}
N 1720 -410 1720 -350 {lab=#net2}
N 1580 -150 1580 -90 {lab=VSS}
N 1580 -180 1600 -180 {lab=VSS}
N 1040 -180 1040 -90 {lab=VSS}
N 1600 -180 1600 -90 {lab=VSS}
N 1760 -440 1820 -440 {lab=vn}
N 880 -590 880 -470 {lab=#net3}
N 1720 -530 1720 -470 {lab=#net4}
N 880 -440 940 -440 {lab=VSS}
N 1100 -440 1160 -440 {lab=VSS}
N 1440 -440 1500 -440 {lab=VSS}
N 780 -180 980 -180 {lab=Ib}
N 740 -150 740 -90 {lab=VSS}
N 720 -180 740 -180 {lab=VSS}
N 720 -180 720 -90 {lab=VSS}
N 660 -90 1600 -90 {lab=VSS}
N 740 -250 840 -250 {lab=Ib}
N 840 -250 840 -180 {lab=Ib}
N 840 -250 1480 -250 {lab=Ib}
N 1020 -350 1020 -210 {lab=#net1}
N 1580 -350 1580 -210 {lab=#net2}
N 1480 -250 1480 -180 {lab=Ib}
N 1480 -180 1540 -180 {lab=Ib}
N 740 -310 740 -210 {lab=Ib}
N 800 -750 1440 -750 {lab=VDD3V3}
N 940 -440 1100 -440 {lab=VSS}
N 1370 -440 1400 -440 {lab=Vcm}
N 1160 -540 1160 -470 {lab=Vbfb}
N 1160 -540 1440 -540 {lab=Vbfb}
N 1440 -540 1440 -470 {lab=Vbfb}
N 1200 -440 1370 -440 {lab=Vcm}
N 1310 -440 1310 -410 {lab=Vcm}
N 880 -630 880 -590 {lab=#net3}
N 880 -750 880 -690 {lab=VDD3V3}
N 800 -660 840 -660 {lab=#net3}
N 800 -660 800 -610 {lab=#net3}
N 800 -610 880 -610 {lab=#net3}
N 1640 -680 1680 -680 {lab=#net4}
N 1640 -680 1640 -630 {lab=#net4}
N 1640 -630 1720 -630 {lab=#net4}
N 1720 -650 1720 -530 {lab=#net4}
N 1440 -750 1720 -750 {lab=VDD3V3}
N 1720 -750 1720 -710 {lab=VDD3V3}
N 1310 -630 1310 -590 {lab=Vbfb}
N 1230 -660 1270 -660 {lab=Vbfb}
N 1230 -660 1230 -610 {lab=Vbfb}
N 1230 -610 1310 -610 {lab=Vbfb}
N 1310 -750 1310 -690 {lab=VDD3V3}
N 1310 -590 1310 -540 {lab=Vbfb}
N 1500 -440 1720 -440 {lab=VSS}
N 1720 -710 1720 -680 {lab=VDD3V3}
N 1310 -690 1310 -660 {lab=VDD3V3}
N 880 -690 880 -660 {lab=VDD3V3}
N 260 -450 320 -450 {lab=VSS}
N 250 -450 260 -450 {lab=VSS}
N 260 -410 320 -410 {lab=VDD3V3}
N 250 -410 260 -410 {lab=VDD3V3}
N 250 -370 310 -370 {lab=Ib}
N 250 -320 310 -320 {lab=Vcm}
N 250 -270 310 -270 {lab=Vbfb}
N 260 -540 320 -540 {lab=vp}
N 250 -540 260 -540 {lab=vp}
N 260 -500 320 -500 {lab=vn}
N 250 -500 260 -500 {lab=vn}
C {lab_pin.sym} 740 -310 0 0 {name=p31 sig_type=std_logic lab=Ib}
C {lab_pin.sym} 800 -750 0 0 {name=p18 sig_type=std_logic lab=VDD3V3}
C {symbols/pfet_03v3.sym} 860 -660 0 0 {name=M20
L=1u
W=3u
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
C {symbols/nfet_03v3.sym} 860 -440 0 0 {name=M21
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1180 -440 0 1 {name=M22
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1000 -180 0 0 {name=M23
L=1u
W=8u
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
C {symbols/nfet_03v3.sym} 1420 -440 0 0 {name=M24
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1740 -440 0 1 {name=M25
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1560 -180 0 0 {name=M26
L=1u
W=8u
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
C {lab_wire.sym} 1020 -440 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1570 -440 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 760 -180 0 1 {name=M27
L=1u
W=8u
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
C {lab_pin.sym} 1310 -410 0 0 {name=p17 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1230 -660 0 0 {name=p13 sig_type=std_logic lab=Vbfb}
C {symbols/pfet_03v3.sym} 1700 -680 0 0 {name=M17
L=1u
W=3u
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
C {symbols/pfet_03v3.sym} 1290 -660 0 0 {name=M18
L=1u
W=3u
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
C {lab_wire.sym} 660 -90 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1820 -440 0 1 {name=p58 sig_type=std_logic lab=vn}
C {lab_pin.sym} 780 -440 0 0 {name=p32 sig_type=std_logic lab=vp}
C {iopin.sym} 320 -450 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 250 -450 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 320 -410 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 250 -410 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {iopin.sym} 310 -370 0 0 {name=p42 lab=Ib}
C {lab_pin.sym} 250 -320 0 0 {name=p19 sig_type=std_logic lab=Vcm}
C {iopin.sym} 310 -320 0 0 {name=p24 lab=Vcm}
C {lab_pin.sym} 250 -370 0 0 {name=p1 sig_type=std_logic lab=Ib}
C {iopin.sym} 310 -270 0 0 {name=p3 lab=Vbfb}
C {lab_pin.sym} 250 -270 0 0 {name=p2 sig_type=std_logic lab=Vbfb}
C {iopin.sym} 320 -540 0 0 {name=p4 lab=vp}
C {iopin.sym} 320 -500 0 0 {name=p6 lab=vn}
C {lab_pin.sym} 250 -540 0 0 {name=p8 sig_type=std_logic lab=vp}
C {lab_pin.sym} 250 -500 0 0 {name=p5 sig_type=std_logic lab=vn}
