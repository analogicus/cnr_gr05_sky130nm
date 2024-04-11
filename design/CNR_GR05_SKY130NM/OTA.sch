v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -260 -410 -70 -410 {
lab=#net1}
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
N -430 -620 -270 -620 {
lab=VDD_1V8}
N -590 -620 -430 -620 {
lab=VDD_1V8}
N -260 -540 -260 -480 {
lab=#net2}
N -160 -410 -160 -380 {
lab=#net1}
N -70 -560 -70 -470 {
lab=VO}
N -70 -540 -30 -540 {
lab=VO}
N -260 -440 -70 -440 {
lab=VSS}
N -620 -10 -140 -10 {
lab=VSS}
N -160 -320 -160 -200 {
lab=#net3}
N -140 -440 -140 -10 {
lab=VSS}
N -160 -200 -160 -120 {
lab=#net3}
N -160 -60 -160 -10 {
lab=VSS}
N -230 -90 -200 -90 {
lab=Vtail}
N -160 -90 -140 -90 {
lab=VSS}
N -30 -440 -10 -440 {}
N -320 -440 -300 -440 {}
C {devices/ipin.sym} -590 -620 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -620 -10 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -320 -440 0 0 {name=p4 lab=VP}
C {devices/ipin.sym} -10 -440 0 1 {name=p3 lab=VN}
C {devices/opin.sym} -30 -540 0 0 {name=p5 lab=VO}
C {devices/vsource.sym} -160 -350 0 0 {name=Vtest1 value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -300 -440 0 0 {name=x7 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -30 -440 0 1 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} -110 -590 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} -220 -590 0 1 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C1F2.sym} -200 -90 0 0 {name=x5 }
C {devices/ipin.sym} -230 -90 0 0 {name=p6 lab=Vtail}
