v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -110 410 -90 {
lab=VSS}
N 260 -110 260 -90 {
lab=VSS}
N 300 -140 300 -90 {
lab=VSS}
N 370 -140 370 -90 {
lab=VSS}
N 260 -260 260 -170 {
lab=#net1}
N 260 -310 260 -260 {
lab=#net1}
N 300 -420 370 -420 {
lab=#net2}
N 410 -530 410 -450 {
lab=VDD_1V8}
N 260 -530 260 -450 {
lab=VDD_1V8}
N 260 -390 260 -310 {
lab=#net1}
N 410 -580 410 -530 {
lab=VDD_1V8}
N 260 -580 260 -530 {
lab=VDD_1V8}
N -240 -500 -240 -350 {
lab=#net1}
N 410 -390 410 -350 {
lab=xxx}
N 230 -420 260 -420 {
lab=VDD_1V8}
N 230 -580 230 -420 {
lab=VDD_1V8}
N 410 -420 440 -420 {
lab=VDD_1V8}
N 440 -580 440 -420 {
lab=VDD_1V8}
N 410 -580 440 -580 {
lab=VDD_1V8}
N 410 -290 410 -270 {
lab=#net3}
N 410 -190 410 -170 {
lab=#net4}
N 340 -230 340 -90 {
lab=VSS}
N 140 -540 140 -490 {
lab=#net2}
N 330 -490 330 -420 {
lab=#net2}
N 140 -580 410 -580 {
lab=VDD_1V8}
N 140 -370 410 -370 {
lab=xxx}
N 140 -350 260 -350 {
lab=#net1}
N 140 -90 410 -90 {
lab=VSS}
N -160 -90 140 -90 {
lab=VSS}
N -240 -350 140 -350 {
lab=#net1}
N -220 -370 140 -370 {
lab=xxx}
N -220 -520 -220 -370 {
lab=xxx}
N -160 -580 140 -580 {
lab=VDD_1V8}
N 300 -490 330 -490 {
lab=#net2}
N 140 -490 170 -490 {
lab=#net2}
N 170 -490 300 -490 {
lab=#net2}
N 410 -270 450 -270 {
lab=#net3}
N 340 -230 430 -230 {
lab=VSS}
N 410 -190 450 -190 {
lab=#net4}
N -220 -530 -160 -530 {
lab=xxx}
N -220 -530 -220 -520 {
lab=xxx}
N -240 -510 -160 -510 {
lab=#net1}
N -240 -510 -240 -500 {
lab=#net1}
N -210 -550 -160 -550 {
lab=VDD_1V8}
N 140 -550 140 -540 {
lab=#net2}
N -180 -490 -160 -490 {
lab=Vtail}
N -190 -470 -160 -470 {
lab=VSS}
N -170 -90 -160 -90 {
lab=VSS}
N -170 -470 -170 -90 {
lab=VSS}
N -180 -580 -180 -550 {
lab=VDD_1V8}
N -180 -580 -160 -580 {
lab=VDD_1V8}
N 410 -370 510 -370 {
lab=xxx}
C {devices/ipin.sym} -190 -470 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -210 -550 0 0 {name=p1 lab=VDD_1V8}
C {sky130_fd_pr/pnp_05v5.sym} 390 -140 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=2
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 280 -140 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {devices/vsource.sym} 410 -320 0 0 {name=Vtest3 value=0 savecurrent=false}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 410 -270 1 0 {name=x2 }
C {CNR_GR05_SKY130NM/OTA.sym} -10 -510 0 0 {name=x1}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 370 -420 0 0 {name=x4 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 300 -420 0 1 {name=x6 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 450 -270 1 0 {name=x8 }
C {devices/ipin.sym} -180 -490 0 0 {name=p3 lab=Vtail}
C {devices/opin.sym} 510 -370 0 0 {name=p4 lab=Vptat}
