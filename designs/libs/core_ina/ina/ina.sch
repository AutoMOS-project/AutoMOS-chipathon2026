v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1600 -1460 1640 -1460 {lab=#net1}
N 1580 -1440 1640 -1440 {lab=#net2}
N 1600 -1560 1600 -1460 {lab=#net1}
N 1580 -1540 1580 -1440 {lab=#net2}
N 1240 -1550 1300 -1550 {lab=CLK}
N 1540 -1540 1580 -1540 {lab=#net2}
N 1540 -1560 1600 -1560 {lab=#net1}
N 1520 -1380 1640 -1380 {lab=Vcm}
N 1520 -1360 1640 -1360 {lab=Vg}
N 1520 -1400 1640 -1400 {lab=Vinn}
N 1520 -1420 1640 -1420 {lab=Vinp}
N 1940 -1460 1980 -1460 {lab=#net1}
N 1920 -1440 1980 -1440 {lab=#net2}
N 1920 -1380 1980 -1380 {lab=Vcm}
N 1940 -1360 1980 -1360 {lab=Vg}
N 1880 -1420 1980 -1420 {lab=#net3}
N 1880 -1400 1980 -1400 {lab=#net4}
N 1940 -1360 1940 -1260 {lab=Vg}
N 1920 -1380 1920 -1280 {lab=Vcm}
N 1600 -1380 1600 -1280 {lab=Vcm}
N 1600 -1280 1920 -1280 {lab=Vcm}
N 1580 -1360 1580 -1260 {lab=Vg}
N 1580 -1260 1940 -1260 {lab=Vg}
N 1580 -1540 1920 -1540 {lab=#net2}
N 1920 -1540 1920 -1440 {lab=#net2}
N 1600 -1560 1940 -1560 {lab=#net1}
N 1940 -1560 1940 -1460 {lab=#net1}
N 1360 -1630 2100 -1630 {lab=VDD}
N 2100 -1630 2100 -1500 {lab=VDD}
N 1760 -1630 1760 -1500 {lab=VDD}
N 1420 -1630 1420 -1610 {lab=VDD}
N 1510 -1130 1510 -1090 {lab=VSS}
N 1490 -1160 1510 -1160 {lab=VSS}
N 1490 -1160 1490 -1090 {lab=VSS}
N 1360 -1090 2100 -1090 {lab=VSS}
N 2220 -1420 2260 -1420 {lab=Voutp}
N 2220 -1400 2260 -1400 {lab=Voutn}
N 2260 -1360 2440 -1360 {lab=Voutn}
N 2260 -1460 2440 -1460 {lab=Voutp}
N 2260 -1460 2260 -1420 {lab=Voutp}
N 2260 -1400 2260 -1360 {lab=Voutn}
N 2320 -1380 2320 -1360 {lab=Voutn}
N 2320 -1460 2320 -1440 {lab=Voutp}
N 1550 -1160 2050 -1160 {lab=Ib}
N 1420 -1490 1420 -1090 {lab=VSS}
N 1760 -1320 1760 -1090 {lab=VSS}
N 1710 -1320 1710 -1160 {lab=Ib}
N 1510 -1290 1510 -1190 {lab=Ib}
N 1510 -1220 1600 -1220 {lab=Ib}
N 1600 -1220 1600 -1160 {lab=Ib}
N 2050 -1320 2050 -1160 {lab=Ib}
N 2100 -1320 2100 -1090 {lab=VSS}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true}
C {ipin.sym} 1240 -1550 0 0 {name=p7 lab=CLK}
C {ipin.sym} 1520 -1420 0 0 {name=p9 lab=Vinp}
C {ipin.sym} 1520 -1400 0 0 {name=p10 lab=Vinn}
C {ipin.sym} 1360 -1630 0 0 {name=p11 lab=VDD}
C {ipin.sym} 1360 -1090 0 0 {name=p12 lab=VSS}
C {ipin.sym} 1520 -1380 2 1 {name=p6 lab=Vcm}
C {ipin.sym} 1510 -1290 1 0 {name=p13 lab=Ib}
C {ipin.sym} 1520 -1360 0 0 {name=p3 lab=Vg}
C {opin.sym} 2440 -1460 0 0 {name=p17 lab=Voutp}
C {opin.sym} 2440 -1360 0 0 {name=p18 lab=Voutn}
C {libs/core_ina/ina_clockgen/ina_clockgen.sym} 1420 -1550 0 0 {name=x5}
C {libs/core_ina/ina_ccia/ina_ccia.sym} 1760 -1410 0 0 {name=x1}
C {libs/core_ina/ina_ccia/ina_ccia.sym} 2100 -1410 0 0 {name=x2}
C {symbols/nfet_03v3.sym} 1530 -1160 0 1 {name=M1
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
C {symbols/cap_mim_2f0fF.sym} 2320 -1410 0 0 {name=C1
W=40e-6
L=40e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
