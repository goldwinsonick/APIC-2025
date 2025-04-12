v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -80 -30 -40 -30 {lab=IS}
N -80 -10 -40 -10 {lab=IA}
N -80 10 -40 10 {lab=IB}
N -80 30 -40 30 {lab=CLK}
N -130 -360 -130 -340 {lab=GND}
N -130 -280 -130 -30 {lab=IS}
N -130 -30 -80 -30 {lab=IS}
N -190 -190 -190 -10 {lab=IA}
N -190 -10 -80 -10 {lab=IA}
N -250 -90 -250 10 {lab=IB}
N -250 10 -80 10 {lab=IB}
N -360 -10 -360 30 {lab=CLK}
N -360 30 -80 30 {lab=CLK}
N -190 -270 -190 -250 {lab=GND}
N -250 -170 -250 -150 {lab=GND}
N -360 -90 -360 -70 {lab=GND}
N -0 60 -0 70 {lab=GND}
N 50 -20 80 -20 {lab=D}
N 50 0 80 0 {lab=Q}
N 50 20 80 20 {lab=QI}
N 0 -152.5 0 -140 {lab=GND}
N -0 -80 -0 -60 {lab=#net1}
C {gnd.sym} 0 70 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -80 -10 0 0 {name=p1 sig_type=std_logic lab=IA}
C {code_shown.sym} 140 0 0 0 {name=SPICE
value="
.tran 10p 160n
.control
run
plot v(CLK)+12 v(IA)+10 v(IB)+8 v(IS)+6 v(D)+4 v(Q)+2 v(QI)
.endc
"}
C {lab_wire.sym} 80 0 0 0 {name=p2 sig_type=std_logic lab=Q
}
C {sky130_fd_pr/corner.sym} 130 -160 0 0 {name=CORNER only_toplevel=false corner=tt}
C {lab_wire.sym} -80 10 0 0 {name=p3 sig_type=std_logic lab=IB}
C {lab_wire.sym} -80 -30 0 0 {name=p4 sig_type=std_logic lab=IS}
C {goldwin_mux_dff.sym} 10 0 0 0 {name=x1}
C {lab_wire.sym} -80 30 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {vsource.sym} -130 -310 2 0 {name=V8 value="DC 0 pulse(0 1.8 20n 0.1n 0.1n 20n 40n)" savecurrent=false}
C {gnd.sym} -130 -360 2 0 {name=l10 lab=GND}
C {lab_wire.sym} 80 20 0 0 {name=p6 sig_type=std_logic lab=QI}
C {lab_wire.sym} 80 -20 0 0 {name=p7 sig_type=std_logic lab=D}
C {vsource.sym} -190 -220 2 0 {name=V2 value="DC 0 pulse(0 1.8 80n 0.1n 0.1n 80n 160n)" savecurrent=false}
C {gnd.sym} -190 -270 2 0 {name=l4 lab=GND}
C {vsource.sym} -250 -120 2 0 {name=V3 value="DC 0 pulse(0 1.8 40n 0.1n 0.1n 40n 80n)" savecurrent=false}
C {gnd.sym} -250 -170 2 0 {name=l6 lab=GND}
C {vsource.sym} -360 -40 2 0 {name=V4 value="DC 0 pulse(0 1.8 10n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} -360 -90 2 0 {name=l8 lab=GND}
C {vsource.sym} 0 -110 2 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 0 -152.5 2 0 {name=l1 lab=GND}
