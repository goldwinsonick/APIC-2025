.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include magic_and.spice
Xinv A B Y VP VN magic_and
Vdd VP VN 1.8
Vgnd VN 0 0
Vin1 A VN DC 0 pulse(0 1.8 10n 100p 100p 10n 20n)
Vin2 B VN DC 0 pulse(0 1.8 5n 100p 100p 10n 20n)
* V1 V2 TD TR TF PW PER
.tran 10p 40n
.control
run
plot v(A) v(B)+2 v(Y)+4
.endc
