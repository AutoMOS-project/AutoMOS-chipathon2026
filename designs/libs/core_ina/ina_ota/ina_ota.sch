v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1480 -1140 1480 -980 {lab=#net1}
N 1760 -1140 1760 -980 {lab=#net2}
N 1400 -1170 1440 -1170 {lab=Vin1}
N 1800 -1170 1840 -1170 {lab=Vin2}
N 1280 -950 1440 -950 {lab=#net1}
N 1380 -1020 1380 -950 {lab=#net1}
N 1380 -1020 1480 -1020 {lab=#net1}
N 1480 -920 1480 -860 {lab=VSS}
N 1760 -920 1760 -860 {lab=VSS}
N 1240 -920 1240 -860 {lab=VSS}
N 1860 -1020 1860 -950 {lab=#net2}
N 1760 -1020 1860 -1020 {lab=#net2}
N 2000 -920 2000 -860 {lab=VSS}
N 1220 -950 1240 -950 {lab=VSS}
N 1220 -950 1220 -860 {lab=VSS}
N 1480 -950 1500 -950 {lab=VSS}
N 1500 -950 1500 -860 {lab=VSS}
N 1740 -950 1760 -950 {lab=VSS}
N 1740 -950 1740 -860 {lab=VSS}
N 2000 -950 2020 -950 {lab=VSS}
N 2020 -950 2020 -860 {lab=VSS}
N 1480 -1260 1480 -1200 {lab=#net3}
N 1480 -1260 1760 -1260 {lab=#net3}
N 1760 -1260 1760 -1200 {lab=#net3}
N 1540 -1550 1580 -1550 {lab=Vtail}
N 1620 -1640 1620 -1580 {lab=VDD}
N 1640 -1640 1640 -1550 {lab=VDD}
N 1700 -1170 1760 -1170 {lab=VDD}
N 1480 -1170 1540 -1170 {lab=VDD}
N 1620 -1550 1640 -1550 {lab=VDD}
N 2200 -920 2200 -860 {lab=VSS}
N 2200 -950 2220 -950 {lab=VSS}
N 2220 -950 2220 -860 {lab=VSS}
N 1860 -1020 2100 -1020 {lab=#net2}
N 2100 -1020 2100 -950 {lab=#net2}
N 2100 -950 2160 -950 {lab=#net2}
N 1040 -920 1040 -860 {lab=VSS}
N 1020 -950 1040 -950 {lab=VSS}
N 1020 -950 1020 -860 {lab=VSS}
N 1020 -860 1040 -860 {lab=VSS}
N 1020 -1640 1040 -1640 {lab=VDD}
N 960 -1640 1020 -1640 {lab=VDD}
N 1040 -860 2220 -860 {lab=VSS}
N 1080 -950 1140 -950 {lab=#net1}
N 1140 -1020 1140 -950 {lab=#net1}
N 1140 -1020 1380 -1020 {lab=#net1}
N 1040 -1640 2220 -1640 {lab=VDD}
N 1280 -1480 2160 -1480 {lab=#net4}
N 1220 -1480 1240 -1480 {lab=VDD}
N 2200 -1480 2220 -1480 {lab=VDD}
N 1240 -1450 1240 -1410 {lab=#net4}
N 1240 -1410 1340 -1410 {lab=#net4}
N 1340 -1480 1340 -1410 {lab=#net4}
N 1080 -1370 1960 -1370 {lab=#net5}
N 2000 -1370 2020 -1370 {lab=VDD}
N 1900 -1300 2000 -1300 {lab=#net5}
N 1900 -1370 1900 -1300 {lab=#net5}
N 1020 -1370 1040 -1370 {lab=VDD}
N 1240 -1640 1240 -1510 {lab=VDD}
N 1220 -1640 1220 -1480 {lab=VDD}
N 2200 -1640 2200 -1510 {lab=VDD}
N 2220 -1640 2220 -1480 {lab=VDD}
N 1040 -1640 1040 -1390 {lab=VDD}
N 1020 -1640 1020 -1370 {lab=VDD}
N 2000 -1640 2000 -1400 {lab=VDD}
N 2020 -1640 2020 -1370 {lab=VDD}
N 1620 -1520 1620 -1260 {lab=#net3}
N 1040 -1340 1040 -980 {lab=Vout2}
N 1240 -1410 1240 -980 {lab=#net4}
N 2200 -1450 2200 -980 {lab=Vout1}
N 2000 -1340 2000 -980 {lab=#net5}
N 1800 -950 1960 -950 {lab=#net2}
N 960 -1170 1040 -1170 {lab=Vout2}
N 2200 -1170 2280 -1170 {lab=Vout1}
N 940 -860 1020 -860 {lab=VSS}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=2 pages=2}
C {symbols/pfet_03v3.sym} 1260 -1480 0 1 {name=M2
L=4u
W=0.42u
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
C {symbols/pfet_03v3.sym} 1600 -1550 0 0 {name=M1
L=2u
W=8u
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
C {symbols/pfet_03v3.sym} 1980 -1370 0 0 {name=M3
L=4u
W=0.42u
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
C {symbols/pfet_03v3.sym} 1460 -1170 0 0 {name=M4
L=0.28u
W=17u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1780 -1170 0 1 {name=M5
L=0.28u
W=17u
nf=1
m=10
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1260 -950 0 1 {name=M6
L=4u
W=2.8u
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
C {symbols/nfet_03v3.sym} 1980 -950 0 0 {name=M7
L=4u
W=2.8u
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
C {symbols/nfet_03v3.sym} 1460 -950 0 0 {name=M8
L=4u
W=2.8u
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
C {symbols/nfet_03v3.sym} 1780 -950 0 1 {name=M9
L=4u
W=2.8u
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
C {ipin.sym} 1400 -1170 0 0 {name=p1 lab=Vin1}
C {ipin.sym} 1840 -1170 0 1 {name=p2 lab=Vin2}
C {ipin.sym} 1540 -1550 0 0 {name=p3 lab=Vtail}
C {ipin.sym} 940 -860 0 0 {name=p12 lab=VSS}
C {lab_wire.sym} 1700 -1170 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1540 -1170 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 2180 -1480 0 0 {name=M10
L=4u
W=0.42u
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
C {symbols/nfet_03v3.sym} 2180 -950 0 0 {name=M11
L=4u
W=2.8u
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
C {opin.sym} 2280 -1170 0 0 {name=p4 lab=Vout1}
C {ipin.sym} 960 -1640 0 0 {name=p8 lab=VDD}
C {opin.sym} 960 -1170 0 1 {name=p9 lab=Vout2}
C {symbols/nfet_03v3.sym} 1060 -950 0 1 {name=M12
L=4u
W=2.8u
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
C {symbols/pfet_03v3.sym} 1060 -1370 0 1 {name=M13
L=4u
W=0.42u
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
