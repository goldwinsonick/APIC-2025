v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 -40 10 -20 {lab=#net1}
N 80 -20 80 -0 {lab=#net1}
N 180 -20 260 -20 {lab=#net1}
N 180 -40 180 -20 {lab=#net1}
N 10 -120 10 -70 {lab=VP}
N 10 -120 180 -120 {lab=VP}
N 180 -120 180 -70 {lab=VP}
N -90 -120 10 -120 {lab=VP}
N 310 -40 310 -20 {lab=Y}
N 310 -20 310 -0 {lab=Y}
N 260 -70 270 -70 {lab=#net1}
N 260 -20 260 30 {lab=#net1}
N 260 30 270 30 {lab=#net1}
N 310 -120 310 -70 {lab=VP}
N 180 -120 310 -120 {lab=VP}
N 80 150 310 150 {lab=VN}
N -90 150 80 150 {lab=VN}
N 310 -20 390 -20 {lab=Y}
N 80 110 80 150 {lab=VN}
N 310 30 310 150 {lab=VN}
N 10 -20 80 -20 {lab=#net1}
N -90 -70 -60 -70 {lab=A}
N -90 30 0 30 {lab=B}
N 80 -20 180 -20 {lab=#net1}
N 260 -70 260 -20 {lab=#net1}
N 80 30 90 30 {lab=VN}
N 90 30 90 150 {lab=VN}
N 80 60 80 80 {lab=#net2}
N -50 -70 -40 -70 {lab=A}
N -40 -70 -40 110 {lab=A}
N -40 110 40 110 {lab=A}
N 0 30 40 30 {lab=B}
N -60 -70 -50 -70 {lab=A}
N -40 -70 -30 -70 {lab=A}
N 140 -70 140 -30 {lab=B}
N -10 -30 140 -30 {lab=B}
N -10 -30 -10 30 {lab=B}
C {sky130_fd_pr/nfet_01v8.sym} 60 30 0 0 {name=M1
W=1

L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 60 110 0 0 {name=M4
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 30 0 0 {name=M6
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} -90 -70 0 0 {name=p1 lab=A
}
C {ipin.sym} -90 30 0 0 {name=p2 lab=B}
C {opin.sym} 390 -20 0 0 {name=p3 lab=Y}
C {sky130_fd_pr/pfet_01v8.sym} -10 -70 0 0 {name=M2
W=3
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -70 0 0 {name=M3
W=3
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -70 0 0 {name=M5
W=3
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -90 -120 0 0 {name=p4 lab=VP
}
C {ipin.sym} -90 150 0 0 {name=p5 lab=VN}
