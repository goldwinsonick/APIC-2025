* NGSPICE file created from goldwin_and.ext - technology: sky130A

.subckt goldwin_and A B Y VP VN
X0 a_30_540# B a_30_0# VN sky130_fd_pr__nfet_01v8 ad=0.45 pd=2.9 as=0.25 ps=1.5 w=1 l=0.15
X1 a_30_0# A VN VN sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.45 ps=2.9 w=1 l=0.15
X2 Y a_30_540# VN VN sky130_fd_pr__nfet_01v8 ad=0.5 pd=3 as=0.45 ps=2.9 w=1 l=0.15
X3 a_30_540# A VP VP sky130_fd_pr__pfet_01v8 ad=0.75 pd=3.5 as=1.35 ps=6.9 w=3 l=0.15
X4 Y a_30_540# VP VP sky130_fd_pr__pfet_01v8 ad=1.5 pd=7 as=1.35 ps=6.9 w=3 l=0.15
X5 VP B a_30_540# VP sky130_fd_pr__pfet_01v8 ad=1.35 pd=6.9 as=0.75 ps=3.5 w=3 l=0.15
.ends

