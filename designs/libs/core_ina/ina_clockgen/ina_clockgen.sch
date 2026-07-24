v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1240 -1540 1300 -1540 {lab=#net1}
N 1120 -1310 1160 -1310 {lab=VDD}
N 1410 -1470 1410 -1430 {lab=VSS}
N 960 -1310 1000 -1310 {lab=VSS}
N 1410 -950 1410 -910 {lab=VSS}
N 1410 -1190 1410 -1150 {lab=VDD}
N 1060 -1020 1300 -1020 {lab=#net2}
N 1060 -1190 1060 -1020 {lab=#net2}
N 1060 -1600 1060 -1410 {lab=CLKin}
N 1240 -1080 1300 -1080 {lab=#net3}
N 1240 -1540 1240 -1400 {lab=#net1}
N 1240 -1220 1240 -1080 {lab=#net3}
N 1560 -1570 1640 -1570 {lab=#net4}
N 1860 -1570 1920 -1570 {lab=#net5}
N 2140 -1570 2260 -1570 {lab=#net3}
N 2360 -1510 2360 -1470 {lab=VSS}
N 1560 -1050 1640 -1050 {lab=#net6}
N 1860 -1050 1920 -1050 {lab=#net7}
N 2140 -1050 2260 -1050 {lab=#net1}
N 1410 -1710 1410 -1670 {lab=VDD}
N 2360 -1150 2360 -1110 {lab=VDD}
N 2020 -1150 2020 -1110 {lab=VDD}
N 1740 -1150 1740 -1110 {lab=VDD}
N 1740 -1710 1740 -1630 {lab=VDD}
N 2020 -1710 2020 -1630 {lab=VDD}
N 1740 -1510 1740 -1470 {lab=VSS}
N 2020 -1510 2020 -1470 {lab=VSS}
N 1740 -990 1740 -910 {lab=VSS}
N 2020 -990 2020 -910 {lab=VSS}
N 980 -1600 1300 -1600 {lab=CLKin}
N 1330 -1710 2360 -1710 {lab=VDD}
N 1330 -910 2360 -910 {lab=VSS}
N 2480 -1570 2560 -1570 {lab=CLKa}
N 2360 -1710 2360 -1630 {lab=VDD}
N 2200 -1570 2200 -1440 {lab=#net3}
N 1240 -1220 2200 -1440 {lab=#net3}
N 2480 -1050 2560 -1050 {lab=CLKb}
N 2360 -990 2360 -910 {lab=VSS}
N 2200 -1180 2200 -1050 {lab=#net1}
N 1240 -1400 2200 -1180 {lab=#net1}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=1}
C {libs/core_ina/ina_nand/ina_nand.sym} 1420 -1570 0 0 {name=x1}
C {libs/core_ina/ina_nand/ina_nand.sym} 1420 -1050 0 0 {name=x2}
C {libs/core_ina/ina_inv/ina_inv.sym} 1060 -1310 1 0 {name=x3}
C {libs/core_ina/ina_inv/ina_inv.sym} 1740 -1570 0 0 {name=x4}
C {libs/core_ina/ina_inv/ina_inv.sym} 2020 -1570 0 0 {name=x5}
C {libs/core_ina/ina_inv/ina_inv.sym} 2360 -1570 0 0 {name=x6}
C {libs/core_ina/ina_inv/ina_inv.sym} 1740 -1050 0 0 {name=x7}
C {libs/core_ina/ina_inv/ina_inv.sym} 2020 -1050 0 0 {name=x8}
C {libs/core_ina/ina_inv/ina_inv.sym} 2360 -1050 0 0 {name=x9}
C {lab_wire.sym} 1410 -1430 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 960 -1310 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1160 -1310 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1410 -1190 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2360 -1470 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2360 -1150 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 2020 -1150 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1740 -1150 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1740 -1470 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2020 -1470 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {ipin.sym} 980 -1600 0 0 {name=p19 lab=CLKin}
C {ipin.sym} 1330 -1710 0 0 {name=p7 lab=VDD}
C {ipin.sym} 1330 -910 0 0 {name=p11 lab=VSS}
C {opin.sym} 2560 -1570 0 0 {name=p17 lab=CLKa}
C {opin.sym} 2560 -1050 0 0 {name=p3 lab=CLKb}
