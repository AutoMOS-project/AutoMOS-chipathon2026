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
N 1210 -1120 1210 -1080 {lab=VDD}
N 1510 -1140 1510 -1100 {lab=Vref}
N 1510 -1040 1510 -1000 {lab=GND}
N 2110 -1460 2110 -1440 {lab=VDD}
N 2110 -1240 2110 -1220 {lab=GND}
N 1900 -1350 1960 -1350 {lab=Vin1}
N 1900 -1330 1960 -1330 {lab=Vin2}
N 1900 -1370 1960 -1370 {lab=Vref}
N 1900 -1310 1960 -1310 {lab=Vg}
N 1900 -1290 1960 -1290 {lab=Ib}
N 1210 -820 1210 -780 {lab=GND}
N 1210 -920 1210 -880 {lab=CLK}
N 1510 -930 1510 -890 {lab=Vg}
N 1510 -830 1510 -790 {lab=GND}
N 1900 -1390 1960 -1390 {lab=CLK}
N 1210 -1020 1210 -960 {lab=Ib}
N 2260 -1350 2360 -1350 {lab=Vout1}
N 2260 -1330 2360 -1330 {lab=Vout2}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true}
C {simulator_commands.sym} 870 -1610 0 0 {name=MODELS
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
C {simulator_commands.sym} 870 -1380 0 0 {name=SIMULATIONS
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
let Vcm  = Vdd/2
let Vamp = 0.5m
let fecg = 0.5

*************************************
** CHOPPER PARAMETERS
*************************************

let fchop = 4k
let tper = 1/fchop
let ton = tper/2
let tr = 10n
let tf = 10n

*************************************
** BIAS PARAMETERS
*************************************

let Ibias = 2u
let Vref  = Vdd/2
let Vg 	  = 0.1

*************************************
** TRANSIENT PARAMETERS
*************************************

let tstop = 4
let tstep = 100u

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[SIN] = [ $&Vcm $&Vamp $&fecg ]
alter @V3[SIN] = [ $&Vcm -$&Vamp $&fecg ]
alter @V4[DC] = $&Vref
alter @I0[DC] = $&Ibias
alter @V5[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]
alter @V6[DC] = $&Vg

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
let vcm_out = (vout1+vout2)/2
let vclk = v(CLK)
plot vclk xlimit 40m 41m
plot vin1 vin2
plot vin_diff
plot vout1 vout2
plot vout_diff
plot vin_diff vout_diff 
plot vcm_out 1.65

*************************************
** MEASUREMENTS
*************************************

let tinit=tstop-40m
meas tran VCM_AVG AVG vcm_out FROM=tinit TO=tstop
meas tran VCM_MIN MIN vcm_out FROM=tinit TO=tstop
meas tran VCM_MAX MAX vcm_out FROM=tinit TO=tstop
print VCM_AVG
print VCM_MIN
print VCM_MAX

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
C {isource.sym} 1210 -1050 0 0 {name=I0 value=2u}
C {vdd.sym} 1210 -1120 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1210 -990 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {vsource.sym} 1510 -1070 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1510 -1120 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1510 -1000 0 0 {name=l6 lab=GND}
C {vdd.sym} 2110 -1460 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2110 -1220 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 2320 -1350 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2320 -1330 0 0 {name=p4 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 1940 -1350 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1940 -1330 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1940 -1370 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1940 -1290 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1940 -1310 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {vsource.sym} 1210 -850 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 1210 -780 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1210 -900 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {vsource.sym} 1510 -860 0 0 {name=V6 value=0.1 savecurrent=false}
C {lab_wire.sym} 1510 -910 0 0 {name=V7 sig_type=std_logic lab=Vg}
C {gnd.sym} 1510 -790 0 0 {name=V8 lab=GND}
C {lab_wire.sym} 1940 -1390 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {noconn.sym} 2360 -1350 0 1 {name=l10}
C {noconn.sym} 2360 -1330 0 1 {name=l11}
C {libs/core_ina/ina/ina.sym} 2110 -1340 0 0 {name=x1}
