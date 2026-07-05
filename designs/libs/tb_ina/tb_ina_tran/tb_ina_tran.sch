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
N 1510 -1360 1510 -1320 {lab=Vin2}
N 1510 -1260 1510 -1220 {lab=GND}
N 2600 -1350 2600 -1270 {lab=Vout1}
N 2520 -1210 2520 -1170 {lab=GND}
N 2600 -1210 2600 -1170 {lab=GND}
N 2260 -1350 2600 -1350 {lab=Vout1}
N 2260 -1330 2520 -1330 {lab=Vout2}
N 1210 -1120 1210 -1080 {lab=VDD}
N 1210 -1020 1210 -980 {lab=Ib}
N 1510 -1140 1510 -1100 {lab=Vref}
N 1510 -1040 1510 -1000 {lab=GND}
N 2520 -1330 2520 -1270 {lab=Vout2}
N 2110 -1460 2110 -1440 {lab=VDD}
N 2110 -1240 2110 -1220 {lab=GND}
N 1900 -1400 1960 -1400 {lab=Vin1}
N 1900 -1380 1960 -1380 {lab=Vin2}
N 1900 -1340 1960 -1340 {lab=Vref}
N 1900 -1360 1960 -1360 {lab=Vg}
N 1900 -1320 1960 -1320 {lab=Ib}
N 1210 -830 1210 -790 {lab=GND}
N 1210 -930 1210 -890 {lab=CLK}
N 1510 -830 1510 -790 {lab=GND}
N 1510 -930 1510 -890 {lab=CLKb}
N 1510 -1560 1510 -1520 {lab=Vg}
N 1510 -1460 1510 -1420 {lab=GND}
N 1900 -1300 1960 -1300 {lab=CLK}
N 1900 -1280 1960 -1280 {lab=CLKb}
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
C {simulator_commands.sym} 850 -1380 0 0 {name=SIMULATIONS
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
** CHOPPER PARAMETERS
*************************************

let fchop = 4k
let tper = 1/fchop
let td = 1u
let ton = tper/2-td
let tdclk = td/2
let tdclkb = tper/2+td/2
let tr = 10n
let tf = 10n

*************************************
** BIAS PARAMETERS
*************************************

let Ibias = 1u
let Vref  = 1.65
let Vg 	  = 1.65

*************************************
** TRANSIENT PARAMETERS
*************************************

let tstop = 20m
let tstep = 500n

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[SIN] = [ $&Vcm $&Vamp $&fecg ]
alter @V3[SIN] = [ $&Vcm -$&Vamp $&fecg ]
alter @V4[DC] = $&Vref
alter @I0[DC] = $&Ibias
alter @V5[PULSE] = [ 0 $&Vdd $&tdclk $&tr $&tf $&ton $&tper 0 ]
alter @V6[PULSE] = [ 0 $&Vdd $&tdclkb $&tr $&tf $&ton $&tper 0 ]
alter @V7[DC] = $&Vg

*************************************
** TRANSIENT SIMULATION
*************************************

tran $&tstep $&tstop

*************************************
** PLOTS
*************************************

setplot tran1
let vin1 = v(Vin1)
let vin2 = v(Vin2)
let vout1 = v(Vout1)
let vout2 = v(Vout2)
let vin_diff  = vin1-vin2
let vout_diff = vout1-vout2
let vclk = v(CLK)
let vclkb = v(CLKb)
plot vclk vclkb
plot vin1 vin2
plot vin_diff
plot vout1 vout2
plot vout_diff

*************************************
** SAVE 
*************************************

write tb_ina_tran.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1210 -1490 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1210 -1420 0 0 {name=l3 lab=GND}
C {vdd.sym} 1210 -1560 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1210 -1290 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1210 -1340 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {gnd.sym} 1210 -1220 0 0 {name=l8 lab=GND}
C {vsource.sym} 1510 -1290 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1510 -1340 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1510 -1220 0 0 {name=l9 lab=GND}
C {capa.sym} 2520 -1240 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2600 -1240 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2520 -1170 0 0 {name=l10 lab=GND}
C {gnd.sym} 2600 -1170 0 0 {name=l11 lab=GND}
C {isource.sym} 1210 -1050 0 0 {name=I0 value=1u}
C {vdd.sym} 1210 -1120 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1210 -990 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {vsource.sym} 1510 -1070 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1510 -1120 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1510 -1000 0 0 {name=l6 lab=GND}
C {libs/core_ina/ina/ina.sym} 2110 -1340 0 0 {name=x1}
C {vdd.sym} 2110 -1460 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2110 -1220 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 2360 -1350 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2360 -1330 0 0 {name=p4 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 1940 -1400 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1940 -1380 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1940 -1340 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1940 -1320 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1940 -1360 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {vsource.sym} 1210 -860 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 1210 -790 0 0 {name=l12 lab=GND}
C {vsource.sym} 1510 -860 0 0 {name=V6 value=3.3 savecurrent=false}
C {gnd.sym} 1510 -790 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 1210 -910 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1510 -910 0 0 {name=p13 sig_type=std_logic lab=CLKb}
C {vsource.sym} 1510 -1490 0 0 {name=V7 value=1.65 savecurrent=false}
C {lab_wire.sym} 1510 -1540 0 0 {name=p14 sig_type=std_logic lab=Vg}
C {gnd.sym} 1510 -1420 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 1940 -1300 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1940 -1280 0 0 {name=p16 sig_type=std_logic lab=CLKb}
