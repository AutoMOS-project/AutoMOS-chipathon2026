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
N 1070 -840 1070 -800 {lab=GND}
N 1370 -1280 1370 -1240 {lab=Vin2}
N 1370 -1180 1370 -1140 {lab=GND}
N 1070 -1060 1070 -1020 {lab=VDD}
N 1050 -990 1070 -990 {lab=VDD}
N 1050 -1040 1050 -990 {lab=VDD}
N 1050 -1040 1070 -1040 {lab=VDD}
N 1110 -990 1170 -990 {lab=Vtail}
N 1070 -940 1140 -940 {lab=Vtail}
N 1140 -990 1140 -940 {lab=Vtail}
N 1070 -960 1070 -900 {lab=Vtail}
N 1770 -1360 1770 -1330 {lab=VDD}
N 1770 -1190 1770 -1160 {lab=GND}
N 1600 -1280 1670 -1280 {lab=Vin1}
N 1600 -1260 1670 -1260 {lab=Vin2}
N 1600 -1240 1670 -1240 {lab=Vtail}
N 1870 -1250 1970 -1250 {lab=Vout2}
N 1870 -1270 1970 -1270 {lab=Vout1}
N 2070 -1340 2070 -1310 {lab=VDD}
N 2170 -1250 2230 -1250 {lab=#net1}
N 2170 -1230 2230 -1230 {lab=#net2}
N 2070 -1170 2070 -1140 {lab=GND}
N 1730 -1070 1730 -1040 {lab=VDD}
N 1850 -990 1890 -990 {lab=#net3}
N 1890 -1230 1890 -990 {lab=#net3}
N 1890 -1230 1970 -1230 {lab=#net3}
N 1850 -970 1910 -970 {lab=#net4}
N 1910 -1210 1910 -970 {lab=#net4}
N 1910 -1210 1970 -1210 {lab=#net4}
N 1730 -920 1730 -890 {lab=GND}
N 1540 -980 1540 -940 {lab=#net5}
N 1540 -880 1540 -840 {lab=GND}
N 1540 -980 1610 -980 {lab=#net5}
N 2300 -1360 2300 -1280 {lab=#net1}
N 2300 -1220 2300 -1140 {lab=#net2}
N 2230 -1360 2230 -1250 {lab=#net1}
N 2230 -1360 2300 -1360 {lab=#net1}
N 2230 -1230 2230 -1140 {lab=#net2}
N 2230 -1140 2300 -1140 {lab=#net2}
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

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V1[ACMAG] = 1
alter @V2[DC] = $&Vcm
alter @V3[DC] = $&Vcm
alter @I0[DC] = $&Ibias

*************************************
** AC SIMULATION
*************************************

ac dec 100 0.01 1G

*************************************
** MEASUREMENTS
*************************************

let Aps = v(Vout1)/1
let psrr_db = -db(Aps)
meas ac psrr_gain FIND psrr_db AT=10
let psrr_3db = psrr_gain - 3
meas ac psrr_bw WHEN psrr_db=$&psrr_3db
print psrr_gain
print psrr_bw

*************************************
** PLOTS
*************************************

setplot ac1
plot psrr_db

*************************************
** SAVE 
*************************************

write tb_ina_ota_psrr.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1070 -1410 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1070 -1340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1070 -1480 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1070 -1210 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1070 -1260 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {gnd.sym} 1070 -800 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 1160 -990 0 0 {name=p3 sig_type=std_logic lab=Vtail}
C {gnd.sym} 1070 -1140 0 0 {name=l8 lab=GND}
C {vsource.sym} 1370 -1210 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1370 -1260 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1370 -1140 0 0 {name=l9 lab=GND}
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
C {vdd.sym} 1770 -1360 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1770 -1160 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 1640 -1280 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1640 -1260 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1640 -1240 0 0 {name=p7 sig_type=std_logic lab=Vtail}
C {libs/core_ina/ina_ota/ina_ota.sym} 1770 -1260 0 0 {name=x1}
C {lab_wire.sym} 1930 -1270 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1930 -1250 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 2070 -1240 0 0 {name=x2}
C {vdd.sym} 2070 -1340 0 0 {name=l11 lab=VDD}
C {gnd.sym} 2070 -1140 0 0 {name=l13 lab=GND}
C {libs/core_ina/ina_clockgen/ina_clockgen.sym} 1730 -980 0 0 {name=x3}
C {vdd.sym} 1730 -1070 0 0 {name=l14 lab=VDD}
C {gnd.sym} 1730 -890 0 0 {name=l15 lab=GND}
C {vsource.sym} 1540 -910 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} 1540 -840 0 0 {name=l16 lab=GND}
C {symbols/cap_mim_2f0fF.sym} 2300 -1250 0 0 {name=C5
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=5}
