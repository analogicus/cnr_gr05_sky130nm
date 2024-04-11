v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 190 -220 210 {
lab=VSS}
N -220 40 -220 130 {
lab=V1}
N -70 10 -70 30 {
lab=V2}
N -70 110 -70 130 {
lab=#net1}
N -140 70 -90 70 {
lab=VSS}
N -140 70 -140 210 {
lab=VSS}
N -730 270 -70 270 {
lab=VSS}
N -220 -20 -220 40 {
lab=V1}
N -220 -140 -220 -80 {
lab=Vinv}
N -70 -140 -70 -80 {
lab=VGP}
N -180 -50 -110 -50 {
lab=Vinv}
N -220 -90 -170 -90 {
lab=Vinv}
N -170 -90 -170 -50 {
lab=Vinv}
N -180 -170 -120 -170 {
lab=VGP}
N -120 -170 -110 -170 {
lab=VGP}
N -730 -250 -70 -250 {
lab=VDD}
N -220 -250 -220 -200 {
lab=VDD}
N -70 -250 -70 -200 {
lab=VDD}
N -120 -170 -120 -130 {
lab=VGP}
N -120 -130 -70 -130 {
lab=VGP}
N -140 210 -140 270 {
lab=VSS}
N -220 210 -220 270 {
lab=VSS}
N -640 110 -560 110 {
lab=Vinvout}
N -560 90 -560 130 {
lab=Vinvout}
N -520 60 -500 60 {
lab=Vinv}
N -500 60 -500 160 {
lab=Vinv}
N -520 160 -500 160 {
lab=Vinv}
N -560 190 -560 270 {
lab=VSS}
N -140 -50 -140 20 {
lab=Vinv}
N -460 20 -140 20 {
lab=Vinv}
N -460 20 -460 110 {
lab=Vinv}
N -500 110 -460 110 {
lab=Vinv}
N -710 140 -710 270 {
lab=VSS}
N -670 110 -640 110 {
lab=Vinvout}
N -150 -210 -150 -170 {
lab=VGP}
N -710 -210 -150 -210 {
lab=VGP}
N -710 -210 -710 80 {
lab=VGP}
N -560 -250 -560 30 {
lab=VDD}
N -70 -170 -50 -170 {
lab=VDD}
N -50 -250 -50 -170 {
lab=VDD}
N -70 -250 -50 -250 {
lab=VDD}
N -240 -170 -220 -170 {
lab=VDD}
N -240 -250 -240 -170 {
lab=VDD}
N -70 -50 -50 -50 {
lab=#net2}
N -580 60 -560 60 {
lab=VDD}
N -580 -250 -580 60 {
lab=VDD}
N -580 160 -560 160 {
lab=VSS}
N -580 160 -580 270 {
lab=VSS}
N -720 110 -710 110 {
lab=VSS}
N -720 110 -720 270 {
lab=VSS}
N -130 -210 130 -210 {
lab=VGP}
N -70 -20 -70 -10 {
lab=#net2}
N -70 -10 140 -10 {
lab=#net2}
N 140 -60 140 -10 {
lab=#net2}
N 140 -60 160 -60 {
lab=#net2}
N 160 -60 180 -60 {
lab=#net2}
N -70 10 180 10 {
lab=V2}
N 180 0 180 10 {
lab=V2}
N -70 190 -70 210 {
lab=VSS}
N -70 210 -70 270 {
lab=VSS}
N -30 160 -10 160 {
lab=VSS}
N -10 160 20 160 {
lab=VSS}
N -50 -50 -40 -50 {
lab=#net2}
N -310 160 -260 160 {
lab=VSS}
N -150 -210 -130 -210 {
lab=VGP}
N -70 270 20 270 {
lab=VSS}
N 20 160 20 270 {
lab=VSS}
N -310 160 -310 270 {
lab=VSS}
N -240 -50 -220 -50 {
lab=V1}
N -250 -50 -240 -50 {
lab=V1}
N -40 -50 20 -50 {
lab=#net2}
N -310 -50 -250 -50 {
lab=V1}
N -310 -50 -310 10 {
lab=V1}
N -310 10 -220 10 {
lab=V1}
N 20 -50 20 -10 {
lab=#net2}
C {sky130_fd_pr/pnp_05v5.sym} -240 160 0 0 {name=Q2
model=pnp_05v5_W3p40L3p40
m=1
spiceprefix=X
}
C {SUN_TR_SKY130NM/SUNTR_RPPO2.sym} -70 30 1 0 {name=x2 }
C {devices/ipin.sym} -730 270 0 0 {name=p2 lab=VSS}
C {devices/ipin.sym} -730 -250 0 0 {name=p1 lab=VDD}
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C2F0.sym} -520 160 0 1 {name=x6 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C2F0.sym} -520 60 0 1 {name=x8 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C2F0.sym} -670 110 0 1 {name=x9 }
C {devices/opin.sym} 130 -210 0 0 {name=p3 lab=VGP}
C {devices/vsource.sym} 180 -30 0 0 {name=VIREFREF value=0 savecurrent=false}
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} -110 -170 0 0 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_12C1F2.sym} -180 -170 0 1 {name=x3 }
C {devices/lab_pin.sym} -220 -10 0 0 {name=p4 sig_type=std_logic lab=V1}
C {devices/lab_pin.sym} -70 10 0 0 {name=p6 sig_type=std_logic lab=V2}
C {sky130_fd_pr/pnp_05v5.sym} -50 160 0 1 {name=Q1
model=pnp_05v5_W3p40L3p40
m=8
spiceprefix=X
}
C {devices/lab_pin.sym} -460 20 0 0 {name=p5 sig_type=std_logic lab=Vinv}
C {devices/lab_pin.sym} -650 110 1 0 {name=p7 sig_type=std_logic lab=Vinvout}
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C4F0.sym} -110 -50 0 0 {name=x4 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_12C4F0.sym} -180 -50 0 1 {name=x5 }
