v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -30 200 -30 {lab=#net1}
N 200 -40 200 -30 {lab=#net1}
N 200 -40 220 -40 {lab=#net1}
N 330 110 350 110 {lab=#net2}
N 350 110 360 110 {lab=#net2}
N 110 20 110 30 {lab=VN}
N 110 30 420 30 {lab=VN}
N 110 -80 420 -80 {lab=VP}
N 360 -10 360 110 {lab=#net2}
N 360 -10 380 -10 {lab=#net2}
N 330 -30 350 -30 {lab=#net3}
N 350 -40 350 -30 {lab=#net3}
N 350 -40 380 -40 {lab=#net3}
N 200 -10 220 -10 {lab=A}
N 200 -10 200 40 {lab=A}
N 10 -30 70 -30 {lab=S}
N 10 40 200 40 {lab=A}
N 200 100 220 100 {lab=S}
N 490 -30 510 -30 {lab=Y}
N 10 -80 110 -80 {lab=VP}
N 230 -80 230 60 {lab=VP}
N 230 60 260 60 {lab=VP}
N 10 170 260 170 {lab=VN}
N 260 170 420 170 {lab=VN}
N 420 30 420 170 {lab=VN}
N 10 130 220 130 {lab=B}
N 50 -30 50 100 {lab=S}
N 50 100 200 100 {lab=S}
C {ipin.sym} 10 40 0 0 {name=p1 lab=A}
C {ipin.sym} 10 130 0 0 {name=p2 lab=B}
C {ipin.sym} 10 -30 0 0 {name=p3 lab=S}
C {ipin.sym} 10 -80 0 0 {name=p4 lab=VP
}
C {ipin.sym} 10 170 0 0 {name=p5 lab=VN
}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_not/goldwin_not.sym} 140 -30 0 0 {name=x1}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_and/goldwin_and.sym} 260 -30 0 0 {name=x2}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_and/goldwin_and.sym} 260 110 0 0 {name=x3}
C {/foss/designs/APIC-2025/APIC-UTS/schematic/goldwin_or/goldwin_or.sym} 420 -30 0 0 {name=x4}
C {opin.sym} 510 -30 0 0 {name=p6 lab=Y}
