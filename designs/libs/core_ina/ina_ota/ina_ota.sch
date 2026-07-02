v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1640 -1240 1640 -1080 {lab=#net1}
N 1920 -1240 1920 -1080 {lab=#net2}
N 1560 -1270 1600 -1270 {lab=Vin1}
N 1960 -1270 2000 -1270 {lab=Vin2}
N 1440 -1050 1600 -1050 {lab=#net1}
N 1540 -1120 1540 -1050 {lab=#net1}
N 1540 -1120 1640 -1120 {lab=#net1}
N 1640 -1020 1640 -960 {lab=VSS}
N 1920 -1020 1920 -960 {lab=VSS}
N 1400 -1020 1400 -960 {lab=VSS}
N 1960 -1050 2120 -1050 {lab=#net2}
N 2020 -1120 2020 -1050 {lab=#net2}
N 1920 -1120 2020 -1120 {lab=#net2}
N 2160 -1020 2160 -960 {lab=VSS}
N 1380 -1050 1400 -1050 {lab=VSS}
N 1380 -1050 1380 -960 {lab=VSS}
N 1640 -1050 1660 -1050 {lab=VSS}
N 1660 -1050 1660 -960 {lab=VSS}
N 1900 -1050 1920 -1050 {lab=VSS}
N 1900 -1050 1900 -960 {lab=VSS}
N 2160 -1050 2180 -1050 {lab=VSS}
N 2180 -1050 2180 -960 {lab=VSS}
N 1640 -1360 1640 -1300 {lab=#net3}
N 1640 -1360 1920 -1360 {lab=#net3}
N 1920 -1360 1920 -1300 {lab=#net3}
N 1700 -1630 1740 -1630 {lab=Vtail}
N 1780 -1720 1780 -1660 {lab=VDD}
N 1800 -1720 1800 -1630 {lab=VDD}
N 1380 -1540 1400 -1540 {lab=VDD}
N 2160 -1420 2180 -1420 {lab=VDD}
N 1860 -1270 1920 -1270 {lab=VDD}
N 1640 -1270 1700 -1270 {lab=VDD}
N 1780 -1630 1800 -1630 {lab=VDD}
N 2360 -1020 2360 -960 {lab=VSS}
N 2360 -1050 2380 -1050 {lab=VSS}
N 2380 -1050 2380 -960 {lab=VSS}
N 2360 -1540 2380 -1540 {lab=VDD}
N 2360 -1270 2440 -1270 {lab=Vout2}
N 2020 -1120 2260 -1120 {lab=#net2}
N 2260 -1120 2260 -1050 {lab=#net2}
N 2260 -1050 2320 -1050 {lab=#net2}
N 1200 -1020 1200 -960 {lab=VSS}
N 1180 -1050 1200 -1050 {lab=VSS}
N 1180 -1050 1180 -960 {lab=VSS}
N 1180 -960 1200 -960 {lab=VSS}
N 1180 -1420 1200 -1420 {lab=VDD}
N 1180 -1720 1200 -1720 {lab=VDD}
N 1120 -1720 1180 -1720 {lab=VDD}
N 1120 -960 1180 -960 {lab=VSS}
N 1120 -1270 1200 -1270 {lab=Vout1}
N 1200 -960 2380 -960 {lab=VSS}
N 1240 -1050 1300 -1050 {lab=#net1}
N 1300 -1120 1300 -1050 {lab=#net1}
N 1300 -1120 1540 -1120 {lab=#net1}
N 2160 -1390 2160 -1080 {lab=#net4}
N 1240 -1420 2120 -1420 {lab=#net4}
N 1200 -1390 1200 -1080 {lab=Vout1}
N 2060 -1350 2160 -1350 {lab=#net4}
N 2060 -1420 2060 -1350 {lab=#net4}
N 1440 -1540 2320 -1540 {lab=#net5}
N 1780 -1600 1780 -1360 {lab=#net3}
N 1200 -1720 2380 -1720 {lab=VDD}
N 1200 -1720 1200 -1450 {lab=VDD}
N 1180 -1720 1180 -1420 {lab=VDD}
N 2160 -1720 2160 -1450 {lab=VDD}
N 2180 -1720 2180 -1420 {lab=VDD}
N 1380 -1720 1380 -1540 {lab=VDD}
N 1400 -1720 1400 -1570 {lab=VDD}
N 1400 -1510 1400 -1080 {lab=#net5}
N 2360 -1720 2360 -1570 {lab=VDD}
N 2380 -1720 2380 -1540 {lab=VDD}
N 2360 -1510 2360 -1080 {lab=Vout2}
N 1400 -1470 1500 -1470 {lab=#net5}
N 1500 -1540 1500 -1470 {lab=#net5}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=2 pages=2}
C {symbols/pfet_03v3.sym} 1420 -1540 0 1 {name=M1
L=10u
W=60u
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
C {symbols/pfet_03v3.sym} 1760 -1630 0 0 {name=M2
L=10u
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
C {symbols/pfet_03v3.sym} 2140 -1420 0 0 {name=M3
L=10u
W=60u
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
C {symbols/pfet_03v3.sym} 1620 -1270 0 0 {name=M4
L=0.5u
W=5u
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
C {symbols/pfet_03v3.sym} 1940 -1270 0 1 {name=M5
L=0.5u
W=5u
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
C {symbols/nfet_03v3.sym} 1420 -1050 0 1 {name=M6
L=10u
W=20u
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
C {symbols/nfet_03v3.sym} 2140 -1050 0 0 {name=M7
L=10u
W=20u
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
C {symbols/nfet_03v3.sym} 1620 -1050 0 0 {name=M8
L=10u
W=20u
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
C {symbols/nfet_03v3.sym} 1940 -1050 0 1 {name=M9
L=10u
W=20u
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
C {ipin.sym} 1560 -1270 0 0 {name=p1 lab=Vin1}
C {ipin.sym} 2000 -1270 0 1 {name=p2 lab=Vin2}
C {ipin.sym} 1700 -1630 0 0 {name=p3 lab=Vtail}
C {ipin.sym} 1120 -960 0 0 {name=p12 lab=VSS}
C {lab_wire.sym} 1860 -1270 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1700 -1270 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 2340 -1540 0 0 {name=M10
L=10u
W=60u
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
C {symbols/nfet_03v3.sym} 2340 -1050 0 0 {name=M11
L=10u
W=20u
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
C {opin.sym} 2440 -1270 0 0 {name=p4 lab=Vout2}
C {ipin.sym} 1120 -1720 0 0 {name=p8 lab=VDD}
C {opin.sym} 1120 -1270 0 1 {name=p9 lab=Vout1}
C {symbols/nfet_03v3.sym} 1220 -1050 0 1 {name=M12
L=10u
W=20u
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
C {symbols/pfet_03v3.sym} 1220 -1420 0 1 {name=M13
L=10u
W=60u
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
