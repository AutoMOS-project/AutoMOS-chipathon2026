v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -1320 790 -1280 {lab=VDD}
N 790 -1220 790 -1180 {lab=GND}
N 980 -1320 980 -1280 {lab=Vin}
N 980 -1220 980 -1180 {lab=GND}
N 1580 -1230 1580 -1200 {lab=VDD}
N 1580 -1060 1580 -1030 {lab=GND}
N 820 -840 820 -800 {lab=GND}
N 820 -940 820 -900 {lab=CLK}
N 1410 -1160 1480 -1160 {lab=Vin}
N 1410 -1140 1480 -1140 {lab=Vin}
N 1410 -1120 1480 -1120 {lab=CLKa}
N 1410 -1100 1480 -1100 {lab=CLKb}
N 1680 -1140 1860 -1140 {lab=Vout1}
N 1860 -1140 1860 -1060 {lab=Vout1}
N 1680 -1120 1780 -1120 {lab=Vout2}
N 1780 -1120 1780 -1080 {lab=Vout2}
N 1780 -1020 1780 -980 {lab=GND}
N 1860 -1000 1860 -960 {lab=GND}
N 820 -940 860 -940 {lab=CLK}
N 980 -880 980 -840 {lab=GND}
N 980 -1040 980 -1000 {lab=VDD}
N 1100 -950 1160 -950 {lab=CLKa}
N 1100 -930 1160 -930 {lab=CLKb}
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

set color0 = white

*************************************
** INPUT PARAMETERS
*************************************

let Vdd  = 3.3
let Itest = 1u

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = 0
alter @V3[DC] = $&Vdd
alter @I0[DC] = $&Itest
alter @I1[DC] = $&Itest

*************************************
** DC SWEEP SIMULATION
*************************************

dc V2 0 3.3 0.001

*************************************
** PLOTS
*************************************

setplot dc1
let vout1 = v(Vout1)
let vout2 = v(Vout2)
let vin = v(Vin)
let Ron1 = (vin - vout1)/$&Itest
let Ron2 = (vin - vout2)/$&Itest
plot Ron1 Ron2

*************************************
** SAVE 
*************************************

write tb_ina_chopper_dc.raw

.endc
* ngspice commands
"}
C {vsource.sym} 790 -1250 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 790 -1180 0 0 {name=l3 lab=GND}
C {vdd.sym} 790 -1320 0 0 {name=l7 lab=VDD}
C {vsource.sym} 980 -1250 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 980 -1300 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {vdd.sym} 1580 -1230 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1580 -1030 0 0 {name=l4 lab=GND}
C {vsource.sym} 820 -870 0 0 {name=V3 value=3.3 savecurrent=false}
C {gnd.sym} 820 -800 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 820 -920 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1450 -1160 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1450 -1140 0 0 {name=p6 sig_type=std_logic lab=Vin}
C {lab_wire.sym} 1450 -1120 0 0 {name=p7 sig_type=std_logic lab=CLKa}
C {lab_wire.sym} 1450 -1100 0 0 {name=p8 sig_type=std_logic lab=CLKb}
C {gnd.sym} 980 -1180 0 0 {name=l8 lab=GND}
C {gnd.sym} 1780 -980 0 0 {name=l10 lab=GND}
C {gnd.sym} 1860 -960 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 1740 -1140 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1740 -1120 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 1580 -1130 0 0 {name=x1}
C {libs/core_ina/ina_clockgen/ina_clockgen.sym} 980 -940 0 0 {name=x2}
C {vdd.sym} 980 -1040 0 0 {name=l12 lab=VDD}
C {gnd.sym} 980 -840 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 1150 -930 0 0 {name=p12 sig_type=std_logic lab=CLKb}
C {lab_wire.sym} 1150 -950 0 0 {name=p11 sig_type=std_logic lab=CLKa}
C {isource.sym} 1860 -1030 0 0 {name=I0 value=1u}
C {isource.sym} 1780 -1050 0 0 {name=I1 value=1u}
