v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1240 -1590 1240 -1550 {lab=VDD}
N 1240 -1490 1240 -1450 {lab=GND}
N 1240 -1390 1240 -1350 {lab=Vin1}
N 1240 -1290 1240 -1250 {lab=GND}
N 1540 -1390 1540 -1350 {lab=Vin2}
N 1540 -1290 1540 -1250 {lab=GND}
N 1540 -1170 1540 -1130 {lab=Vref}
N 1540 -1070 1540 -1030 {lab=GND}
N 2130 -1400 2130 -1380 {lab=VDD}
N 2130 -1180 2130 -1160 {lab=GND}
N 1920 -1290 1980 -1290 {lab=Vin1}
N 1920 -1270 1980 -1270 {lab=Vin2}
N 1920 -1310 1980 -1310 {lab=Vref}
N 1920 -1250 1980 -1250 {lab=Vg}
N 1920 -1230 1980 -1230 {lab=Ib}
N 1240 -850 1240 -810 {lab=GND}
N 1240 -950 1240 -910 {lab=CLK}
N 1540 -950 1540 -910 {lab=Vg}
N 1540 -850 1540 -810 {lab=GND}
N 1920 -1330 1980 -1330 {lab=CLK}
N 1240 -1150 1240 -1110 {lab=VDD}
N 1240 -1050 1240 -990 {lab=Ib}
N 2280 -1290 2380 -1290 {lab=Vout1}
N 2280 -1270 2380 -1270 {lab=Vout2}
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
let Vg    = 0.1
let Ibias = 2u

*************************************
** CHOPPER PARAMETERS
*************************************

let fchop = 4k
let tper = 1/fchop
let ton = tper/2
let tr = 10n
let tf = 10n

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = $&Vcm
alter @V3[DC] = $&Vcm
alter @V4[DC] = $&Vcm
alter @V5[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]
alter @I0[DC] = $&Ibias
alter @V6[DC] = $&Vg

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
C {launcher.sym} 1730 -1550 0 0 {name=h1
descr=Annotate OP
tclcommand="xschem annotate_op"}
C {vsource.sym} 1240 -1520 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1240 -1450 0 0 {name=l3 lab=GND}
C {vdd.sym} 1240 -1590 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1240 -1320 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1240 -1370 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {gnd.sym} 1240 -1250 0 0 {name=l8 lab=GND}
C {vsource.sym} 1540 -1320 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1540 -1370 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1540 -1250 0 0 {name=l9 lab=GND}
C {vsource.sym} 1540 -1100 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1540 -1150 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1540 -1030 0 0 {name=l6 lab=GND}
C {libs/core_ina/ina/ina.sym} 2130 -1280 0 0 {name=x1}
C {vdd.sym} 2130 -1400 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2130 -1160 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 1960 -1290 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1960 -1270 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1960 -1310 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1960 -1230 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1960 -1250 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {vsource.sym} 1240 -880 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 1240 -810 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1240 -930 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {vsource.sym} 1540 -880 0 0 {name=V6 value=0.1 savecurrent=false}
C {lab_wire.sym} 1540 -930 0 0 {name=p14 sig_type=std_logic lab=Vg}
C {gnd.sym} 1540 -810 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 1960 -1330 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {isource.sym} 1240 -1080 0 0 {name=I0 value=1u}
C {vdd.sym} 1240 -1150 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1240 -1020 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 2340 -1290 0 0 {name=p13 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2340 -1270 0 0 {name=p16 sig_type=std_logic lab=Vout2}
C {noconn.sym} 2380 -1290 0 1 {name=l10}
C {noconn.sym} 2380 -1270 0 1 {name=l11}
