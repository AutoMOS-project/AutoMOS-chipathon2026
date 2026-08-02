v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 3040 -130 3082 -116 {flags=image,unscaled
alpha=0.8
image_data=iVBORw0KGgoAAAANSUhEUgAAACoAAAAOCAIAAADWnBksAAAABmJLR0QA/wD/AP+gvaeTAAAAJklEQVQ4je3NQREAAAzCsN78ewYZPNYYCACQhIWbrPb29vb2D/sCC7kDGF+2e1IAAAAASUVORK5CYII=}
N 670 -440 990 -440 {lab=VDD3V3}
N 670 -510 670 -470 {lab=#net1}
N 670 -510 990 -510 {lab=#net1}
N 990 -510 990 -470 {lab=#net1}
N 820 -560 820 -510 {lab=#net1}
N 820 -670 820 -620 {lab=VDD3V3}
N 590 -440 630 -440 {lab=vp}
N 1030 -440 1070 -440 {lab=voutp}
N 1330 -990 1330 -930 {lab=VDD3V3}
N 1330 -990 1580 -990 {lab=VDD3V3}
N 1580 -990 1580 -930 {lab=VDD3V3}
N 990 -410 990 -330 {lab=#net2}
N 990 -330 1580 -330 {lab=#net2}
N 670 -410 670 -250 {lab=#net3}
N 670 -250 1330 -250 {lab=#net3}
N 1330 -260 1330 -190 {lab=#net3}
N 1330 -450 1330 -260 {lab=#net3}
N 1580 -340 1580 -190 {lab=#net2}
N 1580 -450 1580 -340 {lab=#net2}
N 1330 -40 1580 -40 {lab=0}
N 1330 -130 1330 -40 {lab=0}
N 1580 -130 1580 -40 {lab=0}
N 820 -480 820 -440 {lab=VDD3V3}
N 190 -400 190 -360 {lab=0}
N 190 -520 190 -460 {lab=VDD3V3}
N 1460 -40 1460 -10 {lab=0}
N 1450 -1040 1450 -990 {lab=VDD3V3}
N -240 -150 -240 -110 {lab=0}
N -240 -270 -240 -210 {lab=vp}
N 740 -590 780 -590 {lab=VDD2V2}
N 40 -400 40 -360 {lab=0}
N 40 -520 40 -460 {lab=VDD2V2}
N 820 -620 820 -590 {lab=VDD3V3}
N 1580 -160 1580 -130 {lab=0}
N 1370 -160 1540 -160 {lab=VDD0V9}
N 1330 -160 1330 -130 {lab=0}
N 1460 -160 1460 -120 {lab=VDD0V9}
N -100 -400 -100 -360 {lab=0}
N -100 -520 -100 -460 {lab=VDD0V9}
N 1220 -480 1330 -480 {lab=0}
N 1580 -480 1700 -480 {lab=0}
N 1220 -480 1220 -50 {lab=0}
N 1220 -50 1220 -40 {lab=0}
N 1220 -40 1330 -40 {lab=0}
N 1700 -480 1700 -40 {lab=0}
N 1580 -40 1700 -40 {lab=0}
N 1370 -480 1540 -480 {lab=VDD1V2}
N 1460 -480 1460 -440 {lab=VDD1V2}
N -240 -400 -240 -360 {lab=0}
N -240 -520 -240 -460 {lab=VDD1V2}
N 1580 -640 1580 -510 {lab=voutp}
N 1330 -640 1330 -510 {lab=#net4}
N 1370 -670 1540 -670 {lab=#net4}
N 1330 -600 1410 -600 {lab=#net4}
N 1410 -670 1410 -600 {lab=#net4}
N 1370 -830 1540 -830 {lab=#net5}
N 1330 -760 1410 -760 {lab=#net5}
N 1410 -830 1410 -760 {lab=#net5}
N 1330 -800 1330 -700 {lab=#net5}
N 1580 -800 1580 -700 {lab=#net6}
N 1330 -930 1330 -860 {lab=VDD3V3}
N 1580 -930 1580 -860 {lab=VDD3V3}
N 1250 -830 1330 -830 {lab=VDD3V3}
N 1250 -990 1250 -830 {lab=VDD3V3}
N 1250 -990 1330 -990 {lab=VDD3V3}
N 1250 -830 1250 -670 {lab=VDD3V3}
N 1250 -670 1330 -670 {lab=VDD3V3}
N 1580 -830 1660 -830 {lab=VDD3V3}
N 1660 -990 1660 -830 {lab=VDD3V3}
N 1660 -830 1660 -670 {lab=VDD3V3}
N 1580 -670 1660 -670 {lab=VDD3V3}
N 1580 -990 1660 -990 {lab=VDD3V3}
N 1300 -560 1330 -560 {lab=#net4}
N 1580 -560 1620 -560 {lab=voutp}
N 1910 -810 1910 -790 {lab=voutp}
N 1910 -730 1910 -710 {lab=0}
N 2010 -810 2010 -790 {lab=voutn}
N 2010 -730 2010 -710 {lab=0}
C {symbols/pfet_03v3.sym} 650 -440 0 0 {name=M1
L=1u
W=1.7u
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
C {lab_pin.sym} 820 -480 0 0 {name=p2 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 820 -670 0 0 {name=p1 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 590 -440 0 0 {name=p4 sig_type=std_logic lab=vp}
C {vsource.sym} 190 -430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 190 -360 0 0 {name=l1 lab=0}
C {lab_pin.sym} 190 -520 0 0 {name=p5 sig_type=std_logic lab=VDD3V3}
C {gnd.sym} 1460 -10 0 0 {name=l2 lab=0}
C {lab_pin.sym} 1450 -1040 0 0 {name=p6 sig_type=std_logic lab=VDD3V3}
C {symbols/pfet_03v3.sym} 1010 -440 0 1 {name=M2
L=1u
W=1.7u
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
C {vsource.sym} -240 -180 0 0 {name=V2 value="dc 1.65 pulse(1.65 1.75 10u 1n 1n 50u 100u)" savecurrent=false}
C {gnd.sym} -240 -110 0 0 {name=l3 lab=0}
C {lab_pin.sym} -240 -270 0 0 {name=p7 sig_type=std_logic lab=vp}
C {devices/code_shown.sym} 1970 -460 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {devices/code_shown.sym} 1980 -310 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
op 
.endc 
"}
C {symbols/pfet_03v3.sym} 800 -590 0 0 {name=M3
L=2u
W=2.6u
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
C {lab_pin.sym} 740 -590 0 0 {name=p8 sig_type=std_logic lab=VDD2V2}
C {vsource.sym} 40 -430 0 0 {name=V3 value=2.2 savecurrent=false}
C {gnd.sym} 40 -360 0 0 {name=l4 lab=0}
C {lab_pin.sym} 40 -520 0 0 {name=p9 sig_type=std_logic lab=VDD2V2}
C {symbols/nfet_03v3.sym} 1350 -160 0 1 {name=M5
L=1u
W=1.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1460 -120 0 0 {name=p10 sig_type=std_logic lab=VDD0V9}
C {vsource.sym} -100 -430 0 0 {name=V4 value=0.9 savecurrent=false}
C {gnd.sym} -100 -360 0 0 {name=l5 lab=0}
C {lab_pin.sym} -100 -520 0 0 {name=p11 sig_type=std_logic lab=VDD0V9}
C {symbols/nfet_03v3.sym} 1560 -160 0 0 {name=M4
L=1u
W=1.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1350 -480 0 1 {name=M6
L=1u
W=1.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1560 -480 0 0 {name=M7
L=1u
W=1.2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 1460 -440 0 0 {name=p12 sig_type=std_logic lab=VDD1V2}
C {vsource.sym} -240 -430 0 0 {name=V5 value=1.2 savecurrent=false}
C {gnd.sym} -240 -360 0 0 {name=l6 lab=0}
C {lab_pin.sym} -240 -520 0 0 {name=p13 sig_type=std_logic lab=VDD1V2}
C {symbols/pfet_03v3.sym} 1350 -830 0 1 {name=M10
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 1560 -830 0 0 {name=M11
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 1350 -670 0 1 {name=M8
L=1u
W=4u
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
C {symbols/pfet_03v3.sym} 1560 -670 0 0 {name=M9
L=1u
W=4u
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
C {devices/code_shown.sym} 2650 -690 0 0 {name=NGSPICE_ac only_toplevel=true
value="
.control
  * 1. Corremos la simulación AC extendida hasta 100 GHz (100g)
  ac dec 20 1 100g
  
  * Definición de tu salida (resta de nodos):
  let vout = v(voutp) - v(voutn)

  * NUEVO PASO: Creamos un vector nativo de magnitud para que 'meas' no falle
  let vout_magnitude = mag(vout)

  * 2. Calculamos la ganancia DC usando directamente el vector de salida v(vout)
  * Usamos [0] para extraer el primer punto (1 Hz)
  let dc_gain_linear = vout_magnitude[0]
  let dc_gain_db = 20 * log10(dc_gain_linear)
  print dc_gain_db

  * ==========================================
  * COMANDOS DE MEDICIÓN CORREGIDOS Y BLINDADOS:
  * ==========================================
  
  * A. Buscamos la frecuencia de corte a -3 dB
  let target_3db = dc_gain_linear * 0.707
  meas ac f_corte when vout_magnitude=target_3db

  * B. Buscamos el GBW (Magnitud = 1)
  meas ac gbw_freq when vout_magnitude=1
  
  * ==========================================

  * 3. Gráfica original
  plot mag(vout)
.endc
"}
C {capa.sym} 1910 -760 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2010 -760 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1910 -710 0 0 {name=l8 lab=0}
C {gnd.sym} 2010 -710 0 0 {name=l9 lab=0}
C {lab_pin.sym} 2010 -810 0 1 {name=p17 sig_type=std_logic lab=voutn}
C {lab_pin.sym} 1910 -810 0 0 {name=p18 sig_type=std_logic lab=voutp}
C {lab_pin.sym} 1620 -560 0 1 {name=p3 sig_type=std_logic lab=voutp}
C {devices/code_shown.sym} 3640 -740 0 0 {name=NGSPICE1 only_toplevel=true
value="
* --- 1. PARÁMETROS GLOBALES ANTICRISIS (SKYWATER) ---
.param sw_stat_mismatch=0
.param mis_vth=0
.param mis_k=0

* --- 2. BLOQUE DE CONTROL PARA TRANSITORIO Y GRÁFICA ---
.control
  * Limpiamos residuos de simulaciones previas
  clearsub
  
  * Corremos la simulación temporal por 120 microsegundos
  * Con pasos de 10 nanosegundos para ver los detalles con resolución limpia
  tran 10n 120u

  * 3. Graficamos directamente el nodo que me pediste
  * También agregamos v(vinp) para que puedas comparar visualmente la entrada vs la salida
  plot v(voutp) v(vp)
  meas tran v_min min v(voutp)
  meas tran v_max max v(voutp)

  let v_amp = v_max - v_min
  let v_10 = v_min + (0.1 * v_amp)
  let v_80 = v_min + (0.8 * v_amp)
  
  meas tran tr1 when v(voutp)=\{$&v_10\} rise=1
  meas tran tr2 when v(voutp)=\{$&v_80\} rise=1
  let sr_rise = (v_80 - v_10) / (tr2 - tr1)

  meas tran tf1 when v(voutp)=\{$&v_80\} fall=1
  meas tran tf2 when v(voutp)=\{$&v_10\} fall=1
  let sr_fall = (v_80 - v_10) / (tf2 - tf1)

  print sr_rise
  print sr_fall
 

.endc
"}
C {lab_pin.sym} 1070 -440 0 1 {name=p14 sig_type=std_logic lab=voutp}
