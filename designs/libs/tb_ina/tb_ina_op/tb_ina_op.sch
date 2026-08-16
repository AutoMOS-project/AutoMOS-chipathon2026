v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1210 -1560 1210 -1520 {lab=VDD}
N 1210 -1460 1210 -1420 {lab=GND}
N 1210 -1360 1210 -1320 {lab=Vin1}
N 1210 -1260 1210 -1220 {lab=GND}
N 2030 -1260 2030 -1230 {lab=GND}
N 1860 -1360 1930 -1360 {lab=Vin1}
N 1860 -1330 1930 -1330 {lab=Vin2}
N 1860 -1300 1930 -1300 {lab=Vtail}
N 1510 -1360 1510 -1320 {lab=Vin2}
N 1510 -1260 1510 -1220 {lab=GND}
N 2470 -1350 2470 -1270 {lab=Vout1}
N 2390 -1310 2390 -1270 {lab=Vout2}
N 2390 -1210 2390 -1170 {lab=GND}
N 2470 -1210 2470 -1170 {lab=GND}
N 2030 -1430 2030 -1400 {lab=VDD}
N 2130 -1350 2470 -1350 {lab=Vout1}
N 2130 -1310 2390 -1310 {lab=Vout2}
N 2260 -1350 2260 -1080 {lab=Vout1}
N 2300 -1310 2300 -1060 {lab=Vout2}
N 1860 -1300 1860 -1050 {lab=Vtail}
N 1210 -1120 1210 -1080 {lab=VDD}
N 1210 -1020 1210 -980 {lab=Vb}
N 1510 -1140 1510 -1100 {lab=Vref}
N 1510 -1040 1510 -1000 {lab=GND}
N 2030 -980 2030 -950 {lab=GND}
N 2030 -1150 2030 -1120 {lab=VDD}
N 1860 -1050 1930 -1050 {lab=Vtail}
N 2130 -1080 2260 -1080 {lab=Vout1}
N 2130 -1060 2300 -1060 {lab=Vout2}
N 2130 -1040 2200 -1040 {lab=Vref}
N 2130 -1020 2200 -1020 {lab=Vb}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true}
C {simulator_commands.sym} 860 -1600 0 0 {name=MODELS
simulator=ngspice
only_toplevel=false
format="tcleval( @value )" 
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
* ngspice commands
"}
C {simulator_commands.sym} 860 -1390 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

set color0 = white

*************************************
** PARAMETERS
*************************************

let Vdd   = 3.3
let Vcm   = 1.65
let Voff  = 0
let Vref  = 0
let Ibias = 1u

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = $&Vcm + $&Voff
alter @V3[DC] = $&Vcm + $&Voff
alter @V4[DC] = $&Vref
alter @I0[DC] = $&Ibias

*************************************
** OPERATING POINT SIMULATION
*************************************

op

*************************************
** PRINT RESULTS
*************************************

display
show all

*************************************
** SAVE 
*************************************

write tb_ina_op.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1210 -1490 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1210 -1420 0 0 {name=l3 lab=GND}
C {vdd.sym} 1210 -1560 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1210 -1290 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1210 -1340 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 2030 -1430 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2030 -1230 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 1900 -1360 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1900 -1330 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1210 -1220 0 0 {name=l8 lab=GND}
C {vsource.sym} 1510 -1290 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1510 -1340 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1510 -1220 0 0 {name=l9 lab=GND}
C {capa.sym} 2390 -1240 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2470 -1240 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2390 -1170 0 0 {name=l10 lab=GND}
C {gnd.sym} 2470 -1170 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 2190 -1350 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2190 -1310 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {launcher.sym} 1530 -1490 0 0 {name=h1
descr=Annotate OP
tclcommand="xschem annotate_op"}
C {libs/core_ina/ina_ota/ina_ota.sym} 2030 -1330 0 0 {name=x1}
C {libs/core_ina/ina_cmfb/ina_cmfb.sym} 2030 -1050 0 1 {name=x2}
C {isource.sym} 1210 -1050 0 0 {name=I0 value=1u}
C {vdd.sym} 1210 -1120 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1210 -990 0 0 {name=p3 sig_type=std_logic lab=Vb}
C {vsource.sym} 1510 -1070 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1510 -1120 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1510 -1000 0 0 {name=l6 lab=GND}
C {gnd.sym} 2030 -950 0 0 {name=l12 lab=GND}
C {vdd.sym} 2030 -1150 0 0 {name=l13 lab=VDD}
C {lab_wire.sym} 2160 -1040 0 1 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 2160 -1020 0 1 {name=p4 sig_type=std_logic lab=Vb}
C {lab_wire.sym} 1860 -1150 0 0 {name=p11 sig_type=std_logic lab=Vtail}
