v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 710 -720 710 -550 {
lab=#net1}
N 710 -490 710 -440 {
lab=#net2}
N 630 -410 670 -410 {
lab=#net2}
N 460 -520 460 -440 {
lab=#net2}
N 460 -470 520 -470 {
lab=#net2}
N 520 -470 520 -410 {
lab=#net2}
N 640 -470 640 -410 {
lab=#net2}
N 640 -470 710 -470 {
lab=#net2}
N 460 -380 460 -340 {
lab=NSUP}
N 460 -340 710 -340 {
lab=NSUP}
N 710 -380 710 -340 {
lab=NSUP}
N 710 -410 740 -410 {
lab=NBULK}
N 740 -410 740 -360 {
lab=NBULK}
N 360 -360 740 -360 {
lab=NBULK}
N 410 -410 460 -410 {
lab=NBULK}
N 410 -410 410 -360 {
lab=NBULK}
N 170 -340 460 -340 {
lab=NSUP}
N 170 -360 360 -360 {
lab=NBULK}
N 460 -710 460 -580 {
lab=VREF}
N 460 -850 460 -770 {
lab=PSUP}
N 460 -850 710 -850 {
lab=PSUP}
N 710 -850 710 -780 {
lab=PSUP}
N 180 -850 460 -850 {
lab=PSUP}
N 970 -640 1010 -640 {
lab=VREF}
N 500 -410 630 -410 {
lab=#net2}
N 500 -740 615 -740 {
lab=#net1}
N 615 -750 615 -740 {
lab=#net1}
N 615 -750 670 -750 {
lab=#net1}
N 615 -740 615 -710 {
lab=#net1}
N 615 -710 710 -710 {
lab=#net1}
N 180 -830 760 -830 {
lab=PBULK}
N 760 -830 760 -750 {
lab=PBULK}
N 400 -830 400 -740 {
lab=PBULK}
N 400 -740 460 -740 {
lab=PBULK}
N 710 -750 760 -750 {
lab=PBULK}
N 460 -640 970 -640 {
lab=VREF}
C {sky130_fd_pr/nfet_01v8.sym} 690 -410 0 0 {name=M1
L=0.15
W=1
nf=10
mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 480 -410 0 1 {name=M2
L=0.15
W=1
nf=10
mult=10
model=nfet_01v8
spiceprefix=X
}
C {devices/res.sym} 710 -520 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 460 -550 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 180 -850 0 1 {name=p1 lab=PSUP}
C {devices/iopin.sym} 170 -340 0 1 {name=p2 lab=NSUP}
C {devices/iopin.sym} 170 -360 0 1 {name=p3 lab=NBULK}
C {devices/opin.sym} 1010 -640 0 0 {name=p4 lab=VREF}
C {devices/lab_pin.sym} 460 -640 0 0 {name=p5 sig_type=std_logic lab=VREF}
C {devices/iopin.sym} 180 -830 0 1 {name=p6 lab=PBULK}
C {sky130_fd_pr/pfet_01v8.sym} 690 -750 0 0 {name=M3
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 480 -740 0 1 {name=M4
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
