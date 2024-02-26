v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Shift-I          Insert new component
Shift-Z         Zoom in
Ctrl-Z           Zoom out
R                 Rotate
F                 Full view

Manual: https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.pdf
} 1160 -880 0 0 0.6 0.6 {}
N 410 -110 410 -90 {
lab=VSS}
N 260 -110 260 -90 {
lab=VSS}
N 300 -140 300 -90 {
lab=VSS}
N 370 -140 370 -90 {
lab=VSS}
N 260 -260 260 -170 {
lab=VN}
N 260 -310 260 -260 {
lab=VN}
N 300 -420 370 -420 {
lab=#net1}
N 410 -530 410 -450 {
lab=VDD_1V8}
N 260 -530 260 -450 {
lab=VDD_1V8}
N 260 -390 260 -310 {
lab=VN}
N -310 -580 -310 -540 {
lab=VDD_1V8}
N -310 -580 410 -580 {
lab=VDD_1V8}
N 410 -580 410 -530 {
lab=VDD_1V8}
N 260 -580 260 -530 {
lab=VDD_1V8}
N -420 -520 -310 -520 {
lab=VP}
N -420 -500 -310 -500 {
lab=VN}
N -310 -90 410 -90 {
lab=VSS}
N -310 -480 -310 -90 {
lab=VSS}
N -370 -520 -370 -380 {
lab=VP}
N -370 -380 410 -380 {
lab=VP}
N -390 -500 -390 -350 {
lab=VN}
N -390 -350 260 -350 {
lab=VN}
N 410 -390 410 -350 {
lab=VP}
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
lab=#net2}
N 410 -190 410 -170 {
lab=#net3}
N 410 -270 480 -270 {
lab=#net2}
N 410 -190 480 -190 {
lab=#net3}
N 390 -230 460 -230 {
lab=VSS}
N 340 -230 390 -230 {
lab=VSS}
N 340 -230 340 -90 {
lab=VSS}
N -10 -490 330 -490 {
lab=#net1}
N -10 -540 -10 -490 {
lab=#net1}
N 330 -490 330 -420 {
lab=#net1}
N 330 -490 570 -490 {
lab=#net1}
N 570 -490 570 -420 {
lab=#net1}
N 440 -580 610 -580 {
lab=VDD_1V8}
N 610 -580 610 -450 {
lab=VDD_1V8}
N 610 -420 640 -420 {
lab=VDD_1V8}
N 640 -580 640 -420 {
lab=VDD_1V8}
N 610 -580 640 -580 {
lab=VDD_1V8}
N 410 -90 610 -90 {
lab=VSS}
N 610 -390 610 -280 {
lab=Vout}
N 610 -310 740 -310 {
lab=Vout}
N 740 -310 740 -280 {
lab=Vout}
N 740 -220 740 -90 {
lab=VSS}
N 610 -90 740 -90 {
lab=VSS}
N 710 -250 740 -250 {
lab=VSS}
N 710 -250 710 -90 {
lab=VSS}
N 780 -250 810 -250 {
lab=Vreset}
N 610 -220 610 -90 {
lab=VSS}
N 560 -720 560 -630 {
lab=Vout}
N 560 -630 740 -630 {
lab=Vout}
N 740 -630 740 -340 {
lab=Vout}
N 610 -340 740 -340 {
lab=Vout}
N 510 -780 620 -780 {
lab=VDD_1V8}
N 510 -780 510 -580 {
lab=VDD_1V8}
N 630 -780 630 -770 {
lab=VDD_1V8}
N 620 -780 630 -780 {
lab=VDD_1V8}
N 630 -710 630 -680 {
lab=VSS}
N 560 -750 560 -720 {
lab=Vout}
N 560 -750 630 -750 {
lab=Vout}
N 590 -730 630 -730 {
lab=Vthreshold}
N 340 -730 590 -730 {
lab=Vthreshold}
N 630 -680 920 -680 {}
N 920 -680 920 -100 {}
N 920 -100 920 -90 {}
N 740 -90 920 -90 {}
C {cborder/border_s.sym} 520 0 0 0 {
user="aam"
company="wulff"}
C {devices/ipin.sym} -420 -520 0 0 {name=p4 lab=VP}
C {devices/ipin.sym} -420 -500 0 0 {name=p3 lab=VN}
C {devices/ipin.sym} -310 -480 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -310 -540 0 0 {name=p1 lab=VDD_1V8}
C {sky130_fd_pr/pnp_05v5.sym} 390 -140 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 280 -140 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} 300 -420 0 1 {name=x6 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} 370 -420 0 0 {name=x8 }
C {devices/vsource.sym} 410 -320 0 0 {name=Vtest3 value=0 savecurrent=false}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 410 -270 1 0 {name=x2 }
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 480 -270 1 0 {name=x3 }
C {CNR_GR05_SKY130NM/OTA.sym} -160 -510 0 0 {name=x1}
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} 570 -420 0 0 {name=x4 }
C {sky130_fd_pr/cap_mim_m3_2.sym} 610 -250 0 0 {name=C3 model=cap_mim_m3_2 W=10 L=10 MF=2 spiceprefix=X}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} 780 -250 0 1 {name=x7 }
C {sky130_fd_pr/cap_mim_m3_2.sym} 610 -250 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=2 spiceprefix=X}
C {devices/lab_pin.sym} 610 -350 0 1 {name=p5 sig_type=std_logic lab=Vout}
C {devices/ipin.sym} 810 -250 0 1 {name=p6 lab=Vreset}
C {CNR_GR05_SKY130NM/OTA.sym} 780 -740 0 0 {name=x5}
C {devices/ipin.sym} 340 -730 0 0 {name=p7 lab=Vthreshold}
C {devices/lab_pin.sym} 930 -770 0 1 {name=p8 sig_type=std_logic lab=Vcomp}
