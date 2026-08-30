v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 2010 -1290 2110 -1290 {lab=CLKA}
N 2050 -1270 2110 -1270 {lab=CLKB}
N 1510 -1340 1670 -1340 {lab=#net1}
N 1510 -1320 1670 -1320 {lab=#net2}
N 1580 -1750 1740 -1750 {lab=#net3}
N 1800 -1750 1980 -1750 {lab=VOUTP}
N 1250 -1300 1310 -1300 {lab=CLKB}
N 1030 -1240 1070 -1240 {lab=#net4}
N 1030 -1460 1070 -1460 {lab=#net3}
N 910 -1460 970 -1460 {lab=VINP}
N 910 -1240 970 -1240 {lab=VINN}
N 1410 -1420 1410 -1400 {lab=VDD3V3}
N 2210 -1420 2210 -1370 {lab=VDD3V3}
N 1770 -1420 1770 -1390 {lab=VDD3V3}
N 2210 -1230 2210 -1210 {lab=VSS}
N 1770 -1250 1770 -1210 {lab=VSS}
N 1410 -1260 1410 -1210 {lab=VSS}
N 1770 -1110 1770 -1090 {lab=VDD3V3}
N 1630 -1110 1770 -1110 {lab=VDD3V3}
N 1630 -1380 1630 -1110 {lab=VDD3V3}
N 1590 -1300 1670 -1300 {lab=#net5}
N 1410 -1210 2210 -1210 {lab=VSS}
N 1870 -1050 1910 -1050 {lab=#net6}
N 1910 -1330 1910 -1050 {lab=#net6}
N 1870 -1030 1950 -1030 {lab=#net7}
N 1950 -1310 1950 -1030 {lab=#net7}
N 1410 -1420 2210 -1420 {lab=VDD3V3}
N 1770 -950 1770 -930 {lab=VSS}
N 1870 -1010 1930 -1010 {lab=VCM}
N 1870 -990 1930 -990 {lab=VB}
N 2310 -1310 2350 -1310 {lab=VOUTP}
N 2350 -1680 2350 -1310 {lab=VOUTP}
N 2310 -1290 2350 -1290 {lab=VOUTN}
N 1070 -1340 1070 -690 {lab=#net4}
N 1870 -1330 1910 -1330 {lab=#net6}
N 1870 -1310 1950 -1310 {lab=#net7}
N 1950 -1310 2110 -1310 {lab=#net7}
N 1910 -1330 2110 -1330 {lab=#net6}
N 1210 -1320 1310 -1320 {lab=CLKA}
N 1210 -1320 1210 -1170 {lab=CLKA}
N 1250 -1300 1250 -1150 {lab=CLKB}
N 1630 -1420 1630 -1380 {lab=VDD3V3}
N 2010 -1290 2010 -1170 {lab=CLKA}
N 1210 -1170 2010 -1170 {lab=CLKA}
N 1250 -1150 2050 -1150 {lab=CLKB}
N 2050 -1270 2050 -1150 {lab=CLKB}
N 2210 -1210 2210 -930 {lab=VSS}
N 1770 -930 2210 -930 {lab=VSS}
N 2350 -1290 2350 -690 {lab=VOUTN}
N 1590 -1300 1590 -1020 {lab=#net5}
N 1590 -1020 1670 -1020 {lab=#net5}
N 1780 -640 1780 -600 {lab=VG}
N 1780 -1630 1780 -1590 {lab=VG}
N 1980 -1750 1980 -1680 {lab=VOUTP}
N 1580 -760 1740 -760 {lab=#net4}
N 1800 -760 1980 -760 {lab=VOUTN}
N 1980 -1680 2350 -1680 {lab=VOUTP}
N 1980 -690 2350 -690 {lab=VOUTN}
N 1980 -760 1980 -690 {lab=VOUTN}
N 1580 -690 1640 -690 {lab=#net4}
N 1150 -1170 1210 -1170 {lab=CLKA}
N 1150 -1150 1250 -1150 {lab=CLKB}
N 1070 -1360 1310 -1360 {lab=#net3}
N 1580 -1680 1640 -1680 {lab=#net3}
N 1350 -1420 1410 -1420 {lab=VDD3V3}
N 1710 -930 1770 -930 {lab=VSS}
N 1070 -1680 1070 -1360 {lab=#net3}
N 1070 -1340 1310 -1340 {lab=#net4}
N 2410 -1410 2410 -1330 {lab=VOUTP}
N 2410 -1270 2410 -1190 {lab=VOUTN}
N 2350 -1410 2490 -1410 {lab=VOUTP}
N 2350 -1190 2490 -1190 {lab=VOUTN}
N 1580 -760 1580 -690 {lab=#net4}
N 1070 -690 1580 -690 {lab=#net4}
N 1580 -1750 1580 -1680 {lab=#net3}
N 1070 -1680 1580 -1680 {lab=#net3}
N 1920 -1680 1980 -1680 {lab=VOUTP}
N 1920 -690 1980 -690 {lab=VOUTN}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {/foss/designs/core_ina/ina_cmfb.sym} 1770 -1020 0 1 {name=x2}
C {/foss/designs/core_ina/ina_chopper.sym} 1410 -1330 0 0 {name=x3}
C {/foss/designs/core_ina/ina_chopper.sym} 2210 -1300 0 0 {name=x4}
C {symbols/cap_mim_2f0fF.sym} 1000 -1460 3 0 {name=CIN1
W=20e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
C {symbols/cap_mim_2f0fF.sym} 1000 -1240 3 1 {name=CIN2
W=20e-6
L=20e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
C {symbols/cap_mim_2f0fF.sym} 1770 -1750 3 0 {name=CFB1
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {ipin.sym} 910 -1460 0 0 {name=p9 lab=VINP}
C {ipin.sym} 910 -1240 0 0 {name=p10 lab=VINN}
C {ipin.sym} 1350 -1420 0 0 {name=p11 lab=VDD3V3}
C {ipin.sym} 1710 -930 0 0 {name=p12 lab=VSS}
C {ipin.sym} 1930 -1010 0 1 {name=p6 lab=VCM}
C {ipin.sym} 1930 -990 0 1 {name=p13 lab=VB}
C {symbols/cap_mim_2f0fF.sym} 1770 -760 3 0 {name=CFB2
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {lab_wire.sym} 1780 -600 0 0 {name=p14 sig_type=std_logic lab=VG}
C {ipin.sym} 1780 -1590 3 0 {name=p3 lab=VG}
C {opin.sym} 2490 -1410 0 0 {name=p17 lab=VOUTP}
C {opin.sym} 2490 -1190 0 0 {name=p18 lab=VOUTN}
C {/foss/designs/core_ina/ina_ota.sym} 1770 -1320 0 0 {name=x1}
C {ipin.sym} 1150 -1170 0 0 {name=p1 lab=CLKA}
C {ipin.sym} 1150 -1150 0 0 {name=p2 lab=CLKB}
C {symbols/cap_mim_2f0fF.sym} 2410 -1300 0 0 {name=COUT
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
C {/foss/designs/core_ina/ina_pseudores.sym} 1780 -1680 0 0 {name=x5}
C {/foss/designs/core_ina/ina_pseudores.sym} 1780 -690 0 0 {name=x6}
