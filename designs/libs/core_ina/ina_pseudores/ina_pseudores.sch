v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1490 -1420 1550 -1420 {lab=VA}
N 1580 -1420 1580 -1400 {lab=VG}
N 1610 -1420 1690 -1420 {lab=VG}
N 1720 -1420 1720 -1400 {lab=VG}
N 1860 -1480 1860 -1460 {lab=#net1}
N 1860 -1420 1860 -1400 {lab=#net1}
N 1890 -1420 1970 -1420 {lab=#net1}
N 2000 -1480 2000 -1460 {lab=#net1}
N 2000 -1420 2000 -1400 {lab=#net1}
N 1750 -1420 1830 -1420 {lab=#net2}
N 2030 -1420 2090 -1420 {lab=Vb}
N 1720 -1480 1720 -1460 {lab=VG}
N 1860 -1480 2000 -1480 {lab=#net1}
N 1580 -1480 1720 -1480 {lab=VG}
N 1650 -1480 1650 -1420 {lab=VG}
N 1930 -1480 1930 -1420 {lab=#net1}
N 1860 -1400 1910 -1400 {lab=#net1}
N 1910 -1420 1910 -1400 {lab=#net1}
N 1950 -1400 2000 -1400 {lab=#net1}
N 1950 -1420 1950 -1400 {lab=#net1}
N 1580 -1400 1630 -1400 {lab=VG}
N 1630 -1420 1630 -1400 {lab=VG}
N 1670 -1400 1720 -1400 {lab=VG}
N 1670 -1420 1670 -1400 {lab=VG}
N 1540 -1480 1580 -1480 {lab=VG}
N 1580 -1480 1580 -1460 {lab=VG}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {ipin.sym} 1540 -1480 0 0 {name=p3 lab=VG}
C {iopin.sym} 1490 -1420 0 1 {name=p1 lab=VA}
C {iopin.sym} 2090 -1420 0 0 {name=p2 lab=VB}
C {symbols/nfet_03v3.sym} 1580 -1440 3 1 {name=MR1
L=5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 1720 -1440 1 0 {name=MR2
L=5u
W=0.5u
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
C {symbols/nfet_03v3.sym} 1860 -1440 3 1 {name=MR3
L=12u
W=0.5u
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
C {symbols/nfet_03v3.sym} 2000 -1440 1 0 {name=MR4
L=12u
W=0.5u
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
