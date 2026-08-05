v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1540 -1380 1540 -1340 {lab=#net1}
N 1540 -1280 1540 -1240 {lab=GND}
N 1680 -1430 1740 -1430 {lab=Vb}
N 1340 -1430 1400 -1430 {lab=Va}
N 1340 -1490 1340 -1430 {lab=Va}
N 1340 -1590 1340 -1550 {lab=Vb}
N 1340 -1590 1740 -1590 {lab=Vb}
N 1740 -1590 1740 -1430 {lab=Vb}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true}
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
C {simulator_commands.sym} 870 -1370 0 0 {name=SIMULATIONS
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

*************************************
** SOURCES
*************************************

alter @V1[DC] = 0
alter @V2[DC] = $&Vg


*************************************
** DC SWEEP SIMULATION
*************************************

dc V1 -1.65 1.65 0.001

*************************************
** PLOTS
*************************************

setplot dc1
let Va = v(Va)
let Vb = v(Vb)
let Vin = Va-Vb
let Iin = -1*i(v1)
let Req = Vin/Iin
plot Req
print Req 

*************************************
** SAVE 
*************************************

write tb_ina_pseudores_dc.raw

.endc
* ngspice commands
"}
C {gnd.sym} 1540 -1240 0 0 {name=V3 lab=GND}
C {lab_wire.sym} 1370 -1430 0 0 {name=p8 sig_type=std_logic lab=Va}
C {vsource.sym} 1340 -1520 2 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 1540 -1310 0 0 {name=V2 value=0.1 savecurrent=false}
C {lab_wire.sym} 1720 -1430 0 0 {name=p1 sig_type=std_logic lab=Vb}
C {noconn.sym} 1540 -1380 0 0 {name=l2}
C {libs/core_ina/ina_pseudores/ina_pseudores2.sym} 1540 -1430 0 0 {name=x1}
