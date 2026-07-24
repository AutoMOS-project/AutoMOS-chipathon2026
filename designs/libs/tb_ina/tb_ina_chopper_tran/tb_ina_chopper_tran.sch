v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -1320 790 -1280 {lab=VDD}
N 790 -1220 790 -1180 {lab=GND}
N 790 -1120 790 -1080 {lab=Vin1}
N 790 -1020 790 -980 {lab=GND}
N 1580 -1230 1580 -1200 {lab=VDD}
N 1580 -1060 1580 -1030 {lab=GND}
N 800 -640 800 -600 {lab=GND}
N 800 -740 800 -700 {lab=CLK}
N 1410 -1160 1480 -1160 {lab=Vin1}
N 1410 -1140 1480 -1140 {lab=Vin2}
N 1410 -1120 1480 -1120 {lab=CLKa}
N 1410 -1100 1480 -1100 {lab=CLKb}
N 1090 -1120 1090 -1080 {lab=Vin2}
N 1090 -1020 1090 -980 {lab=GND}
N 1680 -1140 1860 -1140 {lab=Vout1}
N 1860 -1140 1860 -1060 {lab=Vout1}
N 1680 -1120 1780 -1120 {lab=Vout2}
N 1780 -1120 1780 -1080 {lab=Vout2}
N 1780 -1020 1780 -980 {lab=GND}
N 1860 -1000 1860 -960 {lab=GND}
N 800 -740 840 -740 {lab=CLK}
N 960 -680 960 -640 {lab=GND}
N 960 -840 960 -800 {lab=VDD}
N 1080 -750 1140 -750 {lab=CLKa}
N 1080 -730 1140 -730 {lab=CLKb}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {simulator_commands.sym} 440 -1250 0 0 {name=MODELS
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
C {simulator_commands.sym} 440 -1020 0 0 {name=SIMULATIONS
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
let ton = tper/2
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
alter @V4[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]

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
let vclka = v(CLKa)
let vclkb = v(CLKb)
meas tran vmax1 MAX v(Vout1)
meas tran vmin1 MIN v(Vout1)
let spike = ((vmax1-vmin1)-1m)/2
plot vin_diff
plot vout_diff
plot vin1 vin2
plot vclka vclkb xlimit 0 500u
plot vout1 vout2
print spike

*************************************
** SAVE 
*************************************

write tb_ina_chopper_tran.raw


.endc
* ngspice commands
"}
C {vsource.sym} 790 -1250 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 790 -1180 0 0 {name=l3 lab=GND}
C {vdd.sym} 790 -1320 0 0 {name=l7 lab=VDD}
C {vsource.sym} 790 -1050 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 790 -1100 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 1580 -1230 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1580 -1030 0 0 {name=l4 lab=GND}
C {vsource.sym} 800 -670 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 800 -600 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 800 -720 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1450 -1160 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1450 -1140 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1450 -1120 0 0 {name=p7 sig_type=std_logic lab=CLKa}
C {lab_wire.sym} 1450 -1100 0 0 {name=p8 sig_type=std_logic lab=CLKb}
C {gnd.sym} 790 -980 0 0 {name=l8 lab=GND}
C {vsource.sym} 1090 -1050 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1090 -1100 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1090 -980 0 0 {name=l9 lab=GND}
C {capa.sym} 1780 -1050 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1860 -1030 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1780 -980 0 0 {name=l10 lab=GND}
C {gnd.sym} 1860 -960 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 1740 -1140 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1740 -1120 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 1580 -1130 0 0 {name=x1}
C {libs/core_ina/ina_clockgen/ina_clockgen.sym} 960 -740 0 0 {name=x2}
C {vdd.sym} 960 -840 0 0 {name=l12 lab=VDD}
C {gnd.sym} 960 -640 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 1130 -730 0 0 {name=p12 sig_type=std_logic lab=CLKb}
C {lab_wire.sym} 1130 -750 0 0 {name=p11 sig_type=std_logic lab=CLKa}
