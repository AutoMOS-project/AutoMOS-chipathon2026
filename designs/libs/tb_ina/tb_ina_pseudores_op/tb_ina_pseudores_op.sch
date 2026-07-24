v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1670 -1420 1770 -1420 {lab=Vb}
N 1300 -1420 1390 -1420 {lab=Va}
N 1300 -1310 1300 -1270 {lab=GND}
N 1530 -1270 1530 -1230 {lab=GND}
N 1530 -1370 1530 -1330 {lab=#net1}
N 1300 -1420 1300 -1370 {lab=Va}
N 1770 -1310 1770 -1270 {lab=GND}
N 1770 -1420 1770 -1370 {lab=Vb}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true}
C {libs/core_ina/ina_pseudores/ina_pseudores.sym} 1530 -1420 0 0 {name=x1}
C {simulator_commands.sym} 870 -1590 0 0 {name=MODELS
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
C {simulator_commands.sym} 870 -1360 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

set color0 = white

*************************************
** PARAMETERS
*************************************

let Vg = 0.1
let Vin = 1.65
let Vout = 1.6511

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vin
alter @V2[DC] = $&Vg
alter @V4[DC] = $&Vout

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

write tb_ina_pseudores_op.raw

.endc
* ngspice commands
"}
C {gnd.sym} 1530 -1230 0 0 {name=V3 lab=GND}
C {lab_wire.sym} 1360 -1420 0 0 {name=p8 sig_type=std_logic lab=Va}
C {vsource.sym} 1300 -1340 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1530 -1300 0 0 {name=V2 value=0.1 savecurrent=false}
C {gnd.sym} 1300 -1270 0 0 {name=V6 lab=GND}
C {launcher.sym} 1330 -1540 0 0 {name=h1
descr=Annotate OP
tclcommand="xschem annotate_op"}
C {lab_wire.sym} 1720 -1420 0 0 {name=p1 sig_type=std_logic lab=Vb}
C {vsource.sym} 1770 -1340 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 1770 -1270 0 0 {name=V5 lab=GND}
