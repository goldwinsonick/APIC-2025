* libraries
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_mux_v2.spice

* testbench
X1 A B S D VP VN goldwin_mux_v2
Vdd VP VN 1.8
Vgnd VN 0 0
VA A VN DC 0 pulse(0 1.8 0n 100p 100p 20n 40n)
VB B VN DC 0 pulse(0 1.8 0n 100p 100p 10n 20n)
VS S VN DC 0 pulse(0 1.8 0n 100p 100p 40n 80n)
.tran 10p 80n
.control
run
plot v(A)+6 v(B)+4 v(S)+2  v(D)
.endc
