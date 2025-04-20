* --- Libraries ---
.lib '/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice' tt
.include goldwin_mux_dff_v2.pex.spice

* --- Testbench ---
X1 CLK A B S D Q QI VP VN goldwin_mux_dff_v2
Vdd VP VN 1.8
Vgnd VN 0 0
VCLK CLK VN DC 0 pulse(0 1.8 10n 100p 100p 10n 20n)
VA A VN DC 0 pulse(0 1.8 80n 100p 100p 80n 160n)
VB B VN DC 0 pulse(0 1.8 40n 100p 100p 40n 80n)
VS S VN DC 0 pulse(0 1.8 20n 100p 100p 20n 40n)

* --- Analysis ---
.save CLK A B S D Q QI VP VN
.tran 1p 70.3n 69.95n

* --- Measurement ---
.meas tran tclk1 FIND time WHEN v(CLK)=0.9 RISE=2
.meas tran tclk2 FIND time WHEN v(CLK)=0.9 RISE=3
.meas tran tD_before_clk FIND time WHEN v(D)=0.9 RISE=2
.meas tran tD_after_clk FIND time WHEN v(D)=0.9 RISE=3
.meas tran tCQ TRIG v(CLK) VAL=0.9 RISE=2 TARG v(Q) VAL=0.9 RISE=2

.meas tran tsu param='tclk1 - tD_before_clk'
.meas tran thold param='tD_after_clk - tclk1'
.meas tran tperiod param='tclk2 - tclk1'
.meas tran fmax param='1 / tperiod'

* --- Simulation ---
.control
run
write wave/delay_v2.raw
plot v(CLK)+12 v(A)+10 v(B)+8 v(S)+6 v(D)+4 v(Q)+2 v(QI)
print tsu thold tCQ tperiod fmax

.endc
