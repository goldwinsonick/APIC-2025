v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -160 0 -140 {lab=GND}
N -0 -80 -0 -60 {lab=#net1}
N -0 40 -0 60 {lab=GND}
N -270 60 -270 80 {lab=GND}
N -270 -0 -40 -0 {lab=IB}
N -80 -20 -40 -20 {lab=IA}
N -140 -100 -140 -80 {lab=GND}
N -140 -20 -80 -20 {lab=IA}
N 60 -10 100 -10 {lab=Y}
N 100 -40 100 -10 {lab=Y}
C {vsource.sym} 0 -110 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -160 2 0 {name=l1 lab=GND}
C {gnd.sym} 0 60 0 0 {name=l2 lab=GND}
C {vsource.sym} -270 30 0 0 {name=V2 value="DC 0 pulse(0 1.8 5n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {vsource.sym} -140 -50 2 0 {name=V3 value="DC 0 pulse(0 1.8 10n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -140 -100 2 0 {name=l3 lab=GND}
C {gnd.sym} -270 80 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -60 -20 0 0 {name=p1 sig_type=std_logic lab=IA}
C {lab_wire.sym} -60 0 0 0 {name=p3 sig_type=std_logic lab=IB}
C {code_shown.sym} 130 50 0 0 {name=SPICE
value="
.tran 10p 40n
.control
run
plot v(IA) v(IB)+2 v(Y)+4
.endc
"}
C {lab_wire.sym} 100 -40 0 0 {name=p2 sig_type=std_logic lab=Y}
C {sky130_fd_pr/corner.sym} 130 -110 0 0 {name=CORNER only_toplevel=false corner=tt}
C {xor_gate.sym} 0 0 0 0 {name=x1}
