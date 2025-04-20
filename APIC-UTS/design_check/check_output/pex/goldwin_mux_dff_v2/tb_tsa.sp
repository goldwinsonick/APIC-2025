* --- Libraries ---
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_mux_dff_v2.pex.spice

* --- Testbench ---
X1 CLK A B S D Q QI VP VN goldwin_mux_dff_v2
Vdd VP VN 1.8
Vgnd VN 0 0

* ignore the B will be unused (S always 0)
VB B VN 0
VS S VN 0

* Focus on A to control D
.param start_A=9.8n+60p
.param end_A=10n+90p
VA A VN PWL(0 0 {start_A} 0 {start_A} 1.8 end_A 1.8 {end_A} 0)

* Control CLK
.param start_CLK=10n
.param end_CLK=10n+90p
VCLK CLK VN PWL(0 0 {start_CLK} 0 {start_CLK} 1.8 end_A 1.8 {end_CLK} 0)

* --- Analysis ---
.save CLK A B S D Q QI VP VN
.tran 5p 11n 9.5n

* --- Simulation ---
.control
run
write wave/tsa_final2.raw
*plot v(CLK)+12 v(A)+10 v(B)+8 v(S)+6 v(D)+4 v(Q)+2 v(QI)
plot v(CLK)+4 v(D)+2 v(Q) v(QI)

.endc
