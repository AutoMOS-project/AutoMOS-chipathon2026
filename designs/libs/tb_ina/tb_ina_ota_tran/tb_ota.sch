v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1070 -1480 1070 -1440 {lab=VDD}
N 1070 -1380 1070 -1340 {lab=GND}
N 1070 -1280 1070 -1240 {lab=Vin1}
N 1070 -1180 1070 -1140 {lab=GND}
N 1890 -1350 1890 -1320 {lab=VDD}
N 1890 -1180 1890 -1150 {lab=GND}
N 1070 -840 1070 -800 {lab=GND}
N 1720 -1280 1790 -1280 {lab=Vin1}
N 1720 -1250 1790 -1250 {lab=Vin2}
N 1720 -1220 1790 -1220 {lab=Vtail}
N 1370 -1280 1370 -1240 {lab=Vin2}
N 1370 -1180 1370 -1140 {lab=GND}
N 1990 -1270 2170 -1270 {lab=Vout1}
N 2170 -1270 2170 -1190 {lab=Vout1}
N 1990 -1230 2090 -1230 {lab=Vout2}
N 2090 -1230 2090 -1190 {lab=Vout2}
N 2090 -1130 2090 -1090 {lab=GND}
N 2170 -1130 2170 -1090 {lab=GND}
N 1070 -1060 1070 -1020 {lab=VDD}
N 1050 -990 1070 -990 {lab=VDD}
N 1050 -1040 1050 -990 {lab=VDD}
N 1050 -1040 1070 -1040 {lab=VDD}
N 1110 -990 1170 -990 {lab=Vtail}
N 1070 -940 1140 -940 {lab=Vtail}
N 1140 -990 1140 -940 {lab=Vtail}
N 1070 -960 1070 -900 {lab=Vtail}
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
C {simulator_commands.sym} 730 -1250 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white

*************************************
** ECG INPUT PARAMETERS
*************************************

let Vdd  = 3.3
let Vcm  = 1.65
let Vamp = 0.5m
let fecg = 100

*************************************
** BIAS PARAMETERS
*************************************

let Ibias = 10u

*************************************
** TRANSIENT PARAMETERS
*************************************

let tstop = 10m
let tstep = 100n

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[SIN] = [ $&Vcm $&Vamp $&fecg ]
alter @V3[SIN] = [ $&Vcm -$&Vamp $&fecg ]
alter @I0[DC] = $&Ibias

*************************************
** TRANSIENT SIMULATION
*************************************

tran $&tstep $&tstop

*************************************
** PLOTS
*************************************

setplot tran1
let vin_diff  = v(Vin1)-v(Vin2)
let vout_diff = v(Vout1)-v(Vout2)
let vin1 = v(Vin1)
let vin2 = v(Vin2)
let vout1 = v(Vout1)
let vout2 = v(Vout2)
plot vin_diff
plot vout_diff
plot vin1 vin2
plot vout1 vout2

*************************************
** SAVE 
*************************************

write tb_ota_tran.raw


.endc
* ngspice commands
"}
C {vsource.sym} 1070 -1410 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1070 -1340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1070 -1480 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1070 -1210 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1070 -1260 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 1890 -1350 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1890 -1150 0 0 {name=l4 lab=GND}
C {gnd.sym} 1070 -800 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 1160 -990 0 0 {name=p3 sig_type=std_logic lab=Vtail}
C {lab_wire.sym} 1760 -1280 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1760 -1250 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1760 -1220 0 0 {name=p7 sig_type=std_logic lab=Vtail}
C {gnd.sym} 1070 -1140 0 0 {name=l8 lab=GND}
C {vsource.sym} 1370 -1210 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1370 -1260 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1370 -1140 0 0 {name=l9 lab=GND}
C {capa.sym} 2090 -1160 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2170 -1160 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2090 -1090 0 0 {name=l10 lab=GND}
C {gnd.sym} 2170 -1090 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 2050 -1270 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2050 -1230 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {AutoMOS/INA/OTA/ota.sym} 1890 -1250 0 0 {name=x1}
C {symbols/pfet_03v3.sym} 1090 -990 0 1 {name=M1
L=2u
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
C {isource.sym} 1070 -870 0 0 {name=I0 value=1u}
C {vdd.sym} 1070 -1060 0 0 {name=l12 lab=VDD}
