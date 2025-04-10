.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include gs_xor.spice
Xinv A B Y VP VN gs_xor
Vdd VP VN 1.8
Vgnd VN 0 0
Vin1 A VN DC 0 pulse(0 1.8 0n 100p 100p 10n 20n)
Vin2 B VN DC 0 pulse(0 1.8 0n 100p 100p 5n 10n)
* V1 V2 TD TR TF PW PER
.tran 10p 40n
.control
run
plot v(A) v(B)+2 v(Y)+4
.endc
