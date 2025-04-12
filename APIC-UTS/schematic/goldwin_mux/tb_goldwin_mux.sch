v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -150 0 -130 {lab=GND}
N 0 -70 0 -50 {lab=#net1}
N 0 50 0 70 {lab=GND}
N -250 -170 -250 -150 {lab=GND}
N 30 0 70 0 {lab=Y}
N -190 -270 -190 -250 {lab=GND}
N -130 -360 -130 -340 {lab=GND}
N -80 -50 -30 -50 {lab=IS}
N -80 -20 -60 -20 {lab=IA}
N -80 30 -60 30 {lab=IB}
N -130 -280 -130 -50 {lab=IS}
N -190 -190 -190 -20 {lab=IA}
N -250 30 -80 30 {lab=IB}
N -190 -20 -80 -20 {lab=IA}
N -130 -50 -80 -50 {lab=IS}
N -250 -90 -250 30 {lab=IB}
C {vsource.sym} 0 -100 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -150 2 0 {name=l1 lab=GND}
C {gnd.sym} 0 70 0 0 {name=l2 lab=GND}
C {vsource.sym} -250 -120 2 0 {name=V2 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -250 -170 2 0 {name=l3 lab=GND}
C {lab_wire.sym} -80 -20 0 0 {name=p1 sig_type=std_logic lab=IA}
C {code_shown.sym} 140 0 0 0 {name=SPICE
value="
.tran 10p 80n
.control
run
plot v(IA)+6 V(IB)+4 V(IS)+2 v(Y)
.endc
"}
C {lab_wire.sym} 70 0 0 0 {name=p2 sig_type=std_logic lab=Y}
C {sky130_fd_pr/corner.sym} 130 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} -80 30 0 0 {name=p3 sig_type=std_logic lab=IB}
C {goldwin_mux.sym} -20 0 0 0 {name=x1}
C {vsource.sym} -190 -220 2 0 {name=V3 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 20n 40n)" savecurrent=false}
C {gnd.sym} -190 -270 2 0 {name=l4 lab=GND}
C {vsource.sym} -130 -310 2 0 {name=V4 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 40n 80n)" savecurrent=false}
C {gnd.sym} -130 -360 2 0 {name=l5 lab=GND}
C {lab_wire.sym} -80 -50 0 0 {name=p4 sig_type=std_logic lab=IS}
