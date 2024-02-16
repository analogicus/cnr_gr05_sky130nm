v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Code block neads to be added to toplevel schematic
Then: 
Simulation -> Use 'simulation' dir under current schematic dir
Save
Netlist button (top right)
Simulate button (top right)
Simulation -> Anotate Ppperating Point into schematic} 420 -730 0 0 0.4 0.4 {}
N -120 -570 -60 -570 {
lab=VDD_1V8}
N -120 -550 -60 -550 {
lab=VSS}
N 240 -570 280 -570 {
lab=VSS}
N 280 -570 280 -490 {
lab=VSS}
N -100 -490 280 -490 {
lab=VSS}
N -100 -570 -100 -490 {}
C {cborder/border_s.sym} 520 0 0 0 {
user="aam"
company="wulff"}
C {devices/ipin.sym} -120 -570 0 0 {name=p1 lab=VDD_1V8}
C {devices/ipin.sym} -120 -550 0 0 {name=p2 lab=VSS}
C {CNR_GR05_SKY130NM/IREF.sym} 90 -560 0 0 {name=x1}
