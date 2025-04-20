* libraries
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_mux_dff_v2.spice

* testbench
X1 CLK A B S D Q QI VP VN goldwin_mux_dff_v2
Vdd VP VN 1.8
Vgnd VN 0 0
VCLK CLK VN DC 0 pulse(0 1.8 10n 100p 100p 10n 20n)
VA A VN DC 0 pulse(0 1.8 80n 100p 100p 80n 160n)
VB B VN DC 0 pulse(0 1.8 40n 100p 100p 40n 80n)
VS S VN DC 0 pulse(0 1.8 20n 100p 100p 20n 40n)

.tran 10p 160n
.control
run
plot v(CLK)+12 v(A)+10 v(B)+8 v(S)+6 v(D)+4 v(Q)+2 v(QI)
.endc
