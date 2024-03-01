v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -310 -120 -310 -90 {
lab=VDD_1V8}
N -310 -10 -310 20 {
lab=VSS}
N -250 -50 -230 -50 {
lab=#net1}
N -130 -50 -110 -50 {
lab=#net2}
N -190 -90 -70 -90 {
lab=VDD_1V8}
N -310 -90 -190 -90 {
lab=VDD_1V8}
N -310 -10 -190 -10 {
lab=VSS}
N -190 -10 -70 -10 {
lab=VSS}
N 10 -50 90 -50 {
lab=TEST}
N 50 -60 50 -50 {
lab=TEST}
N 140 10 140 30 {
lab=VSS}
N 140 -120 140 -90 {
lab=VDD_1V8}
N 50 -30 90 -30 {
lab=A}
N 225 -40 260 -40 {
lab=#net3}
N 300 -100 300 -80 {
lab=VDD_1V8}
N 140 -100 300 -100 {
lab=VDD_1V8}
N 300 0 300 20 {
lab=VSS}
N 140 20 300 20 {
lab=VSS}
N 360 -40 400 -40 {
lab=O}
N 40 -30 40 30 {
lab=A}
N 40 -30 50 -30 {
lab=A}
N -390 -50 -350 -50 {
lab=A}
N -10 -50 10 -50 {
lab=TEST}
C {devices/lab_pin.sym} 50 -60 3 1 {name=p11 sig_type=std_logic lab=TEST}
C {CNR_GR05_SKY130NM/INV.sym} -200 -50 0 0 {name=x9}
C {CNR_GR05_SKY130NM/INV.sym} -80 -50 0 0 {name=x10}
C {CNR_GR05_SKY130NM/INV.sym} 40 -50 0 0 {name=x11}
C {CNR_GR05_SKY130NM/AND.sym} 240 -40 0 0 {name=x12}
C {devices/lab_pin.sym} 140 -120 3 1 {name=p12 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_pin.sym} 140 30 1 1 {name=p13 sig_type=std_logic lab=VSS}
C {CNR_GR05_SKY130NM/INV.sym} 410 -40 0 0 {name=x13}
C {devices/ipin.sym} -310 -120 0 0 {name=p1 lab=VDD_1V8
}
C {devices/ipin.sym} -310 20 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 400 -40 0 0 {name=p4 lab=O
}
C {devices/ipin.sym} -390 -50 0 0 {name=p3 lab=A}
C {devices/lab_pin.sym} 40 30 2 1 {name=p5 sig_type=std_logic lab=A}
