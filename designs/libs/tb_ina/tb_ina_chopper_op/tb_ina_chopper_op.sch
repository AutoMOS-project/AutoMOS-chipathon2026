v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 870 -1180 870 -1140 {lab=VDD}
N 870 -1080 870 -1040 {lab=GND}
N 870 -980 870 -940 {lab=Vin1}
N 870 -880 870 -840 {lab=GND}
N 1690 -1050 1690 -1020 {lab=VDD}
N 1690 -880 1690 -850 {lab=GND}
N 1520 -980 1590 -980 {lab=Vin1}
N 1520 -960 1590 -960 {lab=Vin2}
N 1520 -940 1590 -940 {lab=CLKa}
N 1520 -920 1590 -920 {lab=CLKb}
N 1170 -980 1170 -940 {lab=Vin2}
N 1170 -880 1170 -840 {lab=GND}
N 1790 -960 1970 -960 {lab=Vout1}
N 1970 -960 1970 -880 {lab=Vout1}
N 1790 -940 1890 -940 {lab=Vout2}
N 1890 -940 1890 -900 {lab=Vout2}
N 1890 -840 1890 -800 {lab=GND}
N 1970 -820 1970 -780 {lab=GND}
N 890 -520 890 -480 {lab=GND}
N 890 -620 890 -580 {lab=CLK}
N 890 -620 930 -620 {lab=CLK}
N 1050 -560 1050 -520 {lab=GND}
N 1050 -720 1050 -680 {lab=VDD}
N 1170 -630 1230 -630 {lab=CLKa}
N 1170 -610 1230 -610 {lab=CLKb}
C {title-3.sym} 0 0 0 0 {name=l1 author="Julio Vilca" rev=1.0 lock=true page=1 pages=7}
C {simulator_commands.sym} 520 -1220 0 0 {name=MODELS
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
C {simulator_commands.sym} 520 -1020 0 0 {name=SIMULATIONS
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
let XM1_cgd = @m.x1.xm1.m0[cgd]
let XM1_cgs = @m.x1.xm1.m0[cgs]
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
let XM2_cgd = @m.x1.xm2.m0[cgd]
let XM2_cgs = @m.x1.xm2.m0[cgs]
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
let Cin = abs(XM1_cgd)+abs(XM1_cgs)+abs(XM2_cgd)+abs(XM2_cgs)
let Ileak2 = abs(@m.x1.xm3.m0[id]) + abs(@m.x1.xm4.m0[id])
let Ileak4 = abs(@m.x1.xm7.m0[id]) + abs(@m.x1.xm8.m0[id])
let Ileak_tot = Ileak2 + Ileak4
print Ron1
print Roff2
print Ron3
print Roff4
print Cin
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
C {vsource.sym} 870 -1110 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 870 -1040 0 0 {name=l3 lab=GND}
C {vdd.sym} 870 -1180 0 0 {name=l7 lab=VDD}
C {vsource.sym} 870 -910 0 0 {name=V2 value=1.65 savecurrent=false}
C {lab_wire.sym} 870 -960 0 0 {name=p1 sig_type=std_logic lab=Vin1}
C {vdd.sym} 1690 -1050 0 0 {name=l2 lab=VDD}
C {gnd.sym} 1690 -850 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 1560 -980 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_wire.sym} 1560 -960 0 0 {name=p6 sig_type=std_logic lab=Vin2}
C {lab_wire.sym} 1560 -940 0 0 {name=p7 sig_type=std_logic lab=CLKa}
C {lab_wire.sym} 1560 -920 0 0 {name=p8 sig_type=std_logic lab=CLKb}
C {gnd.sym} 870 -840 0 0 {name=l8 lab=GND}
C {vsource.sym} 1170 -910 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_wire.sym} 1170 -960 0 0 {name=p2 sig_type=std_logic lab=Vin2}
C {gnd.sym} 1170 -840 0 0 {name=l9 lab=GND}
C {capa.sym} 1890 -870 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1970 -850 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1890 -800 0 0 {name=l10 lab=GND}
C {gnd.sym} 1970 -780 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 1850 -960 0 0 {name=p9 sig_type=std_logic lab=Vout1}
C {lab_wire.sym} 1850 -940 0 0 {name=p10 sig_type=std_logic lab=Vout2}
C {libs/core_ina/ina_chopper/ina_chopper.sym} 1690 -950 0 0 {name=x1}
C {vsource.sym} 890 -550 0 0 {name=V4 value=3.3 savecurrent=false}
C {gnd.sym} 890 -480 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 890 -600 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {libs/core_ina/ina_clockgen/ina_clockgen.sym} 1050 -620 0 0 {name=x2}
C {vdd.sym} 1050 -720 0 0 {name=l12 lab=VDD}
C {gnd.sym} 1050 -520 0 0 {name=l13 lab=GND}
C {lab_wire.sym} 1220 -610 0 0 {name=p12 sig_type=std_logic lab=CLKb}
C {lab_wire.sym} 1220 -630 0 0 {name=p11 sig_type=std_logic lab=CLKa}
C {launcher.sym} 1220 -1170 0 0 {name=h1
descr=Annotate OP
tclcommand="xschem annotate_op"}
