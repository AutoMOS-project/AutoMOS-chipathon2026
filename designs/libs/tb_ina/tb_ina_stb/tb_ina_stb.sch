v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1240 -1610 1240 -1570 {lab=VDD}
N 1240 -1510 1240 -1470 {lab=GND}
N 1240 -1410 1240 -1370 {lab=Vin1}
N 1240 -1310 1240 -1270 {lab=GND}
N 1540 -1410 1540 -1370 {lab=Vin2}
N 1540 -1310 1540 -1270 {lab=GND}
N 1240 -1170 1240 -1130 {lab=VDD}
N 1540 -1190 1540 -1150 {lab=Vref}
N 1540 -1090 1540 -1050 {lab=GND}
N 2140 -1510 2140 -1490 {lab=VDD}
N 2140 -1290 2140 -1270 {lab=GND}
N 1930 -1400 1990 -1400 {lab=Vin1}
N 1930 -1380 1990 -1380 {lab=Vin2}
N 1930 -1420 1990 -1420 {lab=Vref}
N 1930 -1360 1990 -1360 {lab=Vg}
N 1930 -1340 1990 -1340 {lab=Ib}
N 1240 -870 1240 -830 {lab=GND}
N 1240 -970 1240 -930 {lab=CLK}
N 1540 -980 1540 -940 {lab=Vg}
N 1540 -880 1540 -840 {lab=GND}
N 1930 -1440 1990 -1440 {lab=CLK}
N 1240 -1070 1240 -1010 {lab=Ib}
N 2290 -1400 2390 -1400 {lab=Vout1}
N 2290 -1380 2390 -1380 {lab=Vout2}
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
C {simulator_commands.sym} 730 -1260 0 0 {name=SIMULATIONS
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
let Vcm  = 1.65
let Ibias = 2u
let Vg  = 0.1

*************************************
** CHOPPER PARAMETERS
*************************************

let fchop = 4k
let tper = 1/fchop
let ton = tper/2
let tr = 10n
let tf = 10n

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = $&Vcm
alter @V3[DC] = $&Vcm
alter @V2[ACMAG] = 0.5
alter @V3[ACMAG] = -0.5
alter @V4[DC] = $&Vcm
alter @I0[DC] = $&Ibias
alter @V5[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]
alter @V6[DC] = $&Vg

*************************************
** AC SIMULATION
*************************************

ac dec 100 0.01 1G

*************************************
** MEASUREMENTS
*************************************

let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
let phase_deg = cph(Av)*180/pi
meas ac UGF WHEN gain_db=0
meas ac phase_UGF FIND phase_deg WHEN gain_db=0
let PM = phase_UGF + 180
print PM

*************************************
** PLOTS
*************************************

setplot ac1
plot phase_deg

*************************************
** SAVE 
*************************************

write tb_ina_stb.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1240 -1540 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1240 -1470 0 0 {name=l3 lab=GND}
C {vdd.sym} 1240 -1610 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1240 -1340 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1240 -1390 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {gnd.sym} 1240 -1270 0 0 {name=l8 lab=GND}
C {vsource.sym} 1540 -1340 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1540 -1390 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1540 -1270 0 0 {name=l9 lab=GND}
C {isource.sym} 1240 -1100 0 0 {name=I0 value=1u}
C {vdd.sym} 1240 -1170 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1240 -1040 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {vsource.sym} 1540 -1120 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1540 -1170 0 0 {name=p17 sig_type=std_logic lab=Vref}
C {gnd.sym} 1540 -1050 0 0 {name=l12 lab=GND}
C {libs/core_ina/ina/ina.sym} 2140 -1390 0 0 {name=x2}
C {vdd.sym} 2140 -1510 0 0 {name=l19 lab=VDD}
C {gnd.sym} 2140 -1270 0 0 {name=l20 lab=GND}
C {lab_wire.sym} 2350 -1400 0 0 {name=p18 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2350 -1380 0 0 {name=p19 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 1970 -1400 0 0 {name=p20 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1970 -1380 0 0 {name=p21 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1970 -1420 0 0 {name=p22 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1970 -1340 0 0 {name=p23 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1970 -1360 0 0 {name=p24 sig_type=std_logic lab=Vg}
C {vsource.sym} 1240 -900 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 1240 -830 0 0 {name=l21 lab=GND}
C {lab_wire.sym} 1240 -950 0 0 {name=p25 sig_type=std_logic lab=CLK}
C {vsource.sym} 1540 -910 0 0 {name=V6 value=0.1 savecurrent=false}
C {lab_wire.sym} 1540 -960 0 0 {name=V15 sig_type=std_logic lab=Vg}
C {gnd.sym} 1540 -840 0 0 {name=V16 lab=GND}
C {lab_wire.sym} 1970 -1440 0 0 {name=p26 sig_type=std_logic lab=CLK}
C {noconn.sym} 2390 -1400 0 1 {name=l22}
C {noconn.sym} 2390 -1380 0 1 {name=l23}
