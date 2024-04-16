v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
lab=#net1}
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
N -10 -50 10 -50 {
lab=TEST}
N -40 -50 -10 -50 {
lab=TEST}
N -400 -50 -380 -50 {
lab=#net2}
N -520 -50 -500 -50 {
lab=#net3}
N -660 -50 -620 -50 {
lab=A}
N -580 -120 -580 -90 {
lab=VDD_1V8}
N -580 -120 -340 -120 {
lab=VDD_1V8}
N -340 -120 -340 -90 {
lab=VDD_1V8}
N -460 -120 -460 -90 {
lab=VDD_1V8}
N -620 80 -340 80 {
lab=VSS}
N -340 -10 -340 80 {
lab=VSS}
N -460 -10 -460 80 {
lab=VSS}
N -580 -10 -580 80 {
lab=VSS}
N -150 -50 -130 -50 {
lab=#net4}
N -90 -120 -90 -90 {
lab=VDD_1V8}
N -210 -120 -210 -90 {
lab=VDD_1V8}
N -90 -10 -90 80 {
lab=VSS}
N -210 -10 -210 80 {
lab=VSS}
N -280 -50 -250 -50 {
lab=#net5}
N -340 -120 -90 -120 {
lab=VDD_1V8}
N -340 80 -90 80 {
lab=VSS}
N -390 -50 -390 -10 {
lab=#net2}
N -390 50 -390 80 {
lab=VSS}
N -260 -50 -260 -10 {
lab=#net5}
N -260 50 -260 80 {
lab=VSS}
C {devices/lab_pin.sym} 50 -60 3 1 {name=p11 sig_type=std_logic lab=TEST}
C {CNR_GR05_SKY130NM/AND.sym} 240 -40 0 0 {name=x12}
C {devices/lab_pin.sym} 140 -120 3 1 {name=p12 sig_type=std_logic lab=VDD_1V8}
C {devices/lab_pin.sym} 140 30 1 1 {name=p13 sig_type=std_logic lab=VSS}
C {CNR_GR05_SKY130NM/INV.sym} 410 -40 0 0 {name=x13}
C {devices/opin.sym} 400 -40 0 0 {name=p4 lab=O
}
C {CNR_GR05_SKY130NM/INV.sym} -470 -50 0 0 {name=x51}
C {CNR_GR05_SKY130NM/INV.sym} -350 -50 0 0 {name=x52}
C {CNR_GR05_SKY130NM/INV.sym} -230 -50 0 0 {name=x53}
C {devices/ipin.sym} -580 -120 0 0 {name=p21 lab=VDD_1V8
}
C {devices/ipin.sym} -620 80 0 0 {name=p22 lab=VSS}
C {devices/ipin.sym} -660 -50 0 0 {name=p23 lab=A}
C {devices/lab_pin.sym} 40 30 0 1 {name=p2 sig_type=std_logic lab=A}
C {CNR_GR05_SKY130NM/INV.sym} -100 -50 0 0 {name=x1}
C {CNR_GR05_SKY130NM/INV.sym} 20 -50 0 0 {name=x2}
C {sky130_fd_pr/cap_mim_m3_2.sym} -390 20 0 0 {name=C3 model=cap_mim_m3_2 W=5 L=10 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -390 20 0 0 {name=C1 model=cap_mim_m3_2 W=5 L=10 MF=2 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_2.sym} -260 20 0 0 {name=C2 model=cap_mim_m3_2 W=5 L=10 MF=2 spiceprefix=X}
