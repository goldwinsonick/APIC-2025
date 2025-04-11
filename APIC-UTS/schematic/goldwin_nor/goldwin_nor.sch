v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -60 210 -40 {lab=#net1}
N 70 140 280 140 {lab=VN}
N 280 120 280 140 {lab=VN}
N 150 120 150 140 {lab=VN}
N 70 -140 210 -140 {lab=VP}
N 210 -140 210 -120 {lab=VP}
N 210 -10 220 -10 {lab=VP}
N 220 -140 220 -10 {lab=VP}
N 210 -140 220 -140 {lab=VP}
N 210 -120 210 -90 {lab=VP}
N 60 -90 170 -90 {lab=A}
N 60 90 110 90 {lab=B}
N 80 90 90 90 {lab=B}
N 90 -10 90 90 {lab=B}
N 90 -10 170 -10 {lab=B}
N 150 40 150 60 {lab=#net2}
N 150 40 210 40 {lab=#net2}
N 210 20 210 40 {lab=#net2}
N 210 20 210 40 {lab=#net2}
N 210 40 280 40 {lab=#net2}
N 280 40 280 60 {lab=#net2}
N 160 -90 160 90 {lab=A}
N 160 90 240 90 {lab=A}
N 280 90 280 120 {lab=VN}
N 150 90 150 120 {lab=VN}
N 280 40 360 40 {lab=#net2}
C {ipin.sym} 60 -90 0 0 {name=p1 lab=A}
C {ipin.sym} 60 90 0 0 {name=p2 lab=B}
C {ipin.sym} 70 -140 0 0 {name=p4 lab=VP
}
C {ipin.sym} 70 140 0 0 {name=p5 lab=VN}
C {opin.sym} 360 40 0 0 {name=p6 lab=Y
}
C {sky130_fd_pr/pfet_01v8.sym} 190 -90 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 190 -10 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 130 90 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 260 90 0 0 {name=M4
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
