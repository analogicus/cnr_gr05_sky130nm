v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -110 70 70 70 {
lab=VSS}
N 70 40 90 40 {
lab=VSS}
N 90 40 90 70 {
lab=VSS}
N 70 70 90 70 {
lab=VSS}
N -90 40 -70 40 {
lab=VSS}
N -90 40 -90 70 {
lab=VSS}
N -30 40 30 40 {
lab=xxx}
N -70 -50 -70 10 {
lab=xxx}
N -70 -20 -20 -20 {
lab=xxx}
N -20 -20 -20 40 {
lab=xxx}
N 70 -50 70 10 {
lab=xxx}
N -100 -50 70 -50 {
lab=xxx}
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C1F2.sym} 30 40 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C1F2.sym} -30 40 0 1 {name=x2 }
C {devices/ipin.sym} -100 -50 0 0 {name=p1 lab=VDD}
C {devices/ipin.sym} -110 70 0 0 {name=p2 lab=VSS}
