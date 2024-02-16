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
N 1160 -1270 1160 -1200 {
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
N 1140 -1170 1160 -1170 {
lab=VDD_1V8}
N 1140 -1220 1140 -1170 {
lab=VDD_1V8}
N 1140 -1220 1160 -1220 {
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
N 1330 -1140 1330 -900 {
lab=#net2}
N 1160 -1140 1160 -900 {
lab=#net3}
N 990 -1120 1480 -1120 {
lab=#net1}
N 990 -1120 990 -900 {
lab=#net1}
N 1330 -1010 1510 -1010 {
lab=#net2}
N 1550 -980 1550 -810 {
lab=#net4}
N 1550 -870 1660 -870 {
lab=#net4}
N 1370 -870 1550 -870 {
lab=#net4}
N 890 -690 1700 -690 {
lab=VSS}
N 1700 -840 1700 -690 {
lab=VSS}
N 1550 -750 1550 -690 {
lab=VSS}
N 1330 -840 1330 -690 {
lab=VSS}
N 1160 -840 1160 -690 {
lab=VSS}
N 990 -840 990 -690 {
lab=VSS}
N 1030 -870 1060 -870 {
lab=#net3}
N 1060 -940 1060 -870 {
lab=#net3}
N 1060 -940 1160 -940 {
lab=#net3}
N 1200 -870 1240 -870 {
lab=#net4}
N 1240 -1170 1240 -870 {
lab=#net4}
N 1200 -1170 1240 -1170 {
lab=#net4}
N 1240 -870 1240 -780 {
lab=#net4}
N 1240 -780 1410 -780 {
lab=#net4}
N 1410 -870 1410 -780 {
lab=#net4}
N 1700 -950 1700 -900 {
lab=#net5}
N 1700 -1070 1700 -1010 {
lab=I_REF}
N 1700 -1070 1750 -1070 {
lab=I_REF}
N 1550 -1010 1570 -1010 {
lab=#net4}
N 1570 -1010 1570 -960 {
lab=#net4}
N 1550 -960 1570 -960 {
lab=#net4}
N 970 -870 990 -870 {
lab=VSS}
N 970 -870 970 -820 {
lab=VSS}
N 970 -820 990 -820 {
lab=VSS}
N 1140 -870 1160 -870 {
lab=VSS}
N 1140 -870 1140 -820 {
lab=VSS}
N 1140 -820 1160 -820 {
lab=VSS}
N 1310 -870 1330 -870 {
lab=VSS}
N 1310 -870 1310 -820 {
lab=VSS}
N 1310 -820 1330 -820 {
lab=VSS}
N 1700 -870 1720 -870 {
lab=VSS}
N 1720 -870 1720 -810 {
lab=VSS}
N 1700 -810 1720 -810 {
lab=VSS}
C {devices/ipin.sym} 1030 -1270 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 890 -690 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 1750 -1070 0 0 {name=p3 lab=I_REF}
C {devices/vsource.sym} 1700 -980 0 0 {name=V1 value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 1200 -1170 0 1 {name=x3 }
C {devices/res.sym} 1550 -780 0 0 {name=R2
value=200k
footprint=1206
device=resistor
m=1}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1510 -1010 0 0 {name=x6 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 1370 -1170 0 1 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 1510 -1170 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1370 -870 0 1 {name=x4 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1030 -870 0 1 {name=x7 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1660 -870 0 0 {name=x8 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C12F0.sym} 1200 -870 0 1 {name=x9 }
