v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1540 -1400 1540 -1340 {lab=#net1}
N 1540 -1340 1820 -1340 {lab=#net1}
N 1820 -1400 1820 -1340 {lab=#net1}
N 1440 -1430 1500 -1430 {lab=Vin1}
N 1680 -1140 1680 -1080 {lab=VSS}
N 1680 -1170 1700 -1170 {lab=VSS}
N 1860 -1430 2060 -1430 {lab=Vref}
N 2100 -1400 2100 -1340 {lab=#net2}
N 2100 -1340 2380 -1340 {lab=#net2}
N 2380 -1400 2380 -1340 {lab=#net2}
N 2240 -1140 2240 -1080 {lab=VSS}
N 2240 -1170 2260 -1170 {lab=VSS}
N 1700 -1170 1700 -1080 {lab=VSS}
N 2260 -1170 2260 -1080 {lab=VSS}
N 2420 -1430 2480 -1430 {lab=Vin2}
N 1540 -1620 1540 -1580 {lab=Vcmfb}
N 1540 -1580 1640 -1580 {lab=Vcmfb}
N 1580 -1650 1700 -1650 {lab=Vcmfb}
N 1640 -1650 1640 -1580 {lab=Vcmfb}
N 1540 -1580 1540 -1460 {lab=Vcmfb}
N 1540 -1740 1540 -1680 {lab=VDD}
N 1820 -1740 1820 -1460 {lab=VDD}
N 2100 -1740 2100 -1460 {lab=VDD}
N 2380 -1520 2380 -1460 {lab=Vcmfb}
N 1540 -1520 2380 -1520 {lab=Vcmfb}
N 1540 -1430 1600 -1430 {lab=VSS}
N 1760 -1430 1820 -1430 {lab=VSS}
N 2100 -1430 2160 -1430 {lab=VSS}
N 1520 -1650 1540 -1650 {lab=VDD}
N 1520 -1740 1520 -1650 {lab=VDD}
N 2320 -1430 2380 -1430 {lab=VSS}
N 1960 -1430 1960 -1340 {lab=Vref}
N 1440 -1170 1640 -1170 {lab=Ib}
N 1400 -1140 1400 -1080 {lab=VSS}
N 1380 -1170 1400 -1170 {lab=VSS}
N 1380 -1170 1380 -1080 {lab=VSS}
N 1320 -1080 2260 -1080 {lab=VSS}
N 1400 -1240 1500 -1240 {lab=Ib}
N 1500 -1240 1500 -1170 {lab=Ib}
N 1500 -1240 2140 -1240 {lab=Ib}
N 1680 -1340 1680 -1200 {lab=#net1}
N 2240 -1340 2240 -1200 {lab=#net2}
N 2140 -1240 2140 -1170 {lab=Ib}
N 2140 -1170 2200 -1170 {lab=Ib}
N 1400 -1300 1400 -1200 {lab=Ib}
N 1460 -1740 2100 -1740 {lab=VDD}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {symbols/pfet_03v3.sym} 1560 -1650 0 1 {name=M1
L=2u
W=14u
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
C {symbols/nfet_03v3.sym} 1520 -1430 0 0 {name=M2
L=2u
W=1.6u
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
C {symbols/nfet_03v3.sym} 1840 -1430 0 1 {name=M3
L=2u
W=1.6u
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
C {ipin.sym} 1440 -1430 0 0 {name=p8 lab=Vin1}
C {symbols/nfet_03v3.sym} 1660 -1170 0 0 {name=M6
L=2u
W=3.2u
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
C {symbols/nfet_03v3.sym} 2080 -1430 0 0 {name=M4
L=2u
W=1.6u
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
C {symbols/nfet_03v3.sym} 2400 -1430 0 1 {name=M5
L=2u
W=1.6u
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
C {symbols/nfet_03v3.sym} 2220 -1170 0 0 {name=M7
L=2u
W=3.2u
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
C {ipin.sym} 2480 -1430 0 1 {name=p1 lab=Vin2}
C {opin.sym} 1700 -1650 0 0 {name=p9 lab=Vcmfb}
C {lab_wire.sym} 1600 -1430 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1760 -1430 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2160 -1430 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2320 -1430 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {ipin.sym} 1960 -1340 3 0 {name=p5 lab=Vref}
C {ipin.sym} 1320 -1080 0 0 {name=p7 lab=VSS}
C {ipin.sym} 1400 -1300 1 0 {name=p10 lab=Ib}
C {ipin.sym} 1460 -1740 0 0 {name=p12 lab=VDD}
C {symbols/nfet_03v3.sym} 1420 -1170 0 1 {name=M8
L=2u
W=3.2u
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
