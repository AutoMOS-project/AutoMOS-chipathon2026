v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1230 -1620 1230 -1580 {lab=VDD}
N 1230 -1520 1230 -1480 {lab=GND}
N 1530 -1620 1530 -1580 {lab=Vin}
N 1530 -1520 1530 -1480 {lab=GND}
N 1230 -1370 1230 -1330 {lab=VDD}
N 1530 -1390 1530 -1350 {lab=Vref}
N 1530 -1290 1530 -1250 {lab=GND}
N 2130 -1520 2130 -1500 {lab=VDD}
N 2130 -1300 2130 -1280 {lab=GND}
N 1920 -1410 1980 -1410 {lab=Vin}
N 1920 -1390 1980 -1390 {lab=Vin}
N 1920 -1430 1980 -1430 {lab=Vref}
N 1920 -1370 1980 -1370 {lab=Vg}
N 1920 -1350 1980 -1350 {lab=Ib}
N 1230 -1070 1230 -1030 {lab=GND}
N 1230 -1170 1230 -1130 {lab=CLK}
N 1530 -1180 1530 -1140 {lab=Vg}
N 1530 -1080 1530 -1040 {lab=GND}
N 1920 -1450 1980 -1450 {lab=CLK}
N 1230 -1270 1230 -1210 {lab=Ib}
N 2280 -1410 2380 -1410 {lab=Vout1}
N 2280 -1390 2380 -1390 {lab=Vout2}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {simulator_commands.sym} 720 -1520 0 0 {name=MODELS
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
C {simulator_commands.sym} 710 -1270 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white

*************************************
** PARAMETERS
*************************************

let Vdd  = 3.3
let Vcm  = Vdd/2
let Ibias = 2u
let Vg = 0.1

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = 0
alter @V3[DC] = $&Vcm
alter @I0[DC] = $&Ibias
alter @V4[DC] = $&Vdd
alter @V5[DC] = $&Vg

*************************************
** DC SWEEP SIMULATION
*************************************

dc V2 0 3.3 0.1

*************************************
** PLOTS
*************************************

setplot dc1
let vout1 = v(Vout1)
let vout2 = v(Vout2)
let vin = v(Vin)
let vout_diff = vout1-vout2
let vcm_out = (vout1+vout2)/2
plot vout_diff
plot vcm_out 

*************************************
** SAVE 
*************************************

write tb_ina_dc.raw

*************************************
** DC SWEEP SIMULATION2
*************************************

alter @V1[DC] = 0
alter @V2[DC] = $&Vcm
dc V1 0 3.5 0.1

setplot dc2
let vout1 = v(Vout1)
let vout2 = v(Vout2)
let vin = v(Vin)
let vcm_out = (vout1+vout2)/2
plot vcm_out

.endc
* ngspice commands
"}
C {vsource.sym} 1230 -1550 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1230 -1480 0 0 {name=l3 lab=GND}
C {vdd.sym} 1230 -1620 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1530 -1550 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1530 -1600 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {gnd.sym} 1530 -1480 0 0 {name=l8 lab=GND}
C {isource.sym} 1230 -1300 0 0 {name=I0 value=2u}
C {vdd.sym} 1230 -1370 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1230 -1240 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {vsource.sym} 1530 -1320 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1530 -1370 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1530 -1250 0 0 {name=l6 lab=GND}
C {vdd.sym} 2130 -1520 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2130 -1280 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 2340 -1410 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2340 -1390 0 0 {name=p4 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 1960 -1410 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1960 -1390 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1960 -1430 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1960 -1350 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1960 -1370 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {vsource.sym} 1230 -1100 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 1230 -1030 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1230 -1150 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {vsource.sym} 1530 -1110 0 0 {name=V5 value=0.1 savecurrent=false}
C {lab_wire.sym} 1530 -1160 0 0 {name=V7 sig_type=std_logic lab=Vg}
C {gnd.sym} 1530 -1040 0 0 {name=V8 lab=GND}
C {lab_wire.sym} 1960 -1450 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {noconn.sym} 2380 -1410 0 1 {name=l10}
C {noconn.sym} 2380 -1390 0 1 {name=l11}
C {libs/core_ina/ina/ina.sym} 2130 -1400 0 0 {name=x1}
