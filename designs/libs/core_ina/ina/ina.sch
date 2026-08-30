v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 3 1400 -2020 1920 -1870 {fill=false
}
T {Dummies} 1400 -2050 0 0 0.4 0.4 {}
N 1600 -1460 1640 -1460 {lab=#net1}
N 1580 -1440 1640 -1440 {lab=#net2}
N 1600 -1560 1600 -1460 {lab=#net1}
N 1580 -1540 1580 -1440 {lab=#net2}
N 1240 -1550 1300 -1550 {lab=CLK}
N 1540 -1540 1580 -1540 {lab=#net2}
N 1540 -1560 1600 -1560 {lab=#net1}
N 1520 -1380 1640 -1380 {lab=VCM}
N 1520 -1360 1640 -1360 {lab=VG}
N 1520 -1400 1640 -1400 {lab=VINN}
N 1520 -1420 1640 -1420 {lab=VINP}
N 1940 -1460 1980 -1460 {lab=#net1}
N 1920 -1440 1980 -1440 {lab=#net2}
N 1920 -1380 1980 -1380 {lab=VCM}
N 1940 -1360 1980 -1360 {lab=VG}
N 1880 -1420 1980 -1420 {lab=#net3}
N 1880 -1400 1980 -1400 {lab=#net4}
N 1940 -1360 1940 -1260 {lab=VG}
N 1920 -1380 1920 -1280 {lab=VCM}
N 1600 -1380 1600 -1280 {lab=VCM}
N 1600 -1280 1920 -1280 {lab=VCM}
N 1580 -1360 1580 -1260 {lab=VG}
N 1580 -1260 1940 -1260 {lab=VG}
N 1580 -1540 1920 -1540 {lab=#net2}
N 1920 -1540 1920 -1440 {lab=#net2}
N 1600 -1560 1940 -1560 {lab=#net1}
N 1940 -1560 1940 -1460 {lab=#net1}
N 1360 -1630 2100 -1630 {lab=VDD3V3}
N 2100 -1630 2100 -1500 {lab=VDD3V3}
N 1760 -1630 1760 -1500 {lab=VDD3V3}
N 1420 -1630 1420 -1610 {lab=VDD3V3}
N 1510 -1130 1510 -1090 {lab=VSS}
N 1490 -1160 1510 -1160 {lab=VSS}
N 1490 -1160 1490 -1090 {lab=VSS}
N 1360 -1090 2100 -1090 {lab=VSS}
N 1550 -1160 2050 -1160 {lab=IB}
N 1420 -1490 1420 -1090 {lab=VSS}
N 1760 -1320 1760 -1090 {lab=VSS}
N 1710 -1320 1710 -1160 {lab=IB}
N 1510 -1290 1510 -1190 {lab=IB}
N 1510 -1220 1600 -1220 {lab=IB}
N 1600 -1220 1600 -1160 {lab=IB}
N 2050 -1320 2050 -1160 {lab=IB}
N 2100 -1320 2100 -1090 {lab=VSS}
N 2220 -1420 2300 -1420 {lab=VOUTP}
N 2220 -1400 2300 -1400 {lab=VOUTN}
N 1540 -1900 1580 -1900 {lab=VSS}
N 1580 -1950 1580 -1900 {lab=VSS}
N 1740 -1950 1750 -1950 {lab=VSS}
N 1750 -1920 1750 -1900 {lab=VSS}
N 1740 -1900 1750 -1900 {lab=VSS}
N 1740 -1980 1740 -1900 {lab=VSS}
N 1750 -1900 1790 -1900 {lab=VSS}
N 1790 -1950 1790 -1900 {lab=VSS}
N 1740 -1980 1750 -1980 {lab=VSS}
N 1530 -1950 1540 -1950 {lab=VSS}
N 1530 -1900 1540 -1900 {lab=VSS}
N 1530 -1980 1530 -1900 {lab=VSS}
N 1530 -1980 1540 -1980 {lab=VSS}
N 1540 -1920 1540 -1900 {lab=VSS}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true}
C {ipin.sym} 1240 -1550 0 0 {name=p7 lab=CLK}
C {ipin.sym} 1520 -1420 0 0 {name=p9 lab=VINP}
C {ipin.sym} 1520 -1400 0 0 {name=p10 lab=VINN}
C {ipin.sym} 1360 -1630 0 0 {name=p11 lab=VDD3V3}
C {ipin.sym} 1360 -1090 0 0 {name=p12 lab=VSS}
C {ipin.sym} 1520 -1380 2 1 {name=p6 lab=VCM}
C {ipin.sym} 1510 -1290 1 0 {name=p13 lab=IB}
C {ipin.sym} 1520 -1360 0 0 {name=p3 lab=VG}
C {opin.sym} 2300 -1420 0 0 {name=p17 lab=VOUTP}
C {opin.sym} 2300 -1400 0 0 {name=p18 lab=VOUTN}
C {/foss/designs/core_ina/ina_clockgen.sym} 1420 -1550 0 0 {name=x3}
C {symbols/nfet_03v3.sym} 1530 -1160 0 1 {name=MB1
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
C {lab_wire.sym} 1570 -1900 2 1 {name=Mpota_dummie_TB2[3:0] sig_type=std_logic lab=VSS
L=0.50u}
C {lab_wire.sym} 1780 -1900 2 1 {name=Mpota_dummie_TB3[3:0] sig_type=std_logic lab=VSS
L=0.50u}
C {symbols/nfet_03v3.sym} 1560 -1950 0 1 {name=Mnbias_dummy_L
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
C {symbols/nfet_03v3.sym} 1770 -1950 0 1 {name=Mnbias_dummy_R
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
C {/foss/designs/core_ina/ina_ccia1.sym} 1760 -1410 0 0 {name=x1}
C {/foss/designs/core_ina/ina_ccia2.sym} 2100 -1410 0 0 {name=x2}
