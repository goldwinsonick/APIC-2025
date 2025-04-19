** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_mux/goldwin_mux.sch
.subckt goldwin_mux A B S Y VP VN
*.PININFO A:I B:I S:I VP:I VN:I Y:O
x1 S net1 VP VN goldwin_not
x2 net1 A net3 VP VN goldwin_and
x3 S B net2 VP VN goldwin_and
x4 net3 net2 Y VP VN goldwin_or
.ends

* expanding   symbol:  /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not/goldwin_not.sym # of pins=4
** sym_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not/goldwin_not.sym
** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not/goldwin_not.sch
.subckt goldwin_not A Y VP VN
*.PININFO A:I VP:I VN:I Y:O
XM1 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
.ends


* expanding   symbol:  /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_and/goldwin_and.sym # of pins=5
** sym_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_and/goldwin_and.sym
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


* expanding   symbol:  /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_or/goldwin_or.sym # of pins=5
** sym_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_or/goldwin_or.sym
** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_or/goldwin_or.sch
.subckt goldwin_or A B Y VP VN
*.PININFO A:I B:I Y:O VP:I VN:I
XM1 net1 A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM4 net1 B VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM6 Y net1 VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 net2 B VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM3 net1 A net2 VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM5 Y net1 VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
.ends

.end
