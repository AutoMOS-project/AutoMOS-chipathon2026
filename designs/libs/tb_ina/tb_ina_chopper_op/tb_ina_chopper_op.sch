v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 540 -1200 540 -1160 {lab=VDD}
N 540 -1100 540 -1060 {lab=GND}
N 540 -1000 540 -960 {lab=Vin1}
N 540 -900 540 -860 {lab=GND}
N 1360 -1070 1360 -1040 {lab=VDD}
N 1360 -900 1360 -870 {lab=GND}
N 540 -700 540 -660 {lab=GND}
N 540 -800 540 -760 {lab=CLK}
N 840 -700 840 -660 {lab=GND}
N 840 -800 840 -760 {lab=CLKb}
N 1190 -1000 1260 -1000 {lab=Vin1}
N 1190 -980 1260 -980 {lab=Vin2}
N 1190 -960 1260 -960 {lab=CLK}
N 1190 -940 1260 -940 {lab=CLKb}
N 840 -1000 840 -960 {lab=Vin2}
N 840 -900 840 -860 {lab=GND}
N 1460 -990 1640 -990 {lab=Vout1}
N 1640 -990 1640 -910 {lab=Vout1}
N 1460 -950 1560 -950 {lab=Vout2}
N 1560 -950 1560 -910 {lab=Vout2}
N 1560 -850 1560 -810 {lab=GND}
N 1640 -850 1640 -810 {lab=GND}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {simulator_commands.sym} 190 -1240 0 0 {name=MODELS
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
C {simulator_commands.sym} 190 -1040 0 0 {name=SIMULATIONS
simulator=ngspice
only_toplevel=false 
value="
.control
save all

set color0 = white

*************************************
** PARAMETERS
*************************************

let Vdd  = 3.3
let Vcm  = 1.65

*************************************
** SOURCES
*************************************

alter @V1[DC] = $&Vdd
alter @V2[DC] = $&Vcm
alter @V3[DC] = $&Vcm

*************************************
** TRANSMISSION GATE ON
*************************************

alter @V4[DC] = $&Vdd
alter @V5[DC] = 0 

*************************************
** OPERATING POINT SIMULATION
*************************************

op

*************************************
** PRINT RESULTS
*************************************

echo ------ TG ON --------
echo ------ NMOS ---------
let XM1_vgs = @m.x1.xm1.m0[vgs]
let XM1_vds = @m.x1.xm1.m0[vds]
let XM1_id = @m.x1.xm1.m0[id]
let XM1_gm = @m.x1.xm1.m0[gm]
let XM1_gds = @m.x1.xm1.m0[gds]
let XM1_cgg = @m.x1.xm1.m0[cgg]
let XM1_ron = 1/@m.x1.xm1.m0[gds]
print XM1_vgs
print XM1_vds
print XM1_id
print XM1_gm
print XM1_gds
print XM1_cgg
print XM1_ron
echo ------ PMOS ---------
let XM2_vgs = @m.x1.xm2.m0[vgs]
let XM2_vds = @m.x1.xm2.m0[vds]
let XM2_id = @m.x1.xm2.m0[id]
let XM2_gm = @m.x1.xm2.m0[gm]
let XM2_gds = @m.x1.xm2.m0[gds]
let XM2_cgg = @m.x1.xm2.m0[cgg]
let XM2_ron = 1/@m.x1.xm2.m0[gds]
print XM2_vgs
print XM2_vds
print XM2_id
print XM2_gm
print XM2_gds
print XM2_cgg
print XM2_ron
echo ------ TG -----------
let Ron1 = 1/(XM1_gds + XM2_gds)
let Roff2 = 1/(@m.x1.xm3.m0[gds] + @m.x1.xm4.m0[gds])
let Ron3 = 1/(@m.x1.xm5.m0[gds] + @m.x1.xm6.m0[gds])
let Roff4 = 1/(@m.x1.xm7.m0[gds] + @m.x1.xm8.m0[gds])
let Ileak2 = abs(@m.x1.xm3.m0[id]) + abs(@m.x1.xm4.m0[id])
let Ileak4 = abs(@m.x1.xm7.m0[id]) + abs(@m.x1.xm8.m0[id])
let Ileak_tot = Ileak2 + Ileak4
print Ron1
print Roff2
print Ron3
print Roff4
print Ileak2
print Ileak4
print Ileak_tot 

*************************************
** SAVE 
*************************************

write tb_ina_chopper_op1.raw

*************************************
** TRANSMISSION GATE OFF
*************************************

alter @V4[DC] = 0
alter @V5[DC] = $&Vdd 

*************************************
** OPERATING POINT SIMULATION
*************************************

op

*************************************
** PRINT RESULTS
*************************************

echo ------ TG OFF -------
echo ------ NMOS ---------
let XM1_vgs = @m.x1.xm1.m0[vgs]
let XM1_vds = @m.x1.xm1.m0[vds]
let XM1_id = @m.x1.xm1.m0[id]
let XM1_gm = @m.x1.xm1.m0[gm]
let XM1_gds = @m.x1.xm1.m0[gds]
let XM1_cgg = @m.x1.xm1.m0[cgg]
let XM1_roff = 1/@m.x1.xm1.m0[gds]
print XM1_vgs
print XM1_vds
print XM1_id
print XM1_gm
print XM1_gds
print XM1_cgg
print XM1_roff
echo ------ PMOS ---------
let XM2_vgs = @m.x1.xm2.m0[vgs]
let XM2_vds = @m.x1.xm2.m0[vds]
let XM2_id = @m.x1.xm2.m0[id]
let XM2_gm = @m.x1.xm2.m0[gm]
let XM2_gds = @m.x1.xm2.m0[gds]
let XM2_cgg = @m.x1.xm2.m0[cgg]
let XM2_roff = 1/@m.x1.xm2.m0[gds]
print XM2_vgs
print XM2_vds
print XM2_id
print XM2_gm
print XM2_gds
print XM2_cgg
print XM2_roff
echo ------ TG -----------
let Roff1 = 1/(XM1_gds + XM2_gds)
let Ron2 = 1/(@m.x1.xm3.m0[gds] + @m.x1.xm4.m0[gds])
let Roff3 = 1/(@m.x1.xm5.m0[gds] + @m.x1.xm6.m0[gds])
let Ron4 = 1/(@m.x1.xm7.m0[gds] + @m.x1.xm8.m0[gds])
let Ileak1 = abs(@m.x1.xm1.m0[id]) + abs(@m.x1.xm2.m0[id])
let Ileak3 = abs(@m.x1.xm5.m0[id]) + abs(@m.x1.xm6.m0[id])
let Ileak_tot = Ileak1 + Ileak3
print Roff1
print Ron2
print Roff3
print Ron4
print Ileak1
print Ileak3
print Ileak_tot 

*************************************
** SAVE 
*************************************

write tb_ina_chopper_op2.raw

.endc
* ngspice commands
"}
C {vsource.sym} 540 -1130 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 540 -1060 0 0 {name=l3 lab=GND}
C {vdd.sym} 540 -1200 0 0 {name=l7 lab=VDD}
C {vsource.sym} 540 -930 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 540 -980 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 1360 -1070 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1360 -870 0 0 {name=l4 lab=GND}
C {vsource.sym} 540 -730 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 540 -660 0 0 {name=l5 lab=GND}
C {vsource.sym} 840 -730 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 840 -660 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 540 -780 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 840 -780 0 0 {name=p4 sig_type=std_logic lab=CLKb}
C {lab_wire.sym} 1230 -1000 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1230 -980 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1230 -960 0 0 {name=p7 sig_type=std_logic lab=CLK}
C {lab_wire.sym} 1230 -940 0 0 {name=p8 sig_type=std_logic lab=CLKb}
C {gnd.sym} 540 -860 0 0 {name=l8 lab=GND}
C {vsource.sym} 840 -930 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 840 -980 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 840 -860 0 0 {name=l9 lab=GND}
C {capa.sym} 1560 -880 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1640 -880 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1560 -810 0 0 {name=l10 lab=GND}
C {gnd.sym} 1640 -810 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 1520 -990 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1520 -950 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 1360 -970 0 0 {name=x1}
