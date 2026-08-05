v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1370 -1710 1370 -1670 {lab=VDD}
N 1370 -1610 1370 -1570 {lab=GND}
N 1370 -1510 1370 -1470 {lab=Vin1}
N 1370 -1410 1370 -1370 {lab=GND}
N 1670 -1510 1670 -1470 {lab=Vin2}
N 1670 -1410 1670 -1370 {lab=GND}
N 1370 -1270 1370 -1230 {lab=VDD}
N 1670 -1290 1670 -1250 {lab=Vref}
N 1670 -1190 1670 -1150 {lab=GND}
N 2250 -1430 2250 -1410 {lab=VDD}
N 2250 -1210 2250 -1190 {lab=GND}
N 2040 -1320 2100 -1320 {lab=Vin1}
N 2040 -1300 2100 -1300 {lab=Vin2}
N 2040 -1340 2100 -1340 {lab=Vref}
N 2040 -1280 2100 -1280 {lab=Vg}
N 2040 -1260 2100 -1260 {lab=Ib}
N 1370 -970 1370 -930 {lab=GND}
N 1370 -1070 1370 -1030 {lab=CLK}
N 1670 -1080 1670 -1040 {lab=Vg}
N 1670 -980 1670 -940 {lab=GND}
N 2040 -1360 2100 -1360 {lab=CLK}
N 1370 -1170 1370 -1110 {lab=Ib}
N 2400 -1320 2500 -1320 {lab=Vout1}
N 2400 -1300 2500 -1300 {lab=Vout2}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {simulator_commands.sym} 860 -1610 0 0 {name=MODELS
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
C {simulator_commands.sym} 860 -1350 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

run
set color0 = white
set appendwrite

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

alter @V2[DC] = $&Vcm
alter @V3[DC] = $&Vcm
alter @V4[DC] = $&Vcm
alter @I0[DC] = $&Ibias
alter @V5[PULSE] = [ 0 $&Vdd 0 $&tr $&tf $&ton $&tper 0 ]
alter @V6[DC] = $&Vg

*************************************
** PVT SIMULATION
*************************************

* AC simulation
alter @V2[ACMAG] = 0.5
alter @V3[ACMAG] = -0.5

* Case 1: VDD = 3.2 V, Temp = -40ºC
alter @V1[DC] = 3.2
set temp = -40
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_1 FIND gain_db AT=10

* Case 2: VDD = 3.2 V, Temp = 27ºC
alter @V1[DC] = 3.2
set temp = 27
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_2 FIND gain_db AT=10

* Case 3: VDD = 3.2 V, Temp = 125ºC
alter @V1[DC] = 3.2
set temp = 125
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_3 FIND gain_db AT=10

* Case 4: VDD = 3.3 V, Temp = -40ºC
alter @V1[DC] = 3.3
set temp = -40
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_4 FIND gain_db AT=10

* Case 5: VDD = 3.3 V, Temp = 27ºC
alter @V1[DC] = 3.3
set temp = 27
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_5 FIND gain_db AT=10

* Case 6: VDD = 3.3 V, Temp = 125ºC
alter @V1[DC] = 3.3
set temp = 125
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_6 FIND gain_db AT=10

* Case 7: VDD = 3.4 V, Temp = -40ºC
alter @V1[DC] = 3.4
set temp = -40
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_7 FIND gain_db AT=10

* Case 8: VDD = 3.4 V, Temp = 27ºC
alter @V1[DC] = 3.4
set temp = 27
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_8 FIND gain_db AT=10

* Case 9: VDD = 3.4 V, Temp = 125ºC
alter @V1[DC] = 3.4
set temp = 125
ac dec 100 0.01 100k
let vout_diff = v(Vout1)-v(Vout2)
let vin_diff  = v(Vin1)-v(Vin2)
let Av = vout_diff/vin_diff
let gain_db = db(Av)
meas ac Av0_9 FIND gain_db AT=10


* Noise simulation
alter @V2[ACMAG] = 1
alter @V3[ACMAG] = 0
op

* Case 1: VDD = 3.2 V, Temp = -40ºC
alter @V1[DC] = 3.2
set temp = -40
noise v(Vout1) V2 dec 500 0.5 150
setplot noise10
let inoise_rms_1 = inoise_total

* Case 2: VDD = 3.2 V, Temp = 27ºC
alter @V1[DC] = 3.2
set temp = 27
noise v(Vout1) V2 dec 500 0.5 150
setplot noise12
let inoise_rms_2 = inoise_total

* Case 3: VDD = 3.2 V, Temp = 125ºC
alter @V1[DC] = 3.2
set temp = 125
noise v(Vout1) V2 dec 500 0.5 150
setplot noise14
let inoise_rms_3 = inoise_total

* Case 4: VDD = 3.3 V, Temp = -40ºC
alter @V1[DC] = 3.3
set temp = -40
noise v(Vout1) V2 dec 500 0.5 150
setplot noise16
let inoise_rms_4 = inoise_total

* Case 5: VDD = 3.3 V, Temp = 27ºC
alter @V1[DC] = 3.3
set temp = 27
noise v(Vout1) V2 dec 500 0.5 150
setplot noise18
let inoise_rms_5 = inoise_total

* Case 6: VDD = 3.3 V, Temp = 125ºC
alter @V1[DC] = 3.3
set temp = 125
noise v(Vout1) V2 dec 500 0.5 150
setplot noise20
let inoise_rms_6 = inoise_total

* Case 7: VDD = 3.4 V, Temp = -40ºC
alter @V1[DC] = 3.4
set temp = -40
noise v(Vout1) V2 dec 500 0.5 150
setplot noise22
let inoise_rms_7 = inoise_total

* Case 8: VDD = 3.4 V, Temp = 27ºC
alter @V1[DC] = 3.4
set temp = 27
noise v(Vout1) V2 dec 500 0.5 150
setplot noise24
let inoise_rms_8 = inoise_total

* Case 9: VDD = 3.4 V, Temp = 125ºC
alter @V1[DC] = 3.4
set temp = 125
noise v(Vout1) V2 dec 500 0.5 150
setplot noise26
let inoise_rms_9 = inoise_total

*************************************
** PRINTS
*************************************

echo ========================================
echo Case 1: VDD = 3.2 V, Temperature = -40 C
setplot ac1
echo Differential gain : $&Av0_1 dB
setplot noise10
echo Input-Referred Noise : $&inoise_rms_1 Vrms
echo ======================================== 
echo Case 2: VDD = 3.2 V, Temperature = 27 C
setplot ac2
echo Differential gain : $&Av0_2 dB
setplot noise12
echo Input-Referred Noise : $&inoise_rms_2 Vrms
echo ======================================== 
echo Case 3: VDD = 3.2 V, Temperature = 125 C
setplot ac3
echo Differential gain : $&Av0_3 dB
setplot noise14
echo Input-Referred Noise : $&inoise_rms_3 µVrms
echo ========================================
echo Case 4: VDD = 3.3 V, Temperature = -40 C
setplot ac4
echo Differential gain : $&Av0_4 dB
setplot noise16
echo Input-Referred Noise : $&inoise_rms_4 Vrms
echo ========================================
echo Case 5: VDD = 3.3 V, Temperature = 27 C
setplot ac5
echo Differential gain : $&Av0_5 dB
setplot noise18
echo Input-Referred Noise : $&inoise_rms_5 Vrms
echo ========================================
echo Case 6: VDD = 3.3 V, Temperature = 125 C
setplot ac6
echo Differential gain : $&Av0_6 dB
setplot noise20
echo Input-Referred Noise : $&inoise_rms_6 Vrms
echo ========================================
echo Case 7: VDD = 3.4 V, Temperature = -40 C
setplot ac7
echo Differential gain : $&Av0_7 dB
setplot noise22
echo Input-Referred Noise : $&inoise_rms_7 Vrms
echo ========================================
echo Case 8: VDD = 3.4 V, Temperature = 27 C
setplot ac8
echo Differential gain : $&Av0_8 dB
setplot noise24
echo Input-Referred Noise : $&inoise_rms_8 Vrms
echo ========================================
echo Case 9: VDD = 3.4 V, Temperature = 125 C
setplot ac9
echo Differential gain : $&Av0_9 dB
setplot noise26
echo Input-Referred Noise : $&inoise_rms_9 Vrms
echo ========================================

*************************************
** SAVE
*************************************

write tb_ina.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1370 -1640 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1370 -1570 0 0 {name=l3 lab=GND}
C {vdd.sym} 1370 -1710 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1370 -1440 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1370 -1490 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {gnd.sym} 1370 -1370 0 0 {name=l8 lab=GND}
C {vsource.sym} 1670 -1440 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1670 -1490 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1670 -1370 0 0 {name=l9 lab=GND}
C {isource.sym} 1370 -1200 0 0 {name=I0 value=2u}
C {vdd.sym} 1370 -1270 0 0 {name=l5 lab=VDD}
C {lab_wire.sym} 1370 -1140 0 0 {name=p3 sig_type=std_logic lab=Ib}
C {vsource.sym} 1670 -1220 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1670 -1270 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1670 -1150 0 0 {name=l6 lab=GND}
C {vdd.sym} 2250 -1430 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2250 -1190 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 2460 -1320 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 2460 -1300 0 0 {name=p4 sig_type=std_logic lab=Vout2}
C {lab_wire.sym} 2080 -1320 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 2080 -1300 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 2080 -1340 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {lab_wire.sym} 2080 -1260 0 0 {name=p10 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 2080 -1280 0 0 {name=p11 sig_type=std_logic lab=Vg}
C {vsource.sym} 1370 -1000 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 1370 -930 0 0 {name=l12 lab=GND}
C {lab_wire.sym} 1370 -1050 0 0 {name=p12 sig_type=std_logic lab=CLK}
C {vsource.sym} 1670 -1010 0 0 {name=V6 value=0.1 savecurrent=false}
C {lab_wire.sym} 1670 -1060 0 0 {name=V7 sig_type=std_logic lab=Vg}
C {gnd.sym} 1670 -940 0 0 {name=V8 lab=GND}
C {lab_wire.sym} 2080 -1360 0 0 {name=p15 sig_type=std_logic lab=CLK}
C {noconn.sym} 2500 -1320 0 1 {name=l10}
C {noconn.sym} 2500 -1300 0 1 {name=l11}
C {libs/core_ina/ina/ina.sym} 2250 -1310 0 0 {name=x1}
C {launcher.sym} 1690 -1640 0 0 {name=h1
descr="RUN PVT" 
tclcommand="
set spicefile $netlist_dir/tb_ina.spice
xschem netlist
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/typical/ff/\} $spicefile
exec sed -i \{s/tb_ina.raw/tb_ina_ff.raw/\} $spicefile
simulate
after 1000 ;# wait 1sec for ngspice to start and read netlist
# change corner and output raw filename
exec sed -i \{/^\\.lib/s/ff/ss/\} $spicefile
exec sed -i \{s/tb_ina_ff.raw/tb_ina_ss.raw/\} $spicefile
simulate
"}
