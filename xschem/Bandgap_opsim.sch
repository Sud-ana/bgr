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
N 500 -410 640 -410 {
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
C {sky130_fd_pr/nfet_01v8.sym} 690 -410 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} 480 -410 0 1 {name=M2
L=0.15
W=1
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
C {devices/isource.sym} 460 -740 0 0 {name=I0 value=1m}
C {devices/isource.sym} 710 -750 0 0 {name=I1 value=1m}
C {devices/iopin.sym} 180 -850 0 1 {name=p1 lab=PSUP}
C {devices/iopin.sym} 170 -340 0 1 {name=p2 lab=NSUP}
C {devices/iopin.sym} 170 -360 0 1 {name=p3 lab=NBULK}
C {devices/opin.sym} 1010 -640 0 0 {name=p4 lab=VREF}
C {devices/lab_pin.sym} 460 -640 0 0 {name=p5 sig_type=std_logic lab=VREF}
C {sky130_fd_pr/corner.sym} -150 -170 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 1350 -850 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
.options savecurrents

.control
save all
save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.xm1.msky130_fd_pr__nfet_01v8[gmbs]
save @m.xm1.msky130_fd_pr__nfet_01v8[vth]
save @m.xm2.msky130_fd_pr__nfet_01v8[gm]
save @m.xm2.msky130_fd_pr__nfet_01v8[gds]
save @m.xm2.msky130_fd_pr__nfet_01v8[gmbs]
save @m.xm2.msky130_fd_pr__nfet_01v8[vth]
op
print @m.xm1.msky130_fd_pr__nfet_01v8[vth]
write test_bg.raw
*quit 0
.endc
"}
C {devices/iopin.sym} 180 -830 0 1 {name=p6 lab=PBULK}
