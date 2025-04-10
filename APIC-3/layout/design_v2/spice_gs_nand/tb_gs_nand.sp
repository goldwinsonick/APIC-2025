.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include gs_nand.spice

X1 A B Y VP VN gs_nand

Vdd VP VN 1.8
Vgnd VN 0 0
VA A GND pulse(0 1.8 0n 0.1n 0.1n 10n 20n)
VB B GND pulse(0 1.8 0n 0.1n 0.1n 5n 10n)

.tran 10p 40n
.control
run
plot v(A) v(B)+2 v(Y)+4
.endc
