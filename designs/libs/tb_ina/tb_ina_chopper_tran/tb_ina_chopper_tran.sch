v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -1200 540 -1160 {lab=VDD}
N 540 -1100 540 -1060 {lab=GND}
N 540 -1000 540 -960 {lab=Vin1}
N 540 -900 540 -860 {lab=GND}
N 1360 -1070 1360 -1040 {lab=VDD}
N 1360 -900 1360 -870 {lab=GND}
N 540 -700 540 -660 {lab=GND}
N 540 -800 540 -760 {lab=CLK}
N 840 -700 840 -660 {lab=GND}
N 840 -800 840 -760 {lab=CLKb}
N 1190 -1000 1260 -1000 {lab=Vin1}
N 1190 -980 1260 -980 {lab=Vin2}
N 1190 -960 1260 -960 {lab=CLK}
N 1190 -940 1260 -940 {lab=CLKb}
N 840 -1000 840 -960 {lab=Vin2}
N 840 -900 840 -860 {lab=GND}
N 1460 -980 1640 -980 {lab=Vout1}
N 1640 -980 1640 -900 {lab=Vout1}
N 1460 -960 1560 -960 {lab=Vout2}
N 1560 -960 1560 -920 {lab=Vout2}
N 1560 -860 1560 -820 {lab=GND}
N 1640 -840 1640 -800 {lab=GND}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {simulator_commands.sym} 190 -1240 0 0 {name=MODELS
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
C {simulator_commands.sym} 190 -1040 0 0 {name=SIMULATIONS
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
alter @V4[PULSE] = [ 0 $&Vdd $&tdclk $&tr $&tf $&ton $&tper 0 ]
alter @V5[PULSE] = [ 0 $&Vdd $&tdclkb $&tr $&tf $&ton $&tper 0 ]

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
let vclk = v(CLK)
let vclkb = v(CLKb)
plot vin_diff
plot vout_diff
plot vin1 vin2
plot vclk vclkb
plot vout1 vout2

*************************************
** SAVE 
*************************************

write tb_ina_chopper_tran.raw


.endc
* ngspice commands
"}
C {vsource.sym} 540 -1130 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 540 -1060 0 0 {name=l3 lab=GND}
C {vdd.sym} 540 -1200 0 0 {name=l7 lab=VDD}
C {vsource.sym} 540 -930 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 540 -980 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 1360 -1070 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1360 -870 0 0 {name=l4 lab=GND}
C {vsource.sym} 540 -730 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 540 -660 0 0 {name=l5 lab=GND}
C {vsource.sym} 840 -730 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 840 -660 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 540 -780 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 840 -780 0 0 {name=p4 sig_type=std_logic lab=CLKb}
C {lab_wire.sym} 1230 -1000 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1230 -980 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1230 -960 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1230 -940 0 0 {name=p8 sig_type=std_logic lab=CLKb}
C {gnd.sym} 540 -860 0 0 {name=l8 lab=GND}
C {vsource.sym} 840 -930 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 840 -980 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 840 -860 0 0 {name=l9 lab=GND}
C {capa.sym} 1560 -890 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1640 -870 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1560 -820 0 0 {name=l10 lab=GND}
C {gnd.sym} 1640 -800 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 1520 -980 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1520 -960 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 1360 -970 0 0 {name=x1}
