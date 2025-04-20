v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -150 0 -130 {lab=GND}
N 0 -70 0 -50 {lab=#net1}
N 0 50 0 70 {lab=GND}
N -80 0 -40 0 {lab=IA}
N -140 -80 -140 -60 {lab=GND}
N -140 0 -80 0 {lab=IA}
N 70 0 110 0 {lab=Y}
C {vsource.sym} 0 -100 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -150 2 0 {name=l1 lab=GND}
C {gnd.sym} 0 70 0 0 {name=l2 lab=GND}
C {vsource.sym} -140 -30 2 0 {name=V2 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -140 -80 2 0 {name=l3 lab=GND}
C {lab_wire.sym} -60 0 0 0 {name=p1 sig_type=std_logic lab=IA}
C {code_shown.sym} 140 0 0 0 {name=SPICE
value="
.tran 10p 40n
.control
run
plot v(IA) v(Y)+2
.endc
"}
C {lab_wire.sym} 110 0 0 0 {name=p2 sig_type=std_logic lab=Y}
C {sky130_fd_pr/corner.sym} 130 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {goldwin_not.sym} 30 0 0 0 {name=x1}
