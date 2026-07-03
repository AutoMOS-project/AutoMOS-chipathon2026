v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1640 -1660 1640 -1500 {lab=#net1}
N 1920 -1660 1920 -1500 {lab=#net2}
N 1560 -1690 1600 -1690 {lab=Vin1}
N 1960 -1690 2000 -1690 {lab=Vin2}
N 1440 -1470 1600 -1470 {lab=#net1}
N 1540 -1540 1540 -1470 {lab=#net1}
N 1540 -1540 1640 -1540 {lab=#net1}
N 1640 -1440 1640 -1380 {lab=VSS}
N 1920 -1440 1920 -1380 {lab=VSS}
N 1400 -1440 1400 -1380 {lab=VSS}
N 1960 -1470 2120 -1470 {lab=#net2}
N 2020 -1540 2020 -1470 {lab=#net2}
N 1920 -1540 2020 -1540 {lab=#net2}
N 2160 -1440 2160 -1380 {lab=VSS}
N 1380 -1470 1400 -1470 {lab=VSS}
N 1380 -1470 1380 -1380 {lab=VSS}
N 1640 -1470 1660 -1470 {lab=VSS}
N 1660 -1470 1660 -1380 {lab=VSS}
N 1900 -1470 1920 -1470 {lab=VSS}
N 1900 -1470 1900 -1380 {lab=VSS}
N 2160 -1470 2180 -1470 {lab=VSS}
N 2180 -1470 2180 -1380 {lab=VSS}
N 1640 -1780 1640 -1720 {lab=#net3}
N 1640 -1780 1920 -1780 {lab=#net3}
N 1920 -1780 1920 -1720 {lab=#net3}
N 1700 -2070 1740 -2070 {lab=Vtail}
N 1780 -2160 1780 -2100 {lab=VDD}
N 1800 -2160 1800 -2070 {lab=VDD}
N 1860 -1690 1920 -1690 {lab=VDD}
N 1640 -1690 1700 -1690 {lab=VDD}
N 1780 -2070 1800 -2070 {lab=VDD}
N 2360 -1440 2360 -1380 {lab=VSS}
N 2360 -1470 2380 -1470 {lab=VSS}
N 2380 -1470 2380 -1380 {lab=VSS}
N 2360 -1690 2440 -1690 {lab=Vout2}
N 2020 -1540 2260 -1540 {lab=#net2}
N 2260 -1540 2260 -1470 {lab=#net2}
N 2260 -1470 2320 -1470 {lab=#net2}
N 1200 -1440 1200 -1380 {lab=VSS}
N 1180 -1470 1200 -1470 {lab=VSS}
N 1180 -1470 1180 -1380 {lab=VSS}
N 1180 -1380 1200 -1380 {lab=VSS}
N 1180 -2160 1200 -2160 {lab=VDD}
N 1120 -2160 1180 -2160 {lab=VDD}
N 1120 -1380 1180 -1380 {lab=VSS}
N 1120 -1690 1200 -1690 {lab=Vout1}
N 1200 -1380 2380 -1380 {lab=VSS}
N 1240 -1470 1300 -1470 {lab=#net1}
N 1300 -1540 1300 -1470 {lab=#net1}
N 1300 -1540 1540 -1540 {lab=#net1}
N 1200 -2160 2380 -2160 {lab=VDD}
N 1440 -2000 2320 -2000 {lab=#net4}
N 1380 -2000 1400 -2000 {lab=VDD}
N 2360 -2000 2380 -2000 {lab=VDD}
N 1400 -1970 1400 -1930 {lab=#net4}
N 1400 -1930 1500 -1930 {lab=#net4}
N 1500 -2000 1500 -1930 {lab=#net4}
N 1240 -1890 2120 -1890 {lab=#net5}
N 2160 -1890 2180 -1890 {lab=VDD}
N 2060 -1820 2160 -1820 {lab=#net5}
N 2060 -1890 2060 -1820 {lab=#net5}
N 1180 -1890 1200 -1890 {lab=VDD}
N 1400 -2160 1400 -2030 {lab=VDD}
N 1380 -2160 1380 -2000 {lab=VDD}
N 2360 -2160 2360 -2030 {lab=VDD}
N 2380 -2160 2380 -2000 {lab=VDD}
N 1200 -2160 1200 -1910 {lab=VDD}
N 1180 -2160 1180 -1890 {lab=VDD}
N 2160 -2160 2160 -1920 {lab=VDD}
N 2180 -2160 2180 -1890 {lab=VDD}
N 1780 -2040 1780 -1780 {lab=#net3}
N 1200 -1860 1200 -1500 {lab=Vout1}
N 1400 -1930 1400 -1500 {lab=#net4}
N 2360 -1970 2360 -1500 {lab=Vout2}
N 2160 -1860 2160 -1500 {lab=#net5}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=2 pages=2}
C {symbols/pfet_03v3.sym} 1420 -2000 0 1 {name=M2
L=10u
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
C {symbols/pfet_03v3.sym} 1760 -2070 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 2140 -1890 0 0 {name=M3
L=10u
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
C {symbols/pfet_03v3.sym} 1620 -1690 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 1940 -1690 0 1 {name=M5
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
C {symbols/nfet_03v3.sym} 1420 -1470 0 1 {name=M6
L=10u
W=10u
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
C {symbols/nfet_03v3.sym} 2140 -1470 0 0 {name=M7
L=10u
W=10u
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
C {symbols/nfet_03v3.sym} 1620 -1470 0 0 {name=M8
L=10u
W=10u
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
C {symbols/nfet_03v3.sym} 1940 -1470 0 1 {name=M9
L=10u
W=10u
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
C {ipin.sym} 1560 -1690 0 0 {name=p1 lab=Vin1}
C {ipin.sym} 2000 -1690 0 1 {name=p2 lab=Vin2}
C {ipin.sym} 1700 -2070 0 0 {name=p3 lab=Vtail}
C {ipin.sym} 1120 -1380 0 0 {name=p12 lab=VSS}
C {lab_wire.sym} 1860 -1690 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1700 -1690 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 2340 -2000 0 0 {name=M10
L=10u
W=5u
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
C {symbols/nfet_03v3.sym} 2340 -1470 0 0 {name=M11
L=10u
W=10u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {opin.sym} 2440 -1690 0 0 {name=p4 lab=Vout2}
C {ipin.sym} 1120 -2160 0 0 {name=p8 lab=VDD}
C {opin.sym} 1120 -1690 0 1 {name=p9 lab=Vout1}
C {symbols/nfet_03v3.sym} 1220 -1470 0 1 {name=M12
L=10u
W=10u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1220 -1890 0 1 {name=M13
L=10u
W=5u
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
