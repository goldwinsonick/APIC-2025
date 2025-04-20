* NGSPICE file created from goldwin_mux_v2.ext - technology: sky130A

.subckt goldwin_nand_v2 A B Y VP VN
X0 Y B a_30_0# VN sky130_fd_pr__nfet_01v8 ad=0.45 pd=2.9 as=0.25 ps=1.5 w=1 l=0.15
X1 a_30_0# A VN VN sky130_fd_pr__nfet_01v8 ad=0.25 pd=1.5 as=0.45 ps=2.9 w=1 l=0.15
X2 Y A VP VP sky130_fd_pr__pfet_01v8 ad=0.75 pd=3.5 as=1.35 ps=6.9 w=3 l=0.15
X3 VP B Y VP sky130_fd_pr__pfet_01v8 ad=1.35 pd=6.9 as=0.75 ps=3.5 w=3 l=0.15
.ends

.subckt goldwin_not_v2 A Y VP VN
X0 Y A VN VN sky130_fd_pr__nfet_01v8 ad=0.45 pd=2.9 as=0.45 ps=2.9 w=1 l=0.15
X1 Y A VP VP sky130_fd_pr__pfet_01v8 ad=1.35 pd=6.9 as=1.35 ps=6.9 w=3 l=0.15
.ends

.subckt goldwin_mux_v2 A B S D VP VN
Xgoldwin_nand_v2_0 goldwin_nand_v2_3/Y goldwin_nand_v2_1/Y D VP VN goldwin_nand_v2
Xgoldwin_nand_v2_1 goldwin_not_v2_0/Y A goldwin_nand_v2_1/Y VP VN goldwin_nand_v2
Xgoldwin_nand_v2_3 B S goldwin_nand_v2_3/Y VP VN goldwin_nand_v2
Xgoldwin_not_v2_0 S goldwin_not_v2_0/Y VP VN goldwin_not_v2
.ends

