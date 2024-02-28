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
lab=#net3}
N -160 -180 -160 -150 {
lab=#net4}
N -420 -180 -420 -150 {
lab=#net5}
N -160 -210 -140 -210 {
lab=VSS}
N -140 -210 -140 -150 {
lab=VSS}
N -440 -210 -420 -210 {
lab=VSS}
N -440 -210 -440 -150 {
lab=VSS}
N -420 -290 -420 -240 {
lab=#net6}
N -380 -210 -300 -210 {
lab=#net6}
N -420 -260 -340 -260 {
lab=#net6}
N -340 -260 -340 -210 {
lab=#net6}
N -420 -400 -420 -370 {
lab=#net7}
N -160 -320 -160 -240 {
lab=#net8}
N -420 -520 -420 -460 {
lab=VDD_1V8}
N -160 -40 -160 -10 {
lab=VSS}
N -420 -40 -420 -10 {
lab=VSS}
N -160 -70 -140 -70 {
lab=VSS}
N -140 -70 -140 -10 {
lab=VSS}
N -440 -70 -420 -70 {
lab=VSS}
N -440 -70 -440 -10 {
lab=VSS}
N -420 -150 -420 -100 {
lab=#net5}
N -380 -70 -300 -70 {
lab=#net4}
N -160 -150 -160 -100 {
lab=#net4}
N -140 -150 -140 -70 {
lab=VSS}
N -440 -150 -440 -70 {
lab=VSS}
N -440 -330 -440 -210 {
lab=VSS}
N -420 -370 -380 -370 {
lab=#net7}
N -420 -290 -380 -290 {
lab=#net6}
N -440 -330 -400 -330 {
lab=VSS}
N -160 -100 -80 -100 {
lab=#net4}
N -160 -40 -80 -40 {
lab=VSS}
N -200 -70 -200 -60 {
lab=#net4}
N -200 -60 -120 -60 {
lab=#net4}
N -120 -70 -120 -60 {
lab=#net4}
N -160 -180 -80 -180 {
lab=#net4}
N -160 -240 -80 -240 {
lab=#net8}
N -200 -210 -200 -200 {
lab=#net6}
N -200 -200 -120 -200 {
lab=#net6}
N -120 -210 -120 -200 {
lab=#net6}
N -80 -210 -60 -210 {
lab=VSS}
N -60 -210 -60 -10 {
lab=VSS}
N -140 -10 -60 -10 {
lab=VSS}
N -80 -70 -60 -70 {
lab=VSS}
N -300 -210 -200 -210 {
lab=#net6}
N -300 -70 -200 -70 {
lab=#net4}
N -260 -130 -260 -70 {
lab=#net4}
N -420 -620 -420 -520 {
lab=VDD_1V8}
N -620 -10 -140 -10 {
lab=VSS}
N -120 -60 -30 -60 {
lab=#net4}
N -30 -70 -30 -60 {
lab=#net4}
N -120 -200 -30 -200 {
lab=#net6}
N -30 -210 -30 -200 {
lab=#net6}
N -80 -240 10 -240 {
lab=#net8}
N -80 -180 10 -180 {
lab=#net4}
N -80 -100 10 -100 {
lab=#net4}
N -80 -40 10 -40 {
lab=VSS}
N 10 -210 40 -210 {
lab=VSS}
N 40 -210 40 -10 {
lab=VSS}
N -60 -10 40 -10 {
lab=VSS}
N 10 -70 40 -70 {
lab=VSS}
N -420 -130 -260 -130 {}
N -160 -440 -160 -410 {}
C {devices/ipin.sym} -590 -620 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -620 -10 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -300 -440 0 0 {name=p4 lab=VP}
C {devices/ipin.sym} -30 -440 0 1 {name=p3 lab=VN}
C {devices/opin.sym} -30 -540 0 0 {name=p5 lab=VO}
C {devices/vsource.sym} -160 -350 0 0 {name=Vtest1 value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -300 -440 0 0 {name=x7 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -30 -440 0 1 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} -110 -590 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} -220 -590 0 1 {name=x3 }
C {devices/vsource.sym} -420 -430 0 0 {name=Vtest3 value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -200 -210 0 0 {name=x9 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -200 -70 0 0 {name=x10 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -380 -70 0 1 {name=x11 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -380 -210 0 1 {name=x12 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -420 -370 1 0 {name=x14 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -380 -370 1 0 {name=x15 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -120 -210 0 0 {name=x16 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -120 -70 0 0 {name=x17 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -30 -210 0 0 {name=x4 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} -30 -70 0 0 {name=x5 }
