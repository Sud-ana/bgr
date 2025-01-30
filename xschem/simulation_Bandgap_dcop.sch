v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 930 -680 1730 -280 {flags=graph
y1=0.78
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-20
x2=140
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x1.net2
x1.net1
\\"VREF;net2\\"
\\"VDD;net1\\""
color="4 7 8 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 930 -260 1730 140 {flags=graph
y1=0.31
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-20
x2=140
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"VREF;net2\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1750 -680 2550 -280 {flags=graph
y1=0.00024
y2=0.00075
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-20
x2=140
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 4 8"
node="i(v.x1.vptatctat)
i(v.x1.vbe)
i(v.x1.vout)"}
B 2 930 150 1730 550 {flags=graph
y1=0.31
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-20
x2=140
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"VREFOUT;x1.vrefout\\""
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N 290 -570 290 -550 {
lab=#net1}
N 290 -570 430 -570 {
lab=#net1}
N 340 -550 430 -550 {
lab=#net1}
N 340 -570 340 -550 {
lab=#net1}
N 290 -490 290 -420 {
lab=GND}
N 360 -510 360 -420 {
lab=GND}
N 360 -510 430 -510 {
lab=GND}
N 410 -490 430 -490 {
lab=GND}
N 410 -490 410 -420 {
lab=GND}
N 730 -520 800 -520 {
lab=#net2}
N 800 -520 800 -510 {
lab=#net2}
N 800 -450 800 -430 {
lab=GND}
C {devices/simulator_commands.sym} 60 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
.options savecurrents

.control
save all
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8[vgs]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[gm]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[gds]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[gmbs]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[vth]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8[vgs]
*op
dc temp -20 140 10
print @m.x1.xm1.msky130_fd_pr__nfet_01v8[vth]
write simulate_Bandgap_dcop.raw
*quit 0
.endc
"}
C {Bandgap.sym} 580 -520 0 0 {name=x1}
C {devices/gnd.sym} 410 -420 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 360 -420 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 800 -430 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 290 -420 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 290 -520 0 0 {name=V_DD_Supply value=3 savecurrent=false}
C {devices/capa.sym} 800 -480 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/corner.sym} -120 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 335 -235 0 0 {name=h3 
descr="Ctrl-click to load ngspice data" 
tclcommand="

xschem raw_read $netlist_dir/simulation_Bandgap_dcop.raw dc
"
}
