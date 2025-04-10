.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include gs_not.spice

X1 A Y VP VN gs_not

Vdd VP VN 1.8
Vgnd VN 0 0
VA A GND pulse(0 1.8 0n 0.1n 0.1n 10n 20n)

.tran 10p 40n
.control
run
plot v(A) v(Y)+2
.endc
