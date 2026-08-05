v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1070 -1480 1070 -1440 {lab=VDD}
N 1070 -1380 1070 -1340 {lab=GND}
N 1070 -1280 1070 -1240 {lab=Vin1}
N 1070 -1180 1070 -1140 {lab=GND}
N 1890 -1350 1890 -1320 {lab=VDD}
N 1890 -1180 1890 -1150 {lab=GND}
N 1070 -840 1070 -800 {lab=GND}
N 1720 -1270 1790 -1270 {lab=Vin1}
N 1720 -1250 1790 -1250 {lab=Vin2}
N 1720 -1230 1790 -1230 {lab=Vtail}
N 1370 -1280 1370 -1240 {lab=Vin2}
N 1370 -1180 1370 -1140 {lab=GND}
N 1990 -1240 2090 -1240 {lab=Vout2}
N 1070 -1060 1070 -1020 {lab=VDD}
N 1050 -990 1070 -990 {lab=VDD}
N 1050 -1040 1050 -990 {lab=VDD}
N 1050 -1040 1070 -1040 {lab=VDD}
N 1110 -990 1170 -990 {lab=Vtail}
N 1070 -940 1140 -940 {lab=Vtail}
N 1140 -990 1140 -940 {lab=Vtail}
N 1070 -960 1070 -900 {lab=Vtail}
N 1990 -1260 2090 -1260 {lab=Vout1}
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
C {simulator_commands.sym} 730 -1240 0 0 {name=SIMULATIONS
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

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = $&Vcm
alter @V3[DC] = $&Vcm
alter @V2[ACMAG] = 1
alter @V3[ACMAG] = 0
alter @I0[DC] = $&Ibias

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

* Input-Referred Noise Density
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

write tb_ina_ota_noise.raw

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
C {vsource.sym} 1070 -1410 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1070 -1340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1070 -1480 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1070 -1210 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1070 -1260 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 1890 -1350 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1890 -1150 0 0 {name=l4 lab=GND}
C {gnd.sym} 1070 -800 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 1160 -990 0 0 {name=p3 sig_type=std_logic lab=Vtail}
C {lab_wire.sym} 1760 -1270 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1760 -1250 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1760 -1230 0 0 {name=p7 sig_type=std_logic lab=Vtail}
C {gnd.sym} 1070 -1140 0 0 {name=l8 lab=GND}
C {vsource.sym} 1370 -1210 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1370 -1260 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1370 -1140 0 0 {name=l9 lab=GND}
C {lab_wire.sym} 2050 -1260 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2050 -1240 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {symbols/pfet_03v3.sym} 1090 -990 0 1 {name=M1
L=2u
W=8u
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
C {isource.sym} 1070 -870 0 0 {name=I0 value=2u}
C {vdd.sym} 1070 -1060 0 0 {name=l12 lab=VDD}
C {libs/core_ina/ina_ota/ina_ota.sym} 1890 -1250 0 0 {name=x1}
C {noconn.sym} 2090 -1260 0 1 {name=l10}
C {noconn.sym} 2090 -1240 0 1 {name=l6}
