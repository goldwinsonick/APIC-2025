v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -150 0 -130 {lab=GND}
N 0 -70 0 -50 {lab=#net1}
N 0 50 0 70 {lab=GND}
N -80 -10 -40 -10 {lab=IA}
N -140 -90 -140 -70 {lab=GND}
N -140 -10 -80 -10 {lab=IA}
N 70 0 110 0 {lab=Y}
N -80 20 -40 20 {lab=IB}
N -290 80 -290 100 {lab=GND}
N -140 20 -80 20 {lab=IB}
N -290 20 -140 20 {lab=IB}
C {vsource.sym} 0 -100 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -150 2 0 {name=l1 lab=GND}
C {gnd.sym} 0 70 0 0 {name=l2 lab=GND}
C {vsource.sym} -140 -40 2 0 {name=V2 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -140 -90 2 0 {name=l3 lab=GND}
C {lab_wire.sym} -70 -10 0 0 {name=p1 sig_type=std_logic lab=IA}
C {code_shown.sym} 140 0 0 0 {name=SPICE
value="
.tran 10p 40n
.control
run
plot v(IA) V(IB)+2 v(Y)+4
.endc
"}
C {lab_wire.sym} 110 0 0 0 {name=p2 sig_type=std_logic lab=Y}
C {sky130_fd_pr/corner.sym} 130 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -290 50 0 0 {name=V3 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 20n 40n)" savecurrent=false}
C {gnd.sym} -290 100 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -70 20 0 0 {name=p3 sig_type=std_logic lab=IB}
C {goldwin_and.sym} 0 0 0 0 {name=x1}
