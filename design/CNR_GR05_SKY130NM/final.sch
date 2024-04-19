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
lab=VSS}
N -510 0 -510 20 {
lab=VSS}
N -170 0 -170 20 {
lab=VSS}
N -510 20 -170 20 {
lab=VSS}
N 130 -40 200 -40 {
lab=#net2}
N -190 -60 200 -60 {
lab=VDD_1V8}
N -190 -60 -190 -40 {
lab=VDD_1V8}
N 200 -0 200 20 {
lab=VSS}
N -170 20 200 20 {
lab=VSS}
N 180 -20 200 -20 {
lab=#net3}
N 180 -20 180 110 {
lab=#net3}
N -530 -20 -530 80 {
lab=VDD_1V8}
N -530 110 -120 110 {
lab=VDD_1V8}
N -530 80 -530 110 {
lab=VDD_1V8}
N -560 170 -120 170 {
lab=VSS}
N -560 0 -560 170 {
lab=VSS}
N -180 130 -120 130 {
lab=#net4}
N -180 130 -180 300 {
lab=#net4}
N -180 390 -160 390 {
lab=#net5}
N -160 150 -160 390 {
lab=#net5}
N -160 150 -120 150 {
lab=#net5}
N -530 110 -530 300 {
lab=VDD_1V8}
N -530 300 -480 300 {
lab=VDD_1V8}
N -560 170 -560 340 {
lab=VSS}
N -560 340 -480 340 {
lab=VSS}
N -600 320 -480 320 {
lab=VPWR_UP}
N -530 300 -530 390 {
lab=VDD_1V8}
N -530 390 -480 390 {
lab=VDD_1V8}
N -560 340 -560 430 {
lab=VSS}
N -560 430 -480 430 {
lab=VSS}
N 500 -60 540 -60 {
lab=#net6}
N 180 -80 540 -80 {
lab=VDD_1V8}
N 180 -80 180 -60 {
lab=VDD_1V8}
N -180 -110 -180 -20 {
lab=#net1}
N -180 -110 520 -110 {
lab=#net1}
N 520 -110 520 -20 {
lab=#net1}
N 520 -20 540 -20 {
lab=#net1}
N 530 -40 540 -40 {
lab=#net7}
N 530 -230 530 -40 {
lab=#net7}
N 200 20 540 20 {
lab=VSS}
N 540 -0 540 20 {
lab=VSS}
N -500 410 -480 410 {
lab=#net8}
N -500 410 -500 500 {
lab=#net8}
N -500 500 950 500 {
lab=#net8}
N 950 -80 950 500 {
lab=#net8}
N 840 -80 950 -80 {
lab=#net8}
C {CNR_GR05_SKY130NM/PTAT.sym} -20 -20 0 0 {name=x1}
C {CNR_GR05_SKY130NM/IREF.sym} -360 -10 0 0 {name=x2}
C {devices/ipin.sym} -580 -20 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -580 0 0 0 {name=p2 lab=VSS}
C {CNR_GR05_SKY130NM/INTEGRATOR.sym} 350 -30 0 0 {name=x3}
C {CNR_GR05_SKY130NM/OR.sym} 30 140 0 0 {name=x4}
C {CNR_GR05_SKY130NM/POSEDGE.sym} -330 320 0 0 {name=x5}
C {CNR_GR05_SKY130NM/POSEDGE.sym} -330 410 0 0 {name=x6}
C {devices/ipin.sym} -600 320 0 0 {name=p3 lab=VPWR_UP}
C {CNR_GR05_SKY130NM/OTA.sym} 690 -40 0 0 {name=x7}
