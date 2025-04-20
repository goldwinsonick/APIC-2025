* --- Libraries ---
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_mux_dff.pex.spice

* --- Testbench ---
X1 CLK A B S D Q QI VP VN goldwin_mux_dff
Vdd VP VN 1.8
Vgnd VN 0 0
VCLK CLK VN DC 0 pulse(0 1.8 10n 100p 100p 10n 20n)
* Set A, B, S to fixed values for this test (or as needed)
VA A VN DC 0
VB B VN DC 0
VS S VN DC 0

.param d_delay=-9p
VD D VN DC 0 pulse(0 1.8 {60n+d_delay} 100p 100p 60n 120n)


* --- Analysis ---
.save CLK D Q QI
.tran 1p 61n 59n

* --- Simulation ---
.control
run
write time_analysis_2.raw
plot v(CLK)+6 v(D)+4 v(Q)+2 v(QI)
.endc
