v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -190 -0 -190 {
lab=VDD_1V8}
N -0 -190 -0 -160 {
lab=VDD_1V8}
N -0 -100 -0 -70 {
lab=#net1}
N -70 60 60 60 {
lab=#net2}
N -0 -10 0 60 {
lab=#net2}
N -70 120 60 120 {
lab=VSS}
N -70 120 -70 190 {
lab=VSS}
N -80 190 -70 190 {
lab=VSS}
N -70 90 -50 90 {
lab=VSS}
N -50 90 -50 120 {
lab=VSS}
N 60 90 80 90 {
lab=VSS}
N 80 90 80 120 {
lab=VSS}
N 60 120 80 120 {
lab=VSS}
N -0 20 80 20 {
lab=#net2}
N -210 -70 -40 -70 {
lab=B}
N -40 -70 -40 -40 {
lab=B}
N -210 -100 -40 -100 {
lab=A}
N -40 -130 -40 -100 {
lab=A}
N -190 -70 -190 90 {
lab=B}
N -190 90 -110 90 {
lab=B}
N -140 -100 -140 70 {
lab=A}
N -140 70 20 70 {
lab=A}
N 20 70 20 90 {
lab=A}
N 0 -40 20 -40 {
lab=VDD_1V8}
N 20 -190 20 -40 {
lab=VDD_1V8}
N 0 -190 20 -190 {
lab=VDD_1V8}
N 0 -130 20 -130 {
lab=VDD_1V8}
N 230 20 290 20 {
lab=O}
N 80 20 130 20 {
lab=#net2}
N 170 60 170 120 {
lab=VSS}
N 80 120 170 120 {
lab=VSS}
N 170 -190 170 -20 {
lab=VDD_1V8}
N 20 -190 170 -190 {
lab=VDD_1V8}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C12F0.sym} -40 -130 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C12F0.sym} -40 -40 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C12F0.sym} -110 90 0 0 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C12F0.sym} 20 90 0 0 {name=x4 }
C {devices/ipin.sym} -80 -190 0 0 {name=p1 lab=VDD_1V8
}
C {devices/ipin.sym} -80 190 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 290 20 0 0 {name=p4 lab=O
}
C {devices/ipin.sym} -210 -100 0 0 {name=p3 lab=A}
C {devices/ipin.sym} -210 -70 0 0 {name=p5 lab=B}
C {CNR_GR05_SKY130NM/INV.sym} 280 20 0 0 {name=x5}
