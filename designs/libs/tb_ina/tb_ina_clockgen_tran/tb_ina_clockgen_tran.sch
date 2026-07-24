v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1330 -1450 1330 -1410 {lab=VDD}
N 1330 -1350 1330 -1310 {lab=GND}
N 2430 -1390 2430 -1310 {lab=CLKa}
N 2350 -1250 2350 -1210 {lab=GND}
N 2430 -1250 2430 -1210 {lab=GND}
N 2090 -1390 2430 -1390 {lab=CLKa}
N 2090 -1370 2350 -1370 {lab=CLKb}
N 2350 -1370 2350 -1310 {lab=CLKb}
N 1970 -1460 1970 -1440 {lab=VDD}
N 1970 -1320 1970 -1300 {lab=GND}
N 1550 -1350 1550 -1310 {lab=GND}
N 1550 -1450 1550 -1410 {lab=CLK}
N 1790 -1380 1850 -1380 {lab=CLK}
N 1970 -1140 1970 -1120 {lab=VDD}
N 1970 -1000 1970 -980 {lab=GND}
N 2350 -940 2350 -900 {lab=GND}
N 2090 -1060 2350 -1060 {lab=Vout1}
N 2350 -1060 2350 -1000 {lab=Vout1}
N 1810 -1060 1870 -1060 {lab=CLK}
N 1970 -810 1970 -790 {lab=VDD}
N 1970 -590 1970 -570 {lab=GND}
N 2380 -570 2380 -530 {lab=GND}
N 2120 -690 2380 -690 {lab=Vout2}
N 2380 -690 2380 -630 {lab=Vout2}
N 1800 -720 1860 -720 {lab=CLK}
N 1330 -1230 1330 -1190 {lab=CLK2}
N 1330 -1130 1330 -1090 {lab=GND}
N 1800 -660 1860 -660 {lab=CLK2}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=2}
C {simulator_commands.sym} 930 -1540 0 0 {name=MODELS
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
C {simulator_commands.sym} 920 -1320 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white

*************************************
** INPUT CLOCK PARAMETERS
*************************************

let Vdd = 3.3
let fchop = 4k
let tper = 1/fchop
let ton = tper/2
let tr = 10n
let tf = 10n
let tper2 = 2*tper
let ton2 = tper2/2

*************************************
** TRANSIENT PARAMETERS
*************************************

let tstop = 600u
let tstep = 10n

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]
alter @V3[PULSE] = [ $&Vdd 0 0 $&tr $&tf $&ton2 $&tper2 0 ]

*************************************
** TRANSIENT SIMULATION
*************************************

tran $&tstep $&tstop

*************************************
** PLOTS
*************************************

setplot tran1
let vclk = v(CLK)
let vclka = v(CLKa)
let vclkb = v(CLKb)
let vclk2 = v(CLK2)
let vout1 = v(Vout1)
let vout2 = v(Vout2)
plot vclk
plot vclka vclkb
plot vclka+vclkb
plot vclk vout1
plot vclk2 vout2

*************************************
** SAVE 
*************************************

write tb_ina_clockgen_tran.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1330 -1380 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1330 -1310 0 0 {name=l3 lab=GND}
C {vdd.sym} 1330 -1450 0 0 {name=l7 lab=VDD}
C {capa.sym} 2350 -1280 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2430 -1280 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2350 -1210 0 0 {name=l10 lab=GND}
C {gnd.sym} 2430 -1210 0 0 {name=l11 lab=GND}
C {vdd.sym} 1970 -1460 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1970 -1300 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 2190 -1390 0 0 {name=p9 sig_type=std_logic lab=CLKa}
C {lab_wire.sym} 2190 -1370 0 0 {name=p4 sig_type=std_logic lab=CLKb}
C {vsource.sym} 1550 -1380 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 1550 -1310 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1550 -1430 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1830 -1380 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {libs/core_ina/ina_clockgen/ina_clockgen.sym} 1970 -1380 0 0 {name=x1}
C {libs/core_ina/ina_inv/ina_inv.sym} 1970 -1060 0 0 {name=x2}
C {vdd.sym} 1970 -1140 0 0 {name=l5 lab=VDD}
C {gnd.sym} 1970 -980 0 0 {name=l6 lab=GND}
C {capa.sym} 2350 -970 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2350 -900 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 2190 -1060 0 0 {name=p1 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1850 -1060 0 0 {name=p2 sig_type=std_logic lab=CLK}
C {vdd.sym} 1970 -810 0 0 {name=l9 lab=VDD}
C {gnd.sym} 1970 -570 0 0 {name=l13 lab=GND}
C {capa.sym} 2380 -600 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2380 -530 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 2220 -690 0 0 {name=p3 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 1840 -720 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_ina/ina_nand/ina_nand.sym} 1980 -690 0 0 {name=x3}
C {vsource.sym} 1330 -1160 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1330 -1210 0 0 {name=p6 sig_type=std_logic lab=CLK2}
C {gnd.sym} 1330 -1090 0 0 {name=l15 lab=GND}
C {lab_wire.sym} 1840 -660 0 0 {name=p7 sig_type=std_logic lab=CLK2}
