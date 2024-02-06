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
N 170 -540 230 -540 {
lab=#net1}
N 590 -110 590 -90 {
lab=VSS}
N 440 -110 440 -90 {
lab=VSS}
N 480 -140 480 -90 {
lab=VSS}
N 550 -140 550 -90 {
lab=VSS}
N 440 -260 440 -170 {
lab=VN}
N 590 -260 590 -230 {
lab=#net2}
N 440 -310 440 -260 {
lab=VN}
N 480 -420 550 -420 {
lab=#net1}
N 590 -530 590 -450 {
lab=VDD_1V8}
N 440 -530 440 -450 {
lab=VDD_1V8}
N 440 -390 440 -310 {
lab=VN}
N 590 -390 590 -310 {
lab=VP}
N -130 -580 -130 -540 {
lab=VDD_1V8}
N -130 -580 590 -580 {
lab=VDD_1V8}
N 590 -580 590 -530 {
lab=VDD_1V8}
N 440 -580 440 -530 {
lab=VDD_1V8}
N -240 -520 -130 -520 {
lab=VP}
N -240 -500 -130 -500 {
lab=VN}
N -130 -90 590 -90 {
lab=VSS}
N -130 -480 -130 -90 {
lab=VSS}
N 510 -540 510 -420 {
lab=#net1}
N -190 -520 -190 -380 {
lab=VP}
N -190 -380 590 -380 {
lab=VP}
N -210 -500 -210 -350 {
lab=VN}
N -210 -350 440 -350 {
lab=VN}
N 230 -540 510 -540 {
lab=#net1}
C {cborder/border_s.sym} 520 0 0 0 {
user="aam"
company="wulff"}
C {CNR_GR05_SKY130NM/temp2cur.sym} 20 -510 0 0 {name=x1}
C {devices/ipin.sym} -240 -520 0 0 {name=p4 lab=VP}
C {devices/ipin.sym} -240 -500 0 0 {name=p3 lab=VN}
C {devices/ipin.sym} -130 -480 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -130 -540 0 0 {name=p1 lab=VDD_1V8}
C {sky130_fd_pr/pnp_05v5.sym} 570 -140 0 0 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {sky130_fd_pr/pnp_05v5.sym} 460 -140 0 1 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} 480 -420 0 1 {name=x6 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_4C1F2.sym} 550 -420 0 0 {name=x8 }
C {sky130_fd_pr/res_generic_po.sym} 590 -200 0 0 {name=R1
W=1
L=100
model=res_generic_po
mult=1}
C {devices/vsource.sym} 590 -290 0 0 {name=Vtest3 value=0 savecurrent=false}