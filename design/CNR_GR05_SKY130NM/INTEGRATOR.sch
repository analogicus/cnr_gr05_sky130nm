v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 610 -420 640 -420 {
lab=VDD_1V8}
N 610 -390 610 -280 {
lab=Vout}
N 610 -310 740 -310 {
lab=Vout}
N 740 -310 740 -280 {
lab=Vout}
N 740 -220 740 -90 {
lab=VSS}
N 610 -90 740 -90 {
lab=VSS}
N 710 -250 740 -250 {
lab=VSS}
N 710 -250 710 -90 {
lab=VSS}
N 610 -220 610 -90 {
lab=VSS}
N 610 -340 740 -340 {
lab=Vout}
N 610 -490 610 -450 {
lab=VDD_1V8}
N 610 -580 610 -550 {
lab=VDD_1V8}
N 780 -250 830 -250 {
lab=RST}
N 610 -550 610 -490 {
lab=VDD_1V8}
N 510 -420 570 -420 {
lab=Vin}
N 640 -580 640 -420 {
lab=VDD_1V8}
N 560 -580 640 -580 {
lab=VDD_1V8}
C {sky130_fd_pr/cap_mim_m3_2.sym} 610 -250 0 0 {name=C3 model=cap_mim_m3_2 W=25 L=25 MF=32 spiceprefix=X}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 570 -420 0 0 {name=x12 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C1F2.sym} 780 -250 0 1 {name=x14 }
C {devices/opin.sym} 740 -340 0 0 {name=p1 lab=Vout}
C {devices/ipin.sym} 510 -420 0 0 {name=p2 lab=Vin}
C {devices/ipin.sym} 830 -250 0 1 {name=p3 lab=RST}
C {devices/ipin.sym} 560 -580 0 0 {name=p4 lab=VDD_1V8}
C {devices/ipin.sym} 610 -90 0 0 {name=p5 lab=VSS}
