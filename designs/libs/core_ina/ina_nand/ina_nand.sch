v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1480 -1730 1540 -1730 {lab=Vin2}
N 1580 -1700 1580 -1580 {lab=Vout}
N 1580 -1520 1580 -1460 {lab=#net1}
N 1480 -1430 1540 -1430 {lab=Vin2}
N 1480 -1730 1480 -1430 {lab=Vin2}
N 1340 -1730 1360 -1730 {lab=VDD3V3}
N 1240 -1730 1300 -1730 {lab=Vin1}
N 1240 -1730 1240 -1550 {lab=Vin1}
N 1340 -1700 1340 -1640 {lab=Vout}
N 1340 -1640 1580 -1640 {lab=Vout}
N 1180 -1550 1540 -1550 {lab=Vin1}
N 1180 -1430 1480 -1430 {lab=Vin2}
N 1340 -1820 1340 -1760 {lab=VDD3V3}
N 1360 -1820 1360 -1730 {lab=VDD3V3}
N 1580 -1730 1600 -1730 {lab=VDD3V3}
N 1600 -1820 1600 -1730 {lab=VDD3V3}
N 1280 -1820 1600 -1820 {lab=VDD3V3}
N 1580 -1820 1580 -1760 {lab=VDD3V3}
N 1580 -1400 1580 -1340 {lab=VSS}
N 1500 -1340 1600 -1340 {lab=VSS}
N 1580 -1550 1600 -1550 {lab=VSS}
N 1600 -1550 1600 -1340 {lab=VSS}
N 1580 -1430 1600 -1430 {lab=VSS}
N 1580 -1640 1660 -1640 {lab=Vout}
C {title-2.sym} 0 -10 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {symbols/pfet_03v3.sym} 1320 -1730 0 0 {name=MN1
L=0.28u
W=2u
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
C {symbols/pfet_03v3.sym} 1560 -1730 0 0 {name=MN2
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 1560 -1550 0 0 {name=MN3
L=0.28u
W=2u
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
C {symbols/nfet_03v3.sym} 1560 -1430 0 0 {name=MN4
L=0.28u
W=2u
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
C {ipin.sym} 1280 -1820 0 0 {name=p8 lab=VDD3V3}
C {ipin.sym} 1180 -1550 0 0 {name=p1 lab=Vin1}
C {ipin.sym} 1180 -1430 0 0 {name=p2 lab=Vin2}
C {ipin.sym} 1500 -1340 0 0 {name=p12 lab=VSS}
C {opin.sym} 1660 -1640 0 0 {name=p4 lab=Vout}
