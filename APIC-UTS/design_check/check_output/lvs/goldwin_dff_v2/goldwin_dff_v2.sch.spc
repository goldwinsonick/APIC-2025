** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_dff_v2/goldwin_dff_v2.sch
.subckt goldwin_dff_v2 D CLK VP VN Q QI VP VN
*.PININFO D:I CLK:I VP:I VN:I Q:O QI:O
x1 D net1 VP VN goldwin_not_v2
x2 net1 CLK net2 VP VN goldwin_nand_v2
x3 net2 Q QI VP VN goldwin_nand_v2
x4 CLK D net3 VP VN goldwin_nand_v2
x5 net3 QI Q VP VN goldwin_nand_v2
.ends

* expanding   symbol:  /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not_v2/goldwin_not_v2.sym # of pins=4
** sym_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not_v2/goldwin_not_v2.sym
** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not_v2/goldwin_not_v2.sch
.subckt goldwin_not_v2 A Y VP VN
*.PININFO A:I VP:I VN:I Y:O
XM1 Y A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM2 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
.ends


* expanding   symbol:  /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand_v2/goldwin_nand_v2.sym # of pins=5
** sym_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand_v2/goldwin_nand_v2.sym
** sch_path: /foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand_v2/goldwin_nand_v2.sch
.subckt goldwin_nand_v2 A B Y VP VN
*.PININFO A:I B:I VP:I VN:I Y:O
XM1 Y A VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM2 Y B VP VP sky130_fd_pr__pfet_01v8 L=0.15 W=3 nf=1 m=1
XM3 Y B net1 VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
XM4 net1 A VN VN sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 m=1
.ends

.end
