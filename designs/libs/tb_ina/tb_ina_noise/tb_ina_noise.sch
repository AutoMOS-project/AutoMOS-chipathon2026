v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1230 -1620 1230 -1580 {lab=VDD}
N 1230 -1520 1230 -1480 {lab=GND}
N 1230 -1420 1230 -1380 {lab=Vin1}
N 1230 -1320 1230 -1280 {lab=GND}
N 1530 -1420 1530 -1380 {lab=Vin2}
N 1530 -1320 1530 -1280 {lab=GND}
N 1230 -1180 1230 -1140 {lab=VDD}
N 1530 -1200 1530 -1160 {lab=Vref}
N 1530 -1100 1530 -1060 {lab=GND}
N 2130 -1520 2130 -1500 {lab=VDD}
N 2130 -1300 2130 -1280 {lab=GND}
N 1920 -1410 1980 -1410 {lab=Vin1}
N 1920 -1390 1980 -1390 {lab=Vin2}
N 1920 -1430 1980 -1430 {lab=Vref}
N 1920 -1370 1980 -1370 {lab=Vg}
N 1920 -1350 1980 -1350 {lab=Ib}
N 1230 -880 1230 -840 {lab=GND}
N 1230 -980 1230 -940 {lab=CLK}
N 1530 -990 1530 -950 {lab=Vg}
N 1530 -890 1530 -850 {lab=GND}
N 1920 -1450 1980 -1450 {lab=CLK}
N 1230 -1080 1230 -1020 {lab=Ib}
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
C {simulator_commands.sym} 720 -1270 0 0 {name=SIMULATIONS
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
alter @V2[ACMAG] = 1
alter @V3[ACMAG] = 0
alter @V4[DC] = $&Vcm
alter @I0[DC] = $&Ibias
alter @V5[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]
alter @V6[DC] = $&Vg

*************************************
** NOISE SIMULATION
*************************************

op
noise v(Vout1) V2 dec 100 0.01 1G

*************************************
** PLOTS
*************************************

setplot noise1
plot onoise_spectrum
plot inoise_spectrum

*************************************
** MEASUREMENTS
*************************************

* Input Noise Density
let inoise_1Hz   = inoise_spectrum[200]
let inoise_10Hz  = inoise_spectrum[300]
let inoise_100Hz = inoise_spectrum[400]
print inoise_1Hz
print inoise_10Hz
print inoise_100Hz
* Output Noise Density
let onoise_1Hz = onoise_spectrum[200]
let onoise_10Hz = onoise_spectrum[300]
let onoise_100Hz = onoise_spectrum[400]
print onoise_1Hz
print onoise_10Hz
print onoise_100Hz

*************************************
** SAVE 
*************************************

write tb_ina_noise.raw

*************************************
** NOISE SIMULATION2
*************************************

noise v(Vout1) V2 dec 500 0.5 150

setplot noise4
* Integrated Input-Referred Noise (0.5 Hz - 150 Hz)
let inoise_rms = inoise_total
print inoise_rms
* Integrated Output Noise (0.5 Hz - 150 Hz)
let onoise_rms = onoise_total
print onoise_rms

.endc
* ngspice commands
"}
C {vsource.sym} 1230 -1550 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1230 -1480 0 0 {name=l3 lab=GND}
C {vdd.sym} 1230 -1620 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1230 -1350 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1230 -1400 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {gnd.sym} 1230 -1280 0 0 {name=l8 lab=GND}
C {vsource.sym} 1530 -1350 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1530 -1400 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1530 -1280 0 0 {name=l9 lab=GND}
C {isource.sym} 1230 -1110 0 0 {name=I0 value=2u}
C {vdd.sym} 1230 -1180 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1230 -1050 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {vsource.sym} 1530 -1130 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1530 -1180 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1530 -1060 0 0 {name=l6 lab=GND}
C {vdd.sym} 2130 -1520 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2130 -1280 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 2340 -1410 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2340 -1390 0 0 {name=p4 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 1960 -1410 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1960 -1390 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1960 -1430 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 1960 -1350 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 1960 -1370 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {vsource.sym} 1230 -910 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 1230 -840 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1230 -960 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {vsource.sym} 1530 -920 0 0 {name=V6 value=0.1 savecurrent=false}
C {lab_wire.sym} 1530 -970 0 0 {name=V7 sig_type=std_logic lab=Vg}
C {gnd.sym} 1530 -850 0 0 {name=V8 lab=GND}
C {lab_wire.sym} 1960 -1450 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {noconn.sym} 2380 -1410 0 1 {name=l10}
C {noconn.sym} 2380 -1390 0 1 {name=l11}
C {libs/core_ina/ina/ina.sym} 2130 -1400 0 0 {name=x1}
