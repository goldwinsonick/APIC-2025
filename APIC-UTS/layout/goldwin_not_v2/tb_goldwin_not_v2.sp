* libraries
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_not_v2.spice

* testbench
X1 A Y VP VN goldwin_not_v2
Vdd VP VN 1.8
Vgnd VN 0 0
VA A VN DC 0 pulse(0 1.8 0n 100p 100p 10n 20n)
.tran 10p 40n
.control
run
plot v(A) v(Y)+2
.endc
