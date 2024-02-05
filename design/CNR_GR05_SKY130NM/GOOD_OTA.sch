v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 80 110 80 {
lab=#net1}
N -260 240 0 240 {
lab=#net2}
N 0 210 0 230 {
lab=#net3}
N -260 210 -260 230 {
lab=#net4}
N -120 50 -120 70 {
lab=#net5}
N 110 50 110 70 {
lab=#net6}
N -430 240 -260 240 {
lab=#net2}
N -260 70 -260 130 {
lab=#net7}
N -120 -70 -120 20 {
lab=#net8}
N 110 -70 110 20 {
lab=VN}
N -120 -190 -120 -130 {
lab=VDD}
N -120 -190 110 -190 {
lab=VDD}
N 110 -190 110 -130 {
lab=VDD}
N -400 -190 -120 -190 {
lab=VDD}
N -260 -190 -260 10 {
lab=VDD}
N -80 -100 70 -100 {
lab=#net8}
N -120 -50 -40 -50 {
lab=#net8}
N -40 -100 -40 -50 {
lab=#net8}
N 110 -20 190 -20 {
lab=VN}
N 190 -20 190 50 {
lab=VN}
N 150 50 190 50 {
lab=VN}
N -220 210 -40 210 {
lab=#net7}
N -260 160 -190 160 {
lab=#net7}
N -190 160 -190 210 {
lab=#net7}
N 110 -120 110 -100 {
lab=#net9}
N -120 -120 -120 -100 {
lab=#net10}
N -260 130 -260 180 {
lab=#net7}
N 0 80 0 120 {
lab=#net1}
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C1F2.sym} 150 50 0 1 {name=x1 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_2C1F2.sym} -160 50 0 0 {name=x2 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -40 210 0 0 {name=x3 }
C {CNR_ATR_SKY130NM/CNRATR_NCH_4C1F2.sym} -220 210 0 1 {name=x4 }
C {devices/isource.sym} -260 40 0 0 {name=I0 value=10u}
C {devices/ipin.sym} -440 240 0 0 {name=p1 lab=VSS}
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} 70 -100 0 0 {name=x5 }
C {CNR_ATR_SKY130NM/CNRATR_PCH_2C1F2.sym} -80 -100 0 1 {name=x6 }
C {devices/ipin.sym} -400 -190 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} -160 50 0 0 {name=p3 lab=VP}
C {devices/ipin.sym} 190 50 0 1 {name=p4 lab=VN}
C {devices/ipin.sym} 190 -20 0 1 {name=p5 lab=VO}
C {devices/vsource.sym} 0 150 0 0 {name=Vtest value=o savecurrent=false}
