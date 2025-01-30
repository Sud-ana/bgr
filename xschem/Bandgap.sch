v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 710 -490 710 -440 {
lab=#net1}
N 460 -520 460 -440 {
lab=#net2}
N 460 -470 520 -470 {
lab=#net2}
N 520 -470 520 -410 {
lab=#net2}
N 640 -470 640 -410 {
lab=#net1}
N 640 -470 710 -470 {
lab=#net1}
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
N 460 -850 460 -770 {
lab=PSUP}
N 460 -850 710 -850 {
lab=PSUP}
N 710 -850 710 -780 {
lab=PSUP}
N 180 -850 460 -850 {
lab=PSUP}
N 1220 -630 1260 -630 {
lab=VREF}
N 500 -740 615 -740 {
lab=#net3}
N 615 -750 615 -740 {
lab=#net3}
N 615 -750 670 -750 {
lab=#net3}
N 615 -740 615 -710 {
lab=#net3}
N 615 -710 710 -710 {
lab=#net3}
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
N 500 -410 520 -410 {
lab=#net2}
N 530 -630 550 -630 {
lab=#net3}
N 530 -740 530 -630 {
lab=#net3}
N 540 -590 560 -590 {
lab=VREF}
N 520 -590 540 -590 {
lab=VREF}
N 520 -610 520 -590 {
lab=VREF}
N 460 -610 520 -610 {
lab=VREF}
N 600 -590 710 -590 {
lab=#net4}
N 640 -410 670 -410 {
lab=#net1}
N 610 -630 620 -630 {
lab=NSUP}
N 620 -630 620 -340 {
lab=NSUP}
N 710 -720 710 -690 {
lab=#net3}
N 710 -630 710 -550 {
lab=#net4}
N 460 -630 460 -580 {
lab=VREF}
N 460 -710 460 -690 {
lab=#net5}
N 960 -850 960 -780 {
lab=PSUP}
N 710 -850 960 -850 {
lab=PSUP}
N 950 -750 1040 -750 {
lab=PBULK}
N 1040 -830 1040 -750 {
lab=PBULK}
N 760 -830 1040 -830 {
lab=PBULK}
N 850 -750 920 -750 {
lab=#net3}
N 850 -750 850 -710 {
lab=#net3}
N 710 -710 850 -710 {
lab=#net3}
N 960 -490 960 -350 {
lab=NSUP}
N 960 -350 960 -340 {
lab=NSUP}
N 710 -340 960 -340 {
lab=NSUP}
N 960 -720 960 -690 {
lab=#net6}
N 960 -630 960 -550 {
lab=VREFOUT}
C {sky130_fd_pr/nfet_01v8.sym} 690 -410 0 0 {name=M1
L=0.15
W=1
nf=1
mult=50
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 480 -410 0 1 {name=M2
L=0.55
W=1
nf=1
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
value=2k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 180 -850 0 1 {name=p1 lab=PSUP}
C {devices/iopin.sym} 170 -340 0 1 {name=p2 lab=NSUP}
C {devices/iopin.sym} 170 -360 0 1 {name=p3 lab=NBULK}
C {devices/opin.sym} 1260 -630 0 0 {name=p4 lab=VREF}
C {devices/lab_pin.sym} 460 -600 0 0 {name=p5 sig_type=std_logic lab=VREF}
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
C {devices/vcvs.sym} 580 -630 3 0 {name=E1 value=10000}
C {devices/ammeter.sym} 710 -660 0 0 {name=VBE savecurrent=true}
C {devices/ammeter.sym} 460 -660 0 0 {name=VPTATCTAT savecurrent=true}
C {sky130_fd_pr/pfet_01v8.sym} 940 -750 0 0 {name=M5
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/res.sym} 960 -520 0 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 960 -600 0 0 {name=p7 sig_type=std_logic lab=VREFOUT}
C {devices/ammeter.sym} 960 -660 0 0 {name=VOUT savecurrent=true}
