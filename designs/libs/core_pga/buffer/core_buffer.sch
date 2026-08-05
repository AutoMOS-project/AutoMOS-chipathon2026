v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1300 -840 1300 -790 {lab=VDD3V3}
N 1300 -840 1540 -840 {lab=VDD3V3}
N 1540 -840 1540 -790 {lab=VDD3V3}
N 1340 -760 1500 -760 {lab=#net1}
N 1300 -790 1300 -760 {lab=VDD3V3}
N 1540 -790 1540 -760 {lab=VDD3V3}
N 1300 -730 1300 -640 {lab=#net1}
N 1540 -730 1540 -650 {lab=out}
N 1540 -650 1540 -640 {lab=out}
N 1300 -700 1400 -700 {lab=#net1}
N 1400 -760 1400 -700 {lab=#net1}
N 1220 -610 1260 -610 {lab=in}
N 1580 -610 1630 -610 {lab=out}
N 1300 -580 1300 -530 {lab=#net2}
N 1300 -530 1540 -530 {lab=#net2}
N 1540 -580 1540 -530 {lab=#net2}
N 1420 -880 1420 -840 {lab=VDD3V3}
N 1430 -530 1430 -500 {lab=#net2}
N 1430 -440 1430 -410 {lab=VSS}
N 1540 -690 1630 -690 {lab=out}
N 1630 -690 1630 -610 {lab=out}
N 1630 -690 1690 -690 {lab=out}
N 1300 -610 1540 -610 {lab=VSS}
N 1430 -640 1430 -610 {lab=VSS}
N 1330 -470 1390 -470 {lab=Vb_i1u}
N 1430 -470 1430 -440 {lab=VSS}
N 840 -620 900 -620 {lab=out}
N 850 -680 910 -680 {lab=VSS}
N 840 -680 850 -680 {lab=VSS}
N 850 -720 910 -720 {lab=VDD3V3}
N 840 -720 850 -720 {lab=VDD3V3}
N 850 -650 910 -650 {lab=in}
N 840 -580 900 -580 {lab=Vb_i1u}
C {symbols/pfet_03v3.sym} 1320 -760 0 1 {name=M42
L=1u
W=1u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1280 -610 0 0 {name=M44
L=1u
W=1u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1430 -410 0 1 {name=p41 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1420 -880 0 0 {name=p10 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 1430 -640 0 1 {name=p55 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 1410 -470 0 0 {name=M46
L=1u
W=1u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1690 -690 0 1 {name=p36 sig_type=std_logic lab=out}
C {lab_pin.sym} 1220 -610 0 0 {name=p38 sig_type=std_logic lab=in}
C {opin.sym} 900 -620 0 0 {name=p44 lab=out}
C {lab_pin.sym} 840 -620 0 0 {name=p45 sig_type=std_logic lab=out}
C {iopin.sym} 910 -680 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 840 -680 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 910 -720 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 840 -720 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {ipin.sym} 850 -650 0 0 {name=p5 lab=in}
C {lab_pin.sym} 910 -650 0 1 {name=p15 sig_type=std_logic lab=in}
C {lab_pin.sym} 840 -580 0 0 {name=p30 sig_type=std_logic lab=Vb_i1u}
C {iopin.sym} 900 -580 0 0 {name=p42 lab=Vb_i1u}
C {lab_pin.sym} 1330 -470 0 0 {name=p1 sig_type=std_logic lab=Vb_i1u}
C {symbols/pfet_03v3.sym} 1520 -760 0 0 {name=M1
L=1u
W=1u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1560 -610 0 1 {name=M2
L=1u
W=1u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
