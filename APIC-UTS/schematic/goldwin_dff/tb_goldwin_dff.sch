v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -150 0 -130 {lab=GND}
N -80 -20 -40 -20 {lab=ID}
N -140 -100 -140 -80 {lab=GND}
N -140 -20 -80 -20 {lab=ID}
N 50 -20 90 -20 {lab=Q}
N -80 20 -40 20 {lab=ICLK}
N -290 80 -290 100 {lab=GND}
N -140 20 -80 20 {lab=ICLK}
N -290 20 -140 20 {lab=ICLK}
N 50 20 90 20 {lab=QI}
N -0 60 -0 70 {lab=GND}
N -0 -70 -0 -50 {lab=#net1}
C {vsource.sym} 0 -100 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -150 2 0 {name=l1 lab=GND}
C {gnd.sym} 0 70 0 0 {name=l2 lab=GND}
C {vsource.sym} -140 -50 2 0 {name=V2 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 20n 40n)" savecurrent=false}
C {gnd.sym} -140 -100 2 0 {name=l3 lab=GND}
C {lab_wire.sym} -70 -20 0 0 {name=p1 sig_type=std_logic lab=ID}
C {code_shown.sym} 140 0 0 0 {name=SPICE
value="
.tran 10p 80n
.control
run
plot v(ID)+6 V(ICLK)+4 v(Q)+2 v(QI)
.endc
"}
C {lab_wire.sym} 90 -20 0 0 {name=p2 sig_type=std_logic lab=Q}
C {sky130_fd_pr/corner.sym} 130 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {vsource.sym} -290 50 0 0 {name=V3 value="DC 0 pulse(0 1.8 0n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -290 100 0 0 {name=l4 lab=GND}
C {lab_wire.sym} -70 20 0 0 {name=p3 sig_type=std_logic lab=ICLK}
C {goldwin_dff.sym} 10 0 0 0 {name=x1}
C {lab_wire.sym} 90 20 0 0 {name=p4 sig_type=std_logic lab=QI}
