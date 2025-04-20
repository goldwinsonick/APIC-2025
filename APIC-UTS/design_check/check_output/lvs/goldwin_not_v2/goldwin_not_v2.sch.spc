** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not_v2/goldwin_not_v2.sch
.subckt goldwin_not_v2 A Y VP VN
*.PININFO A:I VP:I VN:I Y:O
XM1 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
.ends
.end
