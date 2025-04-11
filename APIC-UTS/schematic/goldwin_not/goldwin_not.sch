v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 230 -50 230 -10 {lab=Y}
N 170 -80 190 -80 {lab=A}
N 170 -80 170 20 {lab=A}
N 170 20 190 20 {lab=A}
N 230 20 230 50 {lab=VN}
N 230 50 230 80 {lab=VN}
N 100 80 230 80 {lab=VN}
N 230 -130 230 -110 {lab=VP}
N 100 -130 230 -130 {lab=VP}
N 230 -110 230 -80 {lab=VP}
N 230 -30 300 -30 {lab=Y}
N 100 -30 170 -30 {lab=A}
C {ipin.sym} 100 -30 0 0 {name=p1 lab=A}
C {ipin.sym} 100 -130 0 0 {name=p2 lab=VP
}
C {ipin.sym} 100 80 0 0 {name=p3 lab=VN

}
C {opin.sym} 300 -30 0 0 {name=p4 lab=Y
}
C {sky130_fd_pr/nfet_01v8.sym} 210 20 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 210 -80 0 0 {name=M2
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
