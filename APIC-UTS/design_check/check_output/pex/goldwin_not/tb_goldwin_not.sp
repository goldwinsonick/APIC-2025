* libraries
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_not.pex.spice

* testbench
X1 A Y VP VN goldwin_not
Vdd VP VN 1.8
Vgnd VN 0 0
VA A VN DC 0 pulse(0 1.8 0n 100p 100p 10n 20n)
.tran 10p 40n
.control

save all
tran 0.01n 1u
set appendwrite
write inverter.raw

meas tran tpf
+ TRIG v(A) VAL='0.5VP' RISE=1
+ TARG v(Y) VAL='0.5*VP' FALL=1

*Rising Propagation Delay

meas tran tpr
+ TRIG v(A) VAL='0.5VP' RISE=1
+ TARG v(Y) VAL='0.5VP' FALL=1

meas tran tfall
+ TRIG v(A) VAL='0.8VP' RISE=1
+ TARG v(Y) VAL='0.2VP' FALL=1

meas tran trise
+ TRIG v(A) VAL='0.2VP' RISE=1
+ TARG v(Y) VAL='0.8VP' FALL=1

*Delay Calculation
let Param = ('tpr+tpf'*0.5)
print Param

.endc

.end
