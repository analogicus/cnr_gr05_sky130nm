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
lab=#net1}
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
lab=#net1}
N 1480 -1170 1480 -1120 {
lab=#net1}
N 1480 -1120 1550 -1120 {
lab=#net1}
N 890 -690 1700 -690 {
lab=VSS}
N 1700 -840 1700 -690 {
lab=VSS}
N 1700 -1210 1750 -1210 {
lab=I_REF}
N 1550 -1010 1570 -1010 {
lab=#net2}
N 1570 -1010 1570 -960 {
lab=#net2}
N 1310 -1010 1330 -1010 {
lab=VSS}
N 1310 -1010 1310 -960 {
lab=VSS}
N 1310 -960 1330 -960 {
lab=VSS}
N 1720 -1010 1720 -950 {
lab=VSS}
N 1700 -950 1720 -950 {
lab=VSS}
N 1330 -1140 1330 -1040 {
lab=#net3}
N 1370 -1010 1510 -1010 {
lab=#net3}
N 1330 -980 1330 -690 {
lab=VSS}
N 1330 -1070 1410 -1070 {
lab=#net3}
N 1410 -1070 1410 -1010 {
lab=#net3}
N 1550 -960 1570 -960 {
lab=#net2}
N 1510 -1010 1510 -1000 {
lab=#net3}
N 1700 -980 1700 -840 {
lab=VSS}
N 1530 -770 1530 -690 {
lab=VSS}
N 1460 -1170 1460 -1120 {
lab=#net1}
N 1460 -1060 1460 -1010 {
lab=#net3}
N 1460 -1090 1480 -1090 {
lab=#net3}
N 1480 -1090 1480 -1010 {
lab=#net3}
N 1420 -1170 1420 -1090 {
lab=#net1}
N 1530 -890 1530 -770 {
lab=VSS}
N 1550 -980 1550 -950 {
lab=#net2}
N 1550 -890 1550 -870 {
lab=#net4}
N 1550 -790 1550 -770 {
lab=#net5}
N 1510 -1000 1640 -1000 {
lab=#net3}
N 1640 -1000 1660 -1000 {
lab=#net3}
N 1660 -1010 1660 -1000 {
lab=#net3}
N 1700 -1010 1720 -1010 {
lab=VSS}
N 1700 -1050 1700 -1040 {
lab=#net6}
N 1700 -1130 1700 -1110 {
lab=#net7}
N 1680 -1170 1760 -1170 {
lab=VSS}
N 1760 -1170 1760 -690 {
lab=VSS}
N 1700 -690 1760 -690 {
lab=VSS}
C {devices/ipin.sym} 1030 -1270 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 890 -690 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 1750 -1210 0 0 {name=p3 lab=I_REF}
C {devices/vsource.sym} 1550 -920 0 0 {name=V1 value=0 savecurrent=false}
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 1550 -770 1 0 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 1510 -1170 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} 1370 -1170 0 1 {name=x9 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C8F0.sym} 1370 -1010 0 1 {name=x6 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C2F0.sym} 1510 -1010 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C2F0.sym} 1420 -1090 0 0 {name=x5 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_8C2F0.sym} 1660 -1010 0 0 {name=x4 }
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 1550 -870 1 0 {name=x7 }
C {SUN_TR_SKY130NM/SUNTR_RPPO8.sym} 1700 -1210 1 0 {name=x8 }
C {devices/vsource.sym} 1700 -1080 0 0 {name=V2 value=0 savecurrent=false}
