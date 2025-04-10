v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -90 30 -70 {lab=#net1}
N 30 -80 110 -80 {lab=#net1}
N -20 -120 -10 -120 {lab=A}
N -20 -120 -20 -40 {lab=A}
N -40 -80 -20 -80 {lab=A}
N 30 180 30 200 {lab=#net2}
N 30 190 110 190 {lab=#net2}
N -20 150 -10 150 {lab=B}
N -20 150 -20 230 {lab=B}
N -20 230 -10 230 {lab=B}
N -40 190 -20 190 {lab=B}
N -90 -80 -40 -80 {lab=A}
N -90 190 -40 190 {lab=B}
N 260 -80 260 -60 {lab=#net3}
N -60 -80 -60 30 {lab=A}
N -60 30 110 30 {lab=A}
N -60 110 -60 190 {lab=B}
N -60 70 -60 110 {lab=B}
N -60 70 110 70 {lab=B}
N 260 180 260 200 {lab=#net4}
N 390 180 390 200 {lab=#net5}
N 390 -80 390 -60 {lab=#net6}
N 260 0 260 120 {lab=OUT}
N 390 0 390 120 {lab=OUT}
N 260 60 390 60 {lab=OUT}
N 390 60 490 60 {lab=OUT}
N 140 -30 220 -30 {lab=B}
N 140 -30 140 230 {lab=B}
N 140 230 220 230 {lab=B}
N 110 70 140 70 {lab=B}
N 110 30 170 30 {lab=A}
N 170 30 170 150 {lab=A}
N 170 150 220 150 {lab=A}
N 340 -30 350 -30 {lab=A}
N 170 30 340 30 {lab=A}
N 340 -30 340 30 {lab=A}
N 260 -160 260 -140 {lab=VP}
N 260 -160 390 -160 {lab=VP}
N 390 -160 390 -140 {lab=VP}
N 260 260 260 280 {lab=VN}
N 260 280 390 280 {lab=VN}
N 390 270 390 280 {lab=VN}
N 390 260 390 270 {lab=VN}
N 330 -110 350 -110 {lab=#net2}
N 330 -110 330 230 {lab=#net2}
N 330 230 340 230 {lab=#net2}
N 340 230 350 230 {lab=#net2}
N 110 190 330 190 {lab=#net2}
N 110 -80 200 -80 {lab=#net1}
N 200 -110 200 -80 {lab=#net1}
N 200 -110 220 -110 {lab=#net1}
N 200 -80 200 90 {lab=#net1}
N 200 90 350 90 {lab=#net1}
N 350 90 350 140 {lab=#net1}
N 350 140 350 150 {lab=#net1}
N -70 280 260 280 {lab=VN}
N 30 260 30 280 {lab=VN}
N 30 100 30 120 {lab=VP}
N -70 100 30 100 {lab=VP}
N -80 100 -70 100 {lab=VP}
N -40 -10 30 -10 {lab=VN}
N -140 -160 260 -160 {lab=VP}
N 30 -160 30 -150 {lab=VP}
N -80 -10 -40 -10 {lab=VN}
N -130 100 -80 100 {lab=VP}
N -130 -160 -130 100 {lab=VP}
N -130 280 -70 280 {lab=VN}
N -120 -10 -80 -10 {lab=VN}
N -120 -10 -120 280 {lab=VN}
N -20 -40 -10 -40 {lab=A}
N 30 -120 30 -90 {lab=#net1}
N 30 -40 30 -10 {lab=VN}
N 30 150 30 180 {lab=#net2}
N 30 230 30 260 {lab=VN}
N 260 -110 260 -80 {lab=#net3}
N 260 -30 260 0 {lab=OUT}
N 390 -110 390 -80 {lab=#net6}
N 390 -30 390 0 {lab=OUT}
N 260 150 260 180 {lab=VN}
N 260 230 260 260 {lab=VN}
N 390 150 390 180 {lab=VN}
N 390 230 390 260 {lab=VN}
C {ipin.sym} -90 -80 0 0 {name=p1 lab=A}
C {ipin.sym} -90 190 0 0 {name=p2 lab=B}
C {opin.sym} 490 60 0 0 {name=p7 lab=OUT}
C {ipin.sym} -140 -160 0 0 {name=p10 lab=VP
}
C {ipin.sym} -130 280 0 0 {name=p11 lab=VN}
C {sky130_fd_pr/pfet_01v8.sym} 10 -120 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 10 -40 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 10 150 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 10 230 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -110 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -30 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 370 -110 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 370 -30 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 240 150 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 240 230 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 370 150 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 370 230 0 0 {name=M12
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
