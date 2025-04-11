** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nor/goldwin_nor.sch
.subckt goldwin_nor A B Y VP VN
*.PININFO A:I B:I VP:I VN:I Y:O
XM1 net1 A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM2 Y B net1 VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM3 Y B VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM4 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
.ends
.end
