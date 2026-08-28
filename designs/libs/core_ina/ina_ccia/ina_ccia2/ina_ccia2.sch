v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1980 -1290 2080 -1290 {lab=CLKA}
N 2020 -1270 2080 -1270 {lab=CLKB}
N 1480 -1340 1640 -1340 {lab=#net1}
N 1480 -1320 1640 -1320 {lab=#net2}
N 1550 -1750 1710 -1750 {lab=#net3}
N 1770 -1750 1950 -1750 {lab=VOUTP}
N 1220 -1300 1280 -1300 {lab=CLKB}
N 1000 -1240 1040 -1240 {lab=#net4}
N 1000 -1460 1040 -1460 {lab=#net3}
N 880 -1460 940 -1460 {lab=VINP}
N 880 -1240 940 -1240 {lab=VINN}
N 1380 -1420 1380 -1400 {lab=VDD}
N 2180 -1420 2180 -1370 {lab=VDD}
N 1740 -1420 1740 -1390 {lab=VDD}
N 2180 -1230 2180 -1210 {lab=VSS}
N 1740 -1250 1740 -1210 {lab=VSS}
N 1380 -1260 1380 -1210 {lab=VSS}
N 1740 -1110 1740 -1090 {lab=VDD}
N 1600 -1110 1740 -1110 {lab=VDD}
N 1600 -1380 1600 -1110 {lab=VDD}
N 1560 -1300 1640 -1300 {lab=#net5}
N 1380 -1210 2180 -1210 {lab=VSS}
N 1840 -1050 1880 -1050 {lab=#net6}
N 1880 -1330 1880 -1050 {lab=#net6}
N 1840 -1030 1920 -1030 {lab=#net7}
N 1920 -1310 1920 -1030 {lab=#net7}
N 1380 -1420 2180 -1420 {lab=VDD}
N 1740 -950 1740 -930 {lab=VSS}
N 1840 -1010 1900 -1010 {lab=VCM}
N 1840 -990 1900 -990 {lab=VB}
N 2280 -1310 2320 -1310 {lab=VOUTP}
N 2320 -1680 2320 -1310 {lab=VOUTP}
N 2280 -1290 2320 -1290 {lab=VOUTN}
N 1040 -1340 1040 -690 {lab=#net4}
N 1840 -1330 1880 -1330 {lab=#net6}
N 1840 -1310 1920 -1310 {lab=#net7}
N 1920 -1310 2080 -1310 {lab=#net7}
N 1880 -1330 2080 -1330 {lab=#net6}
N 1180 -1320 1280 -1320 {lab=CLKA}
N 1180 -1320 1180 -1170 {lab=CLKA}
N 1220 -1300 1220 -1150 {lab=CLKB}
N 1600 -1420 1600 -1380 {lab=VDD}
N 1980 -1290 1980 -1170 {lab=CLKA}
N 1180 -1170 1980 -1170 {lab=CLKA}
N 1220 -1150 2020 -1150 {lab=CLKB}
N 2020 -1270 2020 -1150 {lab=CLKB}
N 2180 -1210 2180 -930 {lab=VSS}
N 1740 -930 2180 -930 {lab=VSS}
N 2320 -1290 2320 -690 {lab=VOUTN}
N 1560 -1300 1560 -1020 {lab=#net5}
N 1560 -1020 1640 -1020 {lab=#net5}
N 1750 -640 1750 -600 {lab=VG}
N 1750 -1630 1750 -1590 {lab=Vg}
N 1950 -1750 1950 -1680 {lab=VOUTP}
N 1550 -760 1710 -760 {lab=#net4}
N 1770 -760 1950 -760 {lab=VOUTN}
N 1950 -1680 2320 -1680 {lab=VOUTP}
N 1950 -690 2320 -690 {lab=VOUTN}
N 1950 -760 1950 -690 {lab=VOUTN}
N 1550 -690 1610 -690 {lab=#net4}
N 1120 -1170 1180 -1170 {lab=CLKA}
N 1120 -1150 1220 -1150 {lab=CLKB}
N 1040 -1360 1280 -1360 {lab=#net3}
N 1550 -1680 1610 -1680 {lab=#net3}
N 1320 -1420 1380 -1420 {lab=VDD}
N 1680 -930 1740 -930 {lab=VSS}
N 1040 -1680 1040 -1360 {lab=#net3}
N 1040 -1340 1280 -1340 {lab=#net4}
N 2380 -1410 2380 -1330 {lab=VOUTP}
N 2380 -1270 2380 -1190 {lab=VOUTN}
N 2320 -1410 2460 -1410 {lab=VOUTP}
N 2320 -1190 2460 -1190 {lab=VOUTN}
N 1550 -1750 1550 -1680 {lab=#net3}
N 1040 -1680 1550 -1680 {lab=#net3}
N 1550 -760 1550 -690 {lab=#net4}
N 1040 -690 1550 -690 {lab=#net4}
N 1890 -690 1950 -690 {lab=VOUTN}
N 1890 -1680 1950 -1680 {lab=VOUTP}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {libs/core_ina/ina_cmfb/ina_cmfb.sym} 1740 -1020 0 1 {name=x2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 1380 -1330 0 0 {name=x3}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 2180 -1300 0 0 {name=x4}
C {symbols/cap_mim_2f0fF.sym} 970 -1460 3 0 {name=CIN3
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
C {symbols/cap_mim_2f0fF.sym} 970 -1240 3 1 {name=CIN4
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
C {symbols/cap_mim_2f0fF.sym} 1740 -1750 3 0 {name=CFB1
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {ipin.sym} 880 -1460 0 0 {name=p9 lab=VINP}
C {ipin.sym} 880 -1240 0 0 {name=p10 lab=VINN}
C {ipin.sym} 1320 -1420 0 0 {name=p11 lab=VDD}
C {ipin.sym} 1680 -930 0 0 {name=p12 lab=VSS}
C {ipin.sym} 1900 -1010 0 1 {name=p6 lab=VCM}
C {ipin.sym} 1900 -990 0 1 {name=p13 lab=VB}
C {symbols/cap_mim_2f0fF.sym} 1740 -760 3 0 {name=CFB2
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {lab_wire.sym} 1750 -600 0 0 {name=p14 sig_type=std_logic lab=VG}
C {ipin.sym} 1750 -1590 3 0 {name=p3 lab=VG}
C {opin.sym} 2460 -1410 0 0 {name=p17 lab=VOUTP}
C {opin.sym} 2460 -1190 0 0 {name=p18 lab=VOUTN}
C {libs/core_ina/ina_ota/ina_ota.sym} 1740 -1320 0 0 {name=x1}
C {ipin.sym} 1120 -1170 0 0 {name=p1 lab=CLKA}
C {ipin.sym} 1120 -1150 0 0 {name=p2 lab=CLKB}
C {symbols/cap_mim_2f0fF.sym} 2380 -1300 0 0 {name=COUT
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
C {libs/core_ina/ina_pseudores/ina_pseudores.sym} 1750 -690 0 0 {name=x6}
C {libs/core_ina/ina_pseudores/ina_pseudores.sym} 1750 -1680 0 0 {name=x5}
