v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1440 -1420 1520 -1420 {lab=Vin1}
N 1440 -1600 1440 -1420 {lab=Vin1}
N 1440 -1600 1520 -1600 {lab=Vin1}
N 1580 -1420 1660 -1420 {lab=Vout1}
N 1660 -1600 1660 -1420 {lab=Vout1}
N 1580 -1600 1660 -1600 {lab=Vout1}
N 1820 -1420 1900 -1420 {lab=Vin1}
N 1820 -1600 1820 -1420 {lab=Vin1}
N 1820 -1600 1900 -1600 {lab=Vin1}
N 1960 -1420 2040 -1420 {lab=Vout2}
N 2040 -1600 2040 -1420 {lab=Vout2}
N 1960 -1600 2040 -1600 {lab=Vout2}
N 1440 -1040 1520 -1040 {lab=Vin2}
N 1440 -1220 1440 -1040 {lab=Vin2}
N 1440 -1220 1520 -1220 {lab=Vin2}
N 1580 -1040 1660 -1040 {lab=Vout2}
N 1660 -1220 1660 -1040 {lab=Vout2}
N 1580 -1220 1660 -1220 {lab=Vout2}
N 1820 -1040 1900 -1040 {lab=Vin2}
N 1820 -1220 1820 -1040 {lab=Vin2}
N 1820 -1220 1900 -1220 {lab=Vin2}
N 1960 -1040 2040 -1040 {lab=Vout1}
N 2040 -1220 2040 -1040 {lab=Vout1}
N 1960 -1220 2040 -1220 {lab=Vout1}
N 1360 -1510 1440 -1510 {lab=Vin1}
N 1780 -1510 1820 -1510 {lab=Vin1}
N 1400 -1680 1400 -1510 {lab=Vin1}
N 1780 -1680 1780 -1510 {lab=Vin1}
N 1660 -1510 1700 -1510 {lab=Vout1}
N 1400 -1680 1780 -1680 {lab=Vin1}
N 1550 -1380 1550 -1260 {lab=CLKb}
N 1930 -1380 1930 -1260 {lab=CLK}
N 2040 -1520 2120 -1520 {lab=Vout2}
N 2080 -1520 2080 -1360 {lab=Vout2}
N 1700 -1510 1700 -1280 {lab=Vout1}
N 1700 -1280 2080 -1280 {lab=Vout1}
N 2080 -1280 2080 -1130 {lab=Vout1}
N 2040 -1130 2120 -1130 {lab=Vout1}
N 1360 -1130 1440 -1130 {lab=Vin2}
N 1360 -1320 1550 -1320 {lab=CLKb}
N 1550 -1720 1550 -1640 {lab=CLK}
N 1930 -1320 2120 -1320 {lab=CLK}
N 1660 -1130 1740 -1130 {lab=Vout2}
N 1740 -1360 1740 -1130 {lab=Vout2}
N 1740 -1360 2080 -1360 {lab=Vout2}
N 1930 -1720 1930 -1640 {lab=CLKb}
N 1780 -1130 1820 -1130 {lab=Vin2}
N 1400 -1130 1400 -960 {lab=Vin2}
N 1400 -960 1780 -960 {lab=Vin2}
N 1780 -1130 1780 -960 {lab=Vin2}
N 1550 -1000 1550 -920 {lab=CLK}
N 1930 -1000 1930 -920 {lab=CLKb}
N 1060 -1420 1140 -1420 {lab=VDD}
N 1060 -1380 1140 -1380 {lab=VSS}
N 1550 -1600 1550 -1560 {lab=VSS}
N 1930 -1600 1930 -1560 {lab=VSS}
N 1550 -1460 1550 -1420 {lab=VDD}
N 1930 -1460 1930 -1420 {lab=VDD}
N 1550 -1220 1550 -1180 {lab=VDD}
N 1930 -1220 1930 -1180 {lab=VDD}
N 1550 -1080 1550 -1040 {lab=VSS}
N 1930 -1080 1930 -1040 {lab=VSS}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {symbols/nfet_03v3.sym} 1550 -1620 1 0 {name=M1
L=0.28u
W=5u
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
C {symbols/pfet_03v3.sym} 1550 -1400 3 0 {name=M2
L=0.28u
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
C {symbols/nfet_03v3.sym} 1930 -1620 1 0 {name=M3
L=0.28u
W=5u
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
C {symbols/pfet_03v3.sym} 1930 -1400 3 0 {name=M4
L=0.28u
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
C {symbols/nfet_03v3.sym} 1550 -1020 3 0 {name=M5
L=0.28u
W=5u
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
C {symbols/pfet_03v3.sym} 1550 -1240 1 0 {name=M6
L=0.28u
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
C {symbols/nfet_03v3.sym} 1930 -1020 3 0 {name=M7
L=0.28u
W=5u
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
C {symbols/pfet_03v3.sym} 1930 -1240 1 0 {name=M8
L=0.28u
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
C {ipin.sym} 1360 -1510 0 0 {name=p1 lab=Vin1}
C {ipin.sym} 1360 -1130 0 0 {name=p2 lab=Vin2}
C {ipin.sym} 1360 -1320 0 0 {name=p3 lab=CLKb}
C {opin.sym} 2120 -1520 0 0 {name=p4 lab=Vout2}
C {lab_wire.sym} 1550 -1720 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {ipin.sym} 2120 -1320 0 1 {name=p6 lab=CLK}
C {opin.sym} 2120 -1130 0 0 {name=p7 lab=Vout1}
C {lab_wire.sym} 1930 -1720 0 0 {name=p8 sig_type=std_logic lab=CLKb}
C {lab_wire.sym} 1550 -920 0 0 {name=p9 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1930 -920 0 0 {name=p10 sig_type=std_logic lab=CLKb}
C {ipin.sym} 1060 -1420 0 0 {name=p11 lab=VDD}
C {ipin.sym} 1060 -1380 0 0 {name=p12 lab=VSS}
C {lab_wire.sym} 1550 -1460 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1550 -1080 1 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1550 -1560 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1930 -1560 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1930 -1460 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1550 -1180 3 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1930 -1180 3 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1930 -1080 1 0 {name=p20 sig_type=std_logic lab=VSS}
