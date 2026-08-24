v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 1130 -220 {}
N 750 -310 750 -250 {lab=1ua}
N 750 -190 750 -140 {lab=VSS}
N 750 -280 820 -280 {lab=1ua}
N 820 -280 820 -220 {lab=1ua}
N 790 -220 820 -220 {lab=1ua}
N 820 -220 920 -220 {lab=1ua}
N 750 -220 750 -190 {lab=VSS}
N 960 -220 960 -190 {lab=VSS}
N 960 -300 960 -250 {lab=Vbtail}
N 960 -440 960 -360 {lab=VDD3V3}
N 750 -140 960 -140 {lab=VSS}
N 960 -190 960 -140 {lab=VSS}
N 960 -280 1040 -280 {lab=Vbtail}
N 1040 -330 1040 -280 {lab=Vbtail}
N 1000 -330 1040 -330 {lab=Vbtail}
N 960 -360 960 -330 {lab=VDD3V3}
N 1210 -220 1210 -190 {lab=VSS}
N 1210 -190 1210 -140 {lab=VSS}
N 1210 -360 1210 -330 {lab=VDD3V3}
N 960 -440 1210 -440 {lab=VDD3V3}
N 960 -140 1210 -140 {lab=VSS}
N 1040 -330 1170 -330 {lab=Vbtail}
N 1210 -300 1210 -250 {lab=Vbsnk}
N 1210 -440 1210 -360 {lab=VDD3V3}
N 1130 -220 1170 -220 {lab=Vbsnk}
N 1130 -280 1130 -220 {lab=Vbsnk}
N 1130 -280 1210 -280 {lab=Vbsnk}
N 1210 -440 1420 -440 {lab=VDD3V3}
N 1420 -440 1420 -360 {lab=VDD3V3}
N 1340 -330 1380 -330 {lab=Vbtail}
N 1420 -300 1420 -230 {lab=Ib}
N 1420 -360 1420 -330 {lab=VDD3V3}
N 470 -380 530 -380 {lab=VSS}
N 460 -380 470 -380 {lab=VSS}
N 470 -340 530 -340 {lab=VDD3V3}
N 460 -340 470 -340 {lab=VDD3V3}
N 460 -290 520 -290 {lab=1ua}
N 460 -240 520 -240 {lab=Vbtail}
N 460 -200 520 -200 {lab=Vbsnk}
N 460 -160 520 -160 {lab=Ib}
C {symbols/nfet_03v3.sym} 770 -220 0 1 {name=M12
L=1u
W=1u
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
C {symbols/nfet_03v3.sym} 940 -220 0 0 {name=M13
L=1u
W=3u
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
C {symbols/pfet_03v3.sym} 980 -330 0 1 {name=M14
L=1u
W=6u
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
C {lab_pin.sym} 1090 -330 1 1 {name=p35 sig_type=std_logic lab=Vbtail}
C {symbols/nfet_03v3.sym} 1190 -220 0 0 {name=M15
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1190 -330 0 0 {name=M16
L=1u
W=11u
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
C {lab_pin.sym} 1130 -220 0 0 {name=p27 sig_type=std_logic lab=Vbsnk}
C {symbols/pfet_03v3.sym} 1400 -330 0 0 {name=M28
L=1u
W=4.9u
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
C {lab_pin.sym} 1340 -330 1 1 {name=p26 sig_type=std_logic lab=Vbtail}
C {lab_pin.sym} 1420 -230 0 0 {name=p37 sig_type=std_logic lab=Ib}
C {lab_wire.sym} 750 -140 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {iopin.sym} 530 -380 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 460 -380 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 530 -340 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 460 -340 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 750 -310 0 1 {name=p38 sig_type=std_logic lab=1ua}
C {lab_pin.sym} 460 -290 0 0 {name=p30 sig_type=std_logic lab=1ua}
C {iopin.sym} 520 -290 0 0 {name=p42 lab=1ua}
C {iopin.sym} 520 -240 0 0 {name=p53 lab=Vbtail}
C {iopin.sym} 520 -200 0 0 {name=p54 lab=Vbsnk}
C {iopin.sym} 520 -160 0 0 {name=p24 lab=Ib}
C {lab_pin.sym} 960 -440 0 0 {name=p40 sig_type=std_logic lab=VDD3V3}
C {lab_pin.sym} 460 -240 2 1 {name=p1 sig_type=std_logic lab=Vbtail}
C {lab_pin.sym} 460 -200 0 0 {name=p2 sig_type=std_logic lab=Vbsnk}
C {lab_pin.sym} 460 -160 0 0 {name=p3 sig_type=std_logic lab=Ib}
