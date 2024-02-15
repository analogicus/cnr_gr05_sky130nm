v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1120 -990 1140 -990 {
lab=#net1}
N 1140 -990 1140 -960 {
lab=#net1}
N 1120 -1140 1120 -1020 {
lab=#net4}
N 840 -1240 1120 -1240 {
lab=VDD_1V8}
N 1120 -1240 1120 -1200 {
lab=VDD_1V8}
N 1020 -1100 1120 -1100 {
lab=#net4}
N 1020 -1060 1020 -1040 {
lab=#net5}
N 920 -1060 1020 -1060 {
lab=#net5}
N 900 -1170 920 -1170 {
lab=VDD_1V8}
N 1120 -1170 1140 -1170 {
lab=VDD_1V8}
N 1140 -1240 1140 -1170 {
lab=VDD_1V8}
N 1120 -1240 1140 -1240 {
lab=VDD_1V8}
N 960 -1170 960 -1160 {
lab=#net4}
N 960 -1160 1260 -1160 {
lab=#net4}
N 1260 -1170 1260 -1160 {
lab=#net4}
N 1080 -1170 1080 -1160 {
lab=#net4}
N 1020 -1160 1020 -1100 {
lab=#net4}
N 1300 -1240 1300 -1200 {
lab=VDD_1V8}
N 1140 -1240 1300 -1240 {
lab=VDD_1V8}
N 1300 -1170 1320 -1170 {
lab=VDD_1V8}
N 1320 -1240 1320 -1170 {
lab=VDD_1V8}
N 1300 -1240 1320 -1240 {
lab=VDD_1V8}
N 900 -990 920 -990 {
lab=VSS}
N 840 -790 900 -790 {
lab=VSS}
N 1300 -1140 1300 -1120 {
lab=#net6}
N 1300 -1060 1300 -1050 {
lab=I_REF}
N 1300 -1050 1390 -1050 {
lab=I_REF}
N 920 -1140 920 -1130 {
lab=#net5}
N 920 -1070 920 -1020 {
lab=#net5}
N 920 -1130 920 -1070 {
lab=#net5}
N 920 -960 920 -930 {
lab=VSS}
N 920 -870 920 -790 {
lab=VSS}
N 900 -990 900 -940 {
lab=VSS}
N 900 -940 920 -940 {
lab=VSS}
N 920 -930 920 -870 {
lab=VSS}
N 900 -1240 900 -1170 {
lab=VDD_1V8}
N 920 -1240 920 -1200 {
lab=VDD_1V8}
N 1120 -960 1120 -920 {}
N 1120 -860 1120 -790 {}
N 900 -790 1120 -790 {}
N 960 -990 1080 -990 {}
N 1020 -1040 1020 -990 {}
C {devices/ipin.sym} 840 -1240 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} 840 -790 0 0 {name=p2 lab=VSS}
C {devices/opin.sym} 1390 -1050 0 0 {name=p3 lab=I_REF}
C {devices/vsource.sym} 1300 -1090 0 0 {name=V1 value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 1080 -1170 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 1260 -1170 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 960 -1170 0 1 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 1080 -990 0 0 {name=x4 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C8F0.sym} 960 -990 0 1 {name=x5 }
C {devices/res.sym} 1120 -890 0 0 {name=R1
value=200k
footprint=1206
device=resistor
m=1}
