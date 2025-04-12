v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -30 30 -30 {lab=D}
N 140 -30 190 -30 {lab=#net1}
N 0 -30 0 140 {lab=D}
N 0 140 190 140 {lab=D}
N 170 -0 190 -0 {lab=CLK}
N 170 -0 170 170 {lab=CLK}
N 170 170 190 170 {lab=CLK}
N 300 -20 310 -20 {lab=#net2}
N 310 -20 310 170 {lab=#net2}
N 310 170 360 170 {lab=#net2}
N 470 150 490 150 {lab=QI}
N 490 40 490 150 {lab=QI}
N 490 40 520 40 {lab=QI}
N 470 -20 490 -20 {lab=Q}
N 490 -20 490 20 {lab=Q}
N 490 20 520 20 {lab=Q}
N -70 -80 70 -80 {lab=VP}
N 70 -80 400 -80 {lab=VP}
N 400 -80 400 -70 {lab=VP}
N 230 -80 230 -70 {lab=VP}
N 230 100 400 100 {lab=VP}
N 400 100 580 100 {lab=VP}
N 580 -80 580 100 {lab=VP}
N 400 -80 580 -80 {lab=VP}
N 230 40 400 40 {lab=VN}
N 70 40 230 40 {lab=VN}
N 70 20 70 40 {lab=VN}
N 70 40 70 200 {lab=VN}
N 70 200 70 210 {lab=VN}
N 70 210 400 210 {lab=VN}
N -70 70 70 70 {lab=VN}
N -70 50 170 50 {lab=CLK}
N 360 70 360 140 {lab=Q}
N 360 70 480 70 {lab=Q}
N 480 -20 480 70 {lab=Q}
N 300 150 320 150 {lab=#net3}
N 320 -30 320 150 {lab=#net3}
N 320 -30 360 -30 {lab=#net3}
N 360 0 360 50 {lab=QI}
N 360 50 490 50 {lab=QI}
C {ipin.sym} -70 -30 0 0 {name=p1 lab=D}
C {ipin.sym} -70 50 0 0 {name=p2 lab=CLK
}
C {ipin.sym} -70 -80 0 0 {name=p3 lab=VP
}
C {ipin.sym} -70 70 0 0 {name=p4 lab=VN
}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not/goldwin_not.sym} 100 -30 0 0 {name=x1}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand/goldwin_nand.sym} 400 -20 0 0 {name=x3}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand/goldwin_nand.sym} 230 -20 0 0 {name=x4}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand/goldwin_nand.sym} 230 150 0 0 {name=x5}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_nand/goldwin_nand.sym} 400 150 0 0 {name=x6}
C {opin.sym} 520 20 0 0 {name=p5 lab=Q
}
C {opin.sym} 520 40 0 0 {name=p6 lab=QI}
