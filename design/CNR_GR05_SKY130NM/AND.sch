v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -30 -120 80 -120 {
lab=VDD_1V8}
N -30 -210 -30 -120 {
lab=VDD_1V8}
N -70 -210 -30 -210 {
lab=VDD_1V8}
N -30 -90 -20 -90 {
lab=VDD_1V8}
N -20 -120 -20 -90 {
lab=VDD_1V8}
N 80 -90 90 -90 {
lab=VDD_1V8}
N 90 -120 90 -90 {
lab=VDD_1V8}
N 80 -120 90 -120 {
lab=VDD_1V8}
N -200 -90 -70 -90 {
lab=A}
N -200 -80 -200 -60 {
lab=B}
N -200 -80 40 -80 {
lab=B}
N 40 -90 40 -80 {
lab=B}
N -30 -60 80 -60 {
lab=O}
N 20 -60 20 10 {
lab=O}
N 20 70 20 100 {
lab=#net1}
N -60 200 20 200 {
lab=VSS}
N 20 160 20 200 {
lab=VSS}
N 20 40 40 40 {
lab=VSS}
N 40 40 40 200 {
lab=VSS}
N 20 200 40 200 {
lab=VSS}
N 20 130 40 130 {
lab=VSS}
N -200 -60 -200 120 {
lab=B}
N -200 120 -200 130 {
lab=B}
N -200 130 -20 130 {
lab=B}
N -150 40 -20 40 {
lab=A}
N -150 -90 -150 40 {
lab=A}
N 20 -20 140 -20 {
lab=O}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C12F0.sym} -70 -90 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C12F0.sym} 40 -90 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C12F0.sym} -20 40 0 0 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C12F0.sym} -20 130 0 0 {name=x4 }
C {devices/ipin.sym} -70 -210 0 0 {name=p1 lab=VDD_1V8
}
C {devices/ipin.sym} -60 200 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 140 -20 0 0 {name=p4 lab=O
}
C {devices/ipin.sym} -200 -90 0 0 {name=p3 lab=A}
C {devices/ipin.sym} -200 -60 0 0 {name=p5 lab=B}
