v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -450 -510 -390 -510 {
lab=VDD_1V8}
N -450 -490 -390 -490 {
lab=VSS}
N -90 -510 -50 -510 {
lab=#net1}
N -10 -590 -10 -540 {
lab=VDD_1V8}
N -420 -590 -10 -590 {
lab=VDD_1V8}
N -420 -590 -420 -510 {
lab=VDD_1V8}
N -10 -480 -10 -420 {
lab=xxx}
N -10 -360 -10 -330 {
lab=VSS}
N -420 -490 -420 -330 {
lab=VSS}
N -420 -330 -10 -330 {
lab=VSS}
N -10 -510 10 -510 {
lab=VDD_1V8}
N 10 -590 10 -510 {
lab=VDD_1V8}
N -10 -590 10 -590 {
lab=VDD_1V8}
N -70 -560 -70 -510 {
lab=#net1}
N -70 -560 90 -560 {
lab=#net1}
N 90 -560 90 -520 {
lab=#net1}
N 10 -590 130 -590 {
lab=VDD_1V8}
N 130 -590 130 -550 {
lab=VDD_1V8}
N 130 -520 150 -520 {
lab=VDD_1V8}
N 150 -590 150 -520 {
lab=VDD_1V8}
N 130 -590 150 -590 {
lab=VDD_1V8}
N 130 -490 130 -430 {
lab=#net2}
N 130 -370 130 -330 {
lab=VSS}
N -10 -330 130 -330 {
lab=VSS}
N 110 -400 130 -400 {
lab=VSS}
N 110 -400 110 -330 {
lab=VSS}
N 240 -370 240 -330 {
lab=VSS}
N 130 -330 240 -330 {
lab=VSS}
N 240 -400 260 -400 {
lab=VSS}
N 260 -400 260 -330 {
lab=VSS}
N 240 -330 260 -330 {
lab=VSS}
N 170 -400 200 -400 {
lab=#net2}
N 150 -590 420 -590 {
lab=VDD_1V8}
N 260 -330 340 -330 {
lab=VSS}
N 240 -530 420 -530 {
lab=#net3}
N 240 -530 240 -430 {
lab=#net3}
N 220 -570 220 -460 {
lab=xxx}
N 220 -570 420 -570 {
lab=xxx}
N 370 -550 420 -550 {
lab=Vthreshold}
N -10 -460 220 -460 {
lab=xxx}
N 130 -440 180 -440 {
lab=#net2}
N 180 -440 180 -400 {
lab=#net2}
N 340 -510 420 -510 {
lab=VSS}
N 340 -510 340 -330 {
lab=VSS}
N -120 -460 -10 -460 {
lab=xxx}
N -120 -460 -120 -430 {
lab=xxx}
N -120 -370 -120 -330 {
lab=VSS}
N -120 -400 -100 -400 {
lab=VSS}
N -100 -400 -100 -330 {
lab=VSS}
N -190 -400 -160 -400 {
lab=Vreset}
C {cborder/border_s.sym} 520 0 0 0 {
user="aam"
company="wulff"}
C {CNR_GR05_SKY130NM/current_ref.sym} -240 -500 0 0 {name=x3}
C {devices/ipin.sym} -450 -510 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -450 -490 0 0 {name=p2 lab=VSS}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} -50 -510 0 0 {name=x1 }
C {sky130_fd_pr/cap_mim_m3_2.sym} -10 -390 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=2 spiceprefix=X}
C {CNR_GR05_SKY130NM/OTA.sym} 570 -550 0 0 {name=x2}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 90 -520 0 0 {name=x4 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C1F2.sym} 170 -400 0 1 {name=x5 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C1F2.sym} 200 -400 0 0 {name=x6 }
C {devices/ipin.sym} 370 -550 0 0 {name=p3 lab=Vthreshold}
C {devices/opin.sym} 720 -590 0 0 {name=p4 lab=Vcomp}
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C1F2.sym} -160 -400 0 0 {name=x7 }
C {devices/ipin.sym} -190 -400 0 0 {name=p5 lab=Vreset}
C {devices/lab_pin.sym} -10 -440 0 0 {name=p6 sig_type=std_logic lab=Vcap}
