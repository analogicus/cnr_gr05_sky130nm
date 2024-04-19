v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -210 -20 -170 -20 {
lab=#net1}
N -510 -40 -170 -40 {
lab=VDD_1V8}
N -510 -40 -510 -20 {
lab=VDD_1V8}
N -520 -20 -510 -20 {
lab=VDD_1V8}
N -580 -20 -520 -20 {
lab=VDD_1V8}
N -580 0 -510 0 {
lab=VDD_1V8}
N -510 0 -510 20 {
lab=VDD_1V8}
N -170 0 -170 20 {
lab=VDD_1V8}
N -510 20 -170 20 {
lab=VDD_1V8}
C {CNR_GR05_SKY130NM/PTAT.sym} -20 -20 0 0 {name=x1}
C {CNR_GR05_SKY130NM/IREF.sym} -360 -10 0 0 {name=x2}
C {devices/ipin.sym} -580 -20 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -580 0 0 0 {name=p2 lab=VSS}
