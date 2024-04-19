v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -340 10 -340 {
lab=VDD_1V8}
N 10 -340 10 -270 {
lab=VDD_1V8}
N -0 -50 10 -50 {
lab=VSS}
N 10 -100 10 -50 {
lab=VSS}
N 10 -210 10 -160 {
lab=O}
N 10 -180 80 -180 {
lab=O}
N -100 -180 -60 -180 {
lab=I}
N -60 -240 -60 -180 {
lab=I}
N -60 -240 -30 -240 {
lab=I}
N -60 -180 -60 -130 {
lab=I}
N -60 -130 -30 -130 {
lab=I}
N 10 -240 30 -240 {}
N 30 -340 30 -240 {}
N 10 -340 30 -340 {}
N 10 -130 30 -130 {}
N 30 -130 30 -50 {}
N 10 -50 30 -50 {}
C {devices/ipin.sym} 0 -340 0 0 {name=p1 lab=VDD_1V8
}
C {devices/ipin.sym} 0 -50 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -100 -180 0 0 {name=p3 lab=I}
C {devices/opin.sym} 80 -180 0 0 {name=p4 lab=O
}
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C12F0.sym} -30 -130 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C12F0.sym} -30 -240 0 0 {name=x1 }
