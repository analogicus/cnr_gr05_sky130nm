v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1550 -1270 1550 -1200 {
lab=VDD_1V8}
N 1030 -1270 1550 -1270 {
lab=VDD_1V8}
N 1330 -1270 1330 -1200 {
lab=VDD_1V8}
N 1370 -1170 1510 -1170 {
lab=test2}
N 1310 -1170 1330 -1170 {
lab=VDD_1V8}
N 1310 -1220 1310 -1170 {
lab=VDD_1V8}
N 1310 -1220 1330 -1220 {
lab=VDD_1V8}
N 1550 -1170 1570 -1170 {
lab=VDD_1V8}
N 1570 -1220 1570 -1170 {
lab=VDD_1V8}
N 1550 -1220 1570 -1220 {
lab=VDD_1V8}
N 1550 -1140 1550 -1040 {
lab=test2}
N 1480 -1170 1480 -1120 {
lab=test2}
N 1480 -1120 1550 -1120 {
lab=test2}
N 890 -690 1700 -690 {
lab=VSS}
N 1550 -1010 1570 -1010 {
lab=VSS}
N 1570 -1010 1570 -960 {
lab=VSS}
N 1310 -1010 1330 -1010 {
lab=VSS}
N 1310 -1010 1310 -960 {
lab=VSS}
N 1330 -1140 1330 -1040 {
lab=test1}
N 1370 -1010 1510 -1010 {
lab=test1}
N 1330 -1070 1410 -1070 {
lab=test1}
N 1410 -1070 1410 -1010 {
lab=test1}
N 1530 -770 1530 -690 {
lab=VSS}
N 1460 -1170 1460 -1120 {
lab=test2}
N 1460 -1060 1460 -1010 {
lab=test1}
N 1460 -1090 1480 -1090 {
lab=test1}
N 1480 -1090 1480 -1010 {
lab=test1}
N 1420 -1170 1420 -1090 {
lab=test2}
N 1530 -890 1530 -770 {
lab=VSS}
N 1550 -980 1550 -950 {
lab=#net1}
N 1550 -890 1550 -870 {
lab=#net2}
N 1550 -790 1550 -770 {
lab=#net3}
N 1510 -1000 1640 -1000 {
lab=test1}
N 1510 -1010 1510 -1000 {
lab=test1}
N 1330 -980 1330 -920 {
lab=#net4}
N 1330 -860 1330 -690 {
lab=VSS}
N 1330 -940 1370 -940 {
lab=#net4}
N 1370 -940 1370 -890 {
lab=#net4}
N 1310 -960 1310 -690 {
lab=VSS}
N 1310 -890 1330 -890 {
lab=VSS}
N 1570 -960 1570 -690 {
lab=VSS}
C {devices/ipin.sym} 1030 -1270 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 890 -690 0 0 {name=p2 lab=VSS}
C {devices/vsource.sym} 1550 -920 0 0 {name=V1 value=0 savecurrent=false}
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 1550 -770 1 0 {name=x3 }
C {devices/lab_wire.sym} 1330 -1090 0 0 {name=p4 sig_type=std_logic lab=test1}
C {devices/lab_wire.sym} 1440 -1170 0 0 {name=p5 sig_type=std_logic lab=test2}
C {devices/lab_wire.sym} 1280 -690 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} 1420 -1090 0 0 {name=x17 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C2F0.sym} 1370 -1010 0 1 {name=x6 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C2F0.sym} 1510 -1010 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1510 -1170 0 0 {name=x8 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1370 -1170 0 1 {name=x2 }
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 1550 -870 1 0 {name=x5 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C2F0.sym} 1370 -890 0 1 {name=x7 }
C {devices/opin.sym} 1640 -1000 0 0 {name=p3 lab=Vref}
