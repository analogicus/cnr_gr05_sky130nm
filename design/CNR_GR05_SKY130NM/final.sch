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
lab=ptat_Vout}
N -190 -60 200 -60 {
lab=VDD_1V8}
N -190 -60 -190 -40 {
lab=VDD_1V8}
N 200 -0 200 20 {
lab=VSS}
N -170 20 200 20 {
lab=VSS}
N 180 -20 200 -20 {
lab=pulse}
N 180 -20 180 110 {
lab=pulse}
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
lab=#net2}
N -180 130 -180 300 {
lab=#net2}
N -180 390 -160 390 {
lab=#net3}
N -160 150 -160 390 {
lab=#net3}
N -160 150 -120 150 {
lab=#net3}
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
lab=Integrator_Vout}
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
lab=#net4}
N 530 -230 530 -40 {
lab=#net4}
N 200 20 540 20 {
lab=VSS}
N 540 -0 540 20 {
lab=VSS}
N -500 410 -480 410 {
lab=comp_vout}
N -500 410 -500 500 {
lab=comp_vout}
N -500 500 950 500 {
lab=comp_vout}
N 950 -80 950 500 {
lab=comp_vout}
N 840 -80 950 -80 {
lab=comp_vout}
N -530 -40 -510 -40 {
lab=VDD_1V8}
N -530 -40 -530 -20 {
lab=VDD_1V8}
N -240 -370 -240 -40 {
lab=VDD_1V8}
N -240 -370 410 -370 {
lab=VDD_1V8}
N 410 -370 410 -360 {
lab=VDD_1V8}
N -560 -180 410 -180 {
lab=VSS}
N 410 -280 410 -260 {
lab=#net4}
N 410 -270 530 -270 {
lab=#net4}
N 530 -270 530 -230 {
lab=#net4}
N 390 -320 390 -180 {
lab=VSS}
N -770 -180 -560 -180 {
lab=VSS}
N -770 -180 -770 100 {
lab=VSS}
N -770 100 -560 100 {
lab=VSS}
N -720 -710 -700 -710 {
lab=D7}
N -720 -670 -720 -630 {
lab=VSS}
N -720 -630 -700 -630 {
lab=VSS}
N -610 -710 -590 -710 {
lab=D6}
N -610 -670 -610 -630 {
lab=VSS}
N -610 -630 -590 -630 {
lab=VSS}
N -500 -710 -480 -710 {
lab=D5}
N -500 -670 -500 -630 {
lab=VSS}
N -500 -630 -480 -630 {
lab=VSS}
N -390 -710 -370 -710 {
lab=D4}
N -390 -670 -390 -630 {
lab=VSS}
N -390 -630 -370 -630 {
lab=VSS}
N -280 -710 -260 -710 {
lab=D3}
N -280 -670 -280 -630 {
lab=VSS}
N -280 -630 -260 -630 {
lab=VSS}
N -180 -710 -160 -710 {
lab=D2}
N -180 -670 -180 -630 {
lab=VSS}
N -180 -630 -160 -630 {
lab=VSS}
N -80 -710 -60 -710 {
lab=D1}
N -80 -670 -80 -630 {
lab=VSS}
N -80 -630 -60 -630 {
lab=VSS}
N 20 -710 40 -710 {
lab=D0}
N 20 -670 20 -630 {
lab=VSS}
N 20 -630 40 -630 {
lab=VSS}
N -820 -710 -800 -710 {
lab=D8}
N -820 -670 -820 -630 {
lab=VSS}
N -820 -630 -800 -630 {
lab=VSS}
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
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 410 -360 1 0 {name=x8 }
C {SUN_TR_SKY130NM/SUNTR_RPPO4.sym} 410 -260 1 0 {name=x9 }
C {devices/lab_pin.sym} 500 -60 3 0 {name=p4 sig_type=std_logic lab=Integrator_Vout}
C {devices/lab_pin.sym} 880 -80 3 0 {name=p5 sig_type=std_logic lab=comp_vout}
C {devices/ipin.sym} -720 -710 0 0 {name=p18 lab=D7}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -700 -710 1 0 {name=x10 }
C {devices/lab_pin.sym} -720 -630 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -610 -710 0 0 {name=p23 lab=D6}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -590 -710 1 0 {name=x17 }
C {devices/lab_pin.sym} -610 -630 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -500 -710 0 0 {name=p26 lab=D5}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -480 -710 1 0 {name=x18 }
C {devices/lab_pin.sym} -500 -630 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -390 -710 0 0 {name=p28 lab=D4}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -370 -710 1 0 {name=x19 }
C {devices/lab_pin.sym} -390 -630 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -280 -710 0 0 {name=p30 lab=D3}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -260 -710 1 0 {name=x20 }
C {devices/lab_pin.sym} -280 -630 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -180 -710 0 0 {name=p32 lab=D2}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -160 -710 1 0 {name=x21 }
C {devices/lab_pin.sym} -180 -630 0 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -80 -710 0 0 {name=p34 lab=D1}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -60 -710 1 0 {name=x22 }
C {devices/lab_pin.sym} -80 -630 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 20 -710 0 0 {name=p36 lab=D0}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} 40 -710 1 0 {name=x23 }
C {devices/lab_pin.sym} 20 -630 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -820 -710 0 0 {name=p38 lab=D8}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -800 -710 1 0 {name=x24 }
C {devices/lab_pin.sym} -820 -630 0 0 {name=p39 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 280 -680 0 0 {name=p20 lab=VCLK}
C {devices/opin.sym} 180 60 0 0 {name=p7 lab=pulse}
C {devices/lab_pin.sym} 160 -40 3 0 {name=p6 sig_type=std_logic lab=ptat_Vout}
