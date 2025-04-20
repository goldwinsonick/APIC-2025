* libraries
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_dff_v2.spice

* testbench
X1 D CLK Q QI VP VN goldwin_dff_v2
Vdd VP VN 1.8
Vgnd VN 0 0
VA D VN DC 0 pulse(0 1.8 0n 100p 100p 20n 40n)
VB CLK VN DC 0 pulse(0 1.8 0n 100p 100p 10n 20n)
.tran 10p 80n
.control
run
plot v(D)+6 v(CLK)+4 v(Q)+2 V(QI)
.endc
