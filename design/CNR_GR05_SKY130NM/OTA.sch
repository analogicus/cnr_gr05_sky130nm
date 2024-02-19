v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -410 -70 -410 {
lab=#net1}
N -160 -230 -150 -230 {
lab=VSS}
N -150 -230 -150 -200 {
lab=VSS}
N -220 -590 -110 -590 {
lab=#net2}
N -270 -620 -70 -620 {
lab=VDD_1V8}
N -70 -590 -60 -590 {
lab=VDD_1V8}
N -60 -620 -60 -590 {
lab=VDD_1V8}
N -70 -620 -60 -620 {
lab=VDD_1V8}
N -260 -560 -220 -560 {
lab=#net2}
N -220 -590 -220 -560 {
lab=#net2}
N -270 -590 -260 -590 {
lab=VDD_1V8}
N -270 -620 -270 -590 {
lab=VDD_1V8}
N -260 -560 -260 -540 {
lab=#net2}
N -260 -480 -260 -470 {
lab=#net2}
N -590 -180 -160 -180 {
lab=VSS}
N -160 -200 -160 -180 {
lab=VSS}
N -430 -620 -270 -620 {
lab=VDD_1V8}
N -590 -620 -430 -620 {
lab=VDD_1V8}
N -260 -540 -260 -480 {
lab=#net2}
N -160 -320 -160 -260 {
lab=#net3}
N -160 -410 -160 -380 {
lab=#net1}
N -150 -200 -150 -180 {
lab=VSS}
N -160 -180 -150 -180 {
lab=VSS}
N -70 -560 -70 -470 {
lab=VO}
N -70 -540 -30 -540 {
lab=VO}
N -260 -440 -70 -440 {
lab=VSS}
N -220 -440 -220 -180 {
lab=VSS}
N -260 -230 -200 -230 {
lab=#net4}
N -260 -290 -260 -230 {
lab=#net4}
N -560 -620 -560 -290 {
lab=VDD_1V8}
N -560 -270 -560 -180 {
lab=VSS}
C {devices/ipin.sym} -590 -620 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -590 -180 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -300 -440 0 0 {name=p4 lab=VP}
C {devices/ipin.sym} -30 -440 0 1 {name=p3 lab=VN}
C {devices/opin.sym} -30 -540 0 0 {name=p5 lab=VO}
C {devices/vsource.sym} -160 -350 0 0 {name=Vtest1 value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -300 -440 0 0 {name=x7 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -30 -440 0 1 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} -110 -590 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} -220 -590 0 1 {name=x3 }
C {CNR_GR05_SKY130NM/IREF.sym} -410 -280 0 0 {name=x9}
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C1F2.sym} -200 -230 0 0 {name=x4 }
