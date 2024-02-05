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
} 1030 -870 0 0 0.6 0.6 {}
N -240 -500 -130 -500 {
lab=VN}
N -240 -500 -210 -500 {
lab=VN}
N -210 -500 -210 -410 {
lab=VN}
N -210 -410 230 -410 {
lab=VN}
N 230 -540 230 -410 {
lab=VN}
N 170 -540 230 -540 {
lab=VN}
C {cborder/border_s.sym} 520 0 0 0 {
user="aam"
company="wulff"}
C {CNR_GR05_SKY130NM/temp2cur.sym} 20 -510 0 0 {name=x1}
C {devices/ipin.sym} -130 -520 0 0 {name=p4 lab=VP}
C {devices/ipin.sym} -240 -500 0 0 {name=p3 lab=VN}
C {devices/ipin.sym} -130 -480 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -130 -540 0 0 {name=p1 lab=VDD_1V8}
