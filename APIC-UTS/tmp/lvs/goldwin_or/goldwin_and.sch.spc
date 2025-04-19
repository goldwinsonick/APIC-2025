** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_and/goldwin_and.sch
.subckt goldwin_and A B Y VP VN
*.PININFO A:I B:I Y:O VP:I VN:I
XM1 net1 B net2 VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM4 net2 A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM6 Y net1 VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 net1 A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM3 net1 B VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM5 Y net1 VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
.ends
.end
