v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1260 -1480 1260 -1440 {lab=VDD}
N 1260 -1380 1260 -1340 {lab=GND}
N 1260 -1280 1260 -1240 {lab=Vin1}
N 1260 -1180 1260 -1140 {lab=GND}
N 2080 -1180 2080 -1150 {lab=GND}
N 1910 -1280 1980 -1280 {lab=Vin1}
N 1910 -1260 1980 -1260 {lab=Vin2}
N 1910 -1240 1980 -1240 {lab=Vref}
N 1560 -1280 1560 -1240 {lab=Vin2}
N 1560 -1180 1560 -1140 {lab=GND}
N 2180 -1250 2360 -1250 {lab=Vout}
N 2360 -1250 2360 -1170 {lab=Vout}
N 2360 -1110 2360 -1070 {lab=GND}
N 2080 -1350 2080 -1320 {lab=VDD}
N 1910 -1220 1980 -1220 {lab=Vb}
N 1260 -1050 1260 -1010 {lab=VDD}
N 1260 -950 1260 -910 {lab=Vb}
N 1560 -1080 1560 -1040 {lab=Vref}
N 1560 -980 1560 -940 {lab=GND}
C {simulator_commands.sym} 910 -1520 0 0 {name=MODELS
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
C {simulator_commands.sym} 910 -1310 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

set color0 = white

*************************************
** PARAMETERS
*************************************

let Vdd   = 3.3
let Vcm   = 1.65
let Voff  = 0.25
let Ibias = 1u
let Vref  = 1.65 

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = $&Vcm + $&Voff
alter @V3[DC] = $&Vcm + $&Voff
alter @V4[DC] = $&Vref
alter @I0[DC] = $&Ibias

*************************************
** OPERATING POINT SIMULATION
*************************************

op

*************************************
** PRINT RESULTS
*************************************

echo ------ PMOS ---------
echo ------ XM1 ----------
let XM1_vgs = @m.x1.xm1.m0[vgs]
let XM1_vds = @m.x1.xm1.m0[vds]
let XM1_id = @m.x1.xm1.m0[id]
let XM1_gm = @m.x1.xm1.m0[gm]
let XM1_gds = @m.x1.xm1.m0[gds]
let XM1_cgg = @m.x1.xm1.m0[cgg]
let XM1_gm_id = XM1_gm/abs(XM1_id)
print XM1_vgs
print XM1_vds
print XM1_id
print XM1_gm
print XM1_gds
print XM1_cgg
print XM1_gm_id

echo ------ NMOS ---------
echo ------ XM2 ----------
let XM2_vgs = @m.x1.xm2.m0[vgs]
let XM2_vds = @m.x1.xm2.m0[vds]
let XM2_id = @m.x1.xm2.m0[id]
let XM2_gm = @m.x1.xm2.m0[gm]
let XM2_gds = @m.x1.xm2.m0[gds]
let XM2_cgg = @m.x1.xm2.m0[cgg]
let XM2_gm_id = XM2_gm/abs(XM2_id)
print XM2_vgs
print XM2_vds
print XM2_id
print XM2_gm
print XM2_gds
print XM2_cgg
print XM2_gm_id
echo ------ XM3 ----------
let XM3_vgs = @m.x1.xm3.m0[vgs]
let XM3_vds = @m.x1.xm3.m0[vds]
let XM3_id = @m.x1.xm3.m0[id]
let XM3_gm = @m.x1.xm3.m0[gm]
let XM3_gds = @m.x1.xm3.m0[gds]
let XM3_cgg = @m.x1.xm3.m0[cgg]
let XM3_gm_id = XM3_gm/abs(XM3_id)
print XM3_vgs
print XM3_vds
print XM3_id
print XM3_gm
print XM3_gds
print XM3_cgg
print XM3_gm_id
echo ------ XM4 ----------
let XM4_vgs = @m.x1.xm4.m0[vgs]
let XM4_vds = @m.x1.xm4.m0[vds]
let XM4_id = @m.x1.xm4.m0[id]
let XM4_gm = @m.x1.xm4.m0[gm]
let XM4_gds = @m.x1.xm4.m0[gds]
let XM4_cgg = @m.x1.xm4.m0[cgg]
let XM4_gm_id = XM4_gm/abs(XM4_id)
print XM4_vgs
print XM4_vds
print XM4_id
print XM4_gm
print XM4_gds
print XM4_cgg
print XM4_gm_id
echo ------ XM5 ----------
let XM5_vgs = @m.x1.xm5.m0[vgs]
let XM5_vds = @m.x1.xm5.m0[vds]
let XM5_id = @m.x1.xm5.m0[id]
let XM5_gm = @m.x1.xm5.m0[gm]
let XM5_gds = @m.x1.xm5.m0[gds]
let XM5_cgg = @m.x1.xm5.m0[cgg]
let XM5_gm_id = XM5_gm/abs(XM5_id)
print XM5_vgs
print XM5_vds
print XM5_id
print XM5_gm
print XM5_gds
print XM5_cgg
print XM5_gm_id
echo ------ XM6 ----------
let XM6_vgs = @m.x1.xm6.m0[vgs]
let XM6_vds = @m.x1.xm6.m0[vds]
let XM6_id = @m.x1.xm6.m0[id]
let XM6_gm = @m.x1.xm6.m0[gm]
let XM6_gds = @m.x1.xm6.m0[gds]
let XM6_cgg = @m.x1.xm6.m0[cgg]
let XM6_gm_id = XM6_gm/abs(XM6_id)
print XM6_vgs
print XM6_vds
print XM6_id
print XM6_gm
print XM6_gds
print XM6_cgg
print XM6_gm_id
echo ------ XM7 ----------
let XM7_vgs = @m.x1.xm7.m0[vgs]
let XM7_vds = @m.x1.xm7.m0[vds]
let XM7_id = @m.x1.xm7.m0[id]
let XM7_gm = @m.x1.xm7.m0[gm]
let XM7_gds = @m.x1.xm7.m0[gds]
let XM7_cgg = @m.x1.xm7.m0[cgg]
let XM7_gm_id = XM7_gm/abs(XM7_id)
print XM7_vgs
print XM7_vds
print XM7_id
print XM7_gm
print XM7_gds
print XM7_cgg
print XM7_gm_id
echo ------ XM8 ----------
let XM8_vgs = @m.x1.xm8.m0[vgs]
let XM8_vds = @m.x1.xm8.m0[vds]
let XM8_id = @m.x1.xm8.m0[id]
let XM8_gm = @m.x1.xm8.m0[gm]
let XM8_gds = @m.x1.xm8.m0[gds]
let XM8_cgg = @m.x1.xm8.m0[cgg]
let XM8_gm_id = XM8_gm/abs(XM8_id)
print XM8_vgs
print XM8_vds
print XM8_id
print XM8_gm
print XM8_gds
print XM8_cgg
print XM8_gm_id

echo ------ CMFB ----------
let Icmfb = -i(v1)
let Pcmfb = Vdd*Icmfb
print Icmfb
print Pcmfb

*************************************
** SAVE 
*************************************

write tb_ina_cmfb_op.raw

.endc
* ngspice commands
"}
C {vsource.sym} 1260 -1410 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 1260 -1340 0 0 {name=l3 lab=GND}
C {vdd.sym} 1260 -1480 0 0 {name=l7 lab=VDD}
C {vsource.sym} 1260 -1210 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 1260 -1260 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 2080 -1350 0 0 {name=l2 lab=VDD}
C {gnd.sym} 2080 -1150 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 1950 -1280 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1950 -1260 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1950 -1240 0 0 {name=p7 sig_type=std_logic lab=Vref}
C {gnd.sym} 1260 -1140 0 0 {name=l8 lab=GND}
C {vsource.sym} 1560 -1210 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1560 -1260 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1560 -1140 0 0 {name=l9 lab=GND}
C {capa.sym} 2360 -1140 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 2360 -1070 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 2240 -1250 0 0 {name=p9 sig_type=std_logic lab=Vout}
C {isource.sym} 1260 -980 0 0 {name=I0 value=1u}
C {vdd.sym} 1260 -1050 0 0 {name=l12 lab=VDD}
C {title-2.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {launcher.sym} 1580 -1410 0 0 {name=h1
descr=Annotate OP
tclcommand="xschem annotate_op"}
C {libs/core_ina/ina_cmfb/ina_cmfb.sym} 2080 -1250 0 0 {name=x1}
C {lab_wire.sym} 1950 -1220 0 0 {name=p4 sig_type=std_logic lab=Vb}
C {lab_wire.sym} 1260 -920 0 0 {name=p3 sig_type=std_logic lab=Vb}
C {vsource.sym} 1560 -1010 0 0 {name=V4 value=1.65 savecurrent=false}
C {lab_wire.sym} 1560 -1060 0 0 {name=p8 sig_type=std_logic lab=Vref}
C {gnd.sym} 1560 -940 0 0 {name=l5 lab=GND}
