v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 670 -210 670 -180 {lab=VSS}
N 670 -360 670 -330 {lab=VDD3V3}
N 590 -330 630 -330 {lab=in}
N 590 -330 590 -210 {lab=in}
N 590 -210 630 -210 {lab=in}
N 670 -300 670 -240 {lab=S2B}
N 670 -400 670 -360 {lab=VDD3V3}
N 670 -180 670 -120 {lab=VSS}
N 530 -270 590 -270 {lab=in}
N 670 -270 770 -270 {lab=S2B}
N 270 -270 330 -270 {lab=VSS}
N 260 -270 270 -270 {lab=VSS}
N 270 -310 330 -310 {lab=VDD3V3}
N 260 -310 270 -310 {lab=VDD3V3}
N 270 -230 330 -230 {lab=in}
N 260 -230 270 -230 {lab=in}
N 270 -190 330 -190 {lab=out}
N 260 -190 270 -190 {lab=out}
C {lab_wire.sym} 770 -270 0 1 {name=p65 sig_type=std_logic lab=out}
C {lab_wire.sym} 530 -270 0 0 {name=p67 sig_type=std_logic lab=in}
C {symbols/pfet_03v3.sym} 650 -330 0 0 {name=M1
L=0.36u
W=6u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 650 -210 0 0 {name=M2
L=0.36u
W=3u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 670 -400 0 0 {name=p54 sig_type=std_logic lab=VDD3V3}
C {lab_wire.sym} 670 -120 0 0 {name=p57 sig_type=std_logic lab=VSS}
C {iopin.sym} 330 -270 0 0 {name=p48 lab=VSS}
C {lab_wire.sym} 260 -270 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {iopin.sym} 330 -310 0 0 {name=p50 lab=VDD3V3}
C {lab_pin.sym} 260 -310 0 0 {name=p51 sig_type=std_logic lab=VDD3V3}
C {iopin.sym} 330 -230 0 0 {name=p4 lab=in}
C {lab_wire.sym} 260 -230 0 0 {name=p6 sig_type=std_logic lab=in}
C {iopin.sym} 330 -190 0 0 {name=p10 lab=out}
C {lab_wire.sym} 260 -190 0 0 {name=p11 sig_type=std_logic lab=out}
