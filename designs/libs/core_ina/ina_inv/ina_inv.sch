v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1700 -1260 1700 -1140 {lab=Vout}
N 1600 -1290 1660 -1290 {lab=Vin}
N 1600 -1290 1600 -1110 {lab=Vin}
N 1600 -1110 1660 -1110 {lab=Vin}
N 1700 -1380 1700 -1320 {lab=VDD3V3}
N 1700 -1290 1720 -1290 {lab=VDD3V3}
N 1720 -1380 1720 -1290 {lab=VDD3V3}
N 1620 -1380 1720 -1380 {lab=VDD3V3}
N 1700 -1200 1780 -1200 {lab=Vout}
N 1520 -1200 1600 -1200 {lab=Vin}
N 1700 -1080 1700 -1020 {lab=VSS}
N 1700 -1110 1720 -1110 {lab=VSS}
N 1720 -1110 1720 -1020 {lab=VSS}
N 1620 -1020 1720 -1020 {lab=VSS}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {symbols/pfet_03v3.sym} 1680 -1290 0 0 {name=MI1
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
C {symbols/nfet_03v3.sym} 1680 -1110 0 0 {name=MI2
L=0.28u
W=1u
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
C {ipin.sym} 1620 -1380 0 0 {name=p8 lab=VDD3V3}
C {ipin.sym} 1620 -1020 0 0 {name=p12 lab=VSS}
C {ipin.sym} 1520 -1200 0 0 {name=p1 lab=Vin}
C {opin.sym} 1780 -1200 0 0 {name=p4 lab=Vout}
