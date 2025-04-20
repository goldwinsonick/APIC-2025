* libraries
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_nand_v2.spice

* testbench
X1 A B Y VP VN goldwin_nand_v2
Vdd VP VN 1.8
Vgnd VN 0 0
VA A VN DC 0 pulse(0 1.8 0n 100p 100p 10n 20n)
VB B VN DC 0 pulse(0 1.8 0n 100p 100p 20n 40n)
.tran 10p 40n
.control
run
plot v(A) v(B)+2 v(Y)+4
.endc
