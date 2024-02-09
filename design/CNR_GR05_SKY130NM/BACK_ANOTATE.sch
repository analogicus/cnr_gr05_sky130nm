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
Simulation -> Anotate Ppperating Point into schematic} -170 -290 0 0 0.4 0.4 {}
C {devices/code.sym} -20 -50 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include corner.spi
"}
