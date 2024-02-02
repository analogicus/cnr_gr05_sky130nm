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
N 80 -300 270 -300 {
lab=#net1}
N 180 -270 190 -270 {
lab=VSS}
N 180 -240 190 -240 {
lab=VSS}
N 190 -270 190 -240 {
lab=VSS}
N 260 -330 270 -330 {
lab=#net1}
N 260 -330 260 -300 {
lab=#net1}
N 80 -330 90 -330 {
lab=#net1}
N 90 -330 90 -300 {
lab=#net1}
N 80 -450 80 -360 {
lab=#net2}
N 120 -480 230 -480 {
lab=#net2}
N 270 -450 270 -360 {
lab=#net3}
N 70 -510 270 -510 {
lab=VDD_1V8}
N 270 -480 280 -480 {
lab=VDD_1V8}
N 280 -510 280 -480 {
lab=VDD_1V8}
N 270 -510 280 -510 {
lab=VDD_1V8}
N 80 -450 120 -450 {
lab=#net2}
N 120 -480 120 -450 {
lab=#net2}
N -200 -510 70 -510 {
lab=VDD_1V8}
N -50 -270 140 -270 {
lab=Is10u}
N -210 -240 180 -240 {
lab=VSS}
N -90 -450 -90 -300 {
lab=Is10u}
N -90 -300 -50 -300 {
lab=Is10u}
N -50 -300 -50 -270 {
lab=Is10u}
N 70 -480 80 -480 {
lab=VDD_1V8}
N 70 -510 70 -480 {
lab=VDD_1V8}
N -100 -270 -90 -270 {
lab=VSS}
N -100 -270 -100 -240 {
lab=VSS}
N 270 -410 340 -410 {
lab=#net3}
N 340 -410 340 -330 {
lab=#net3}
N 310 -330 340 -330 {
lab=#net3}
C {cborder/border_s.sym} 520 0 0 0 {
user="aam"
company="wulff"}
C {devices/ipin.sym} -200 -510 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -210 -240 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 60 -330 0 0 {name=M1
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 -330 0 1 {name=M2
L=0.15
W=0.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 160 -270 0 0 {name=M3
L=0.3
W=4.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 -480 0 1 {name=M4
L=0.15
W=0.85
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 250 -480 0 0 {name=M5
L=0.15
W=0.85
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -70 -270 0 1 {name=M7
L=0.3
W=4.5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -90 -450 0 0 {name=p3 lab=Is10u}
C {devices/ipin.sym} 40 -330 0 0 {name=p4 lab=Vin}
