v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 350 210 350 {
lab=avss}
N 400 350 410 350 {
lab=avss}
N 590 350 600 350 {
lab=avss}
N 200 350 210 350 {
lab=avss}
N 400 350 410 350 {
lab=avss}
N 590 350 600 350 {
lab=avss}
N 600 350 600 380 {
lab=avss}
N 590 380 600 380 {
lab=avss}
N 400 380 410 380 {
lab=avss}
N 410 350 410 380 {
lab=avss}
N 200 380 210 380 {
lab=avss}
N 600 350 600 380 {
lab=avss}
N 590 380 600 380 {
lab=avss}
N 400 380 410 380 {
lab=avss}
N 410 350 410 380 {
lab=avss}
N 200 380 210 380 {
lab=avss}
N 210 350 210 380 {
lab=avss}
N 530 350 550 350 {
lab=sw}
N 340 350 360 350 {
lab=swtt}
N 140 350 160 350 {
lab=swss}
C {devices/lab_pin.sym} 590 380 3 0 {name=l7 sig_type=std_logic lab=avss}
C {devices/iopin.sym} 400 260 3 0 {name=p1 lab=in}
C {devices/iopin.sym} 400 450 1 0 {name=p3 lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 570 350 0 0 {name=M4
L=0.15
W=0.7
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
C {devices/lab_pin.sym} 200 320 1 0 {name=l3 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 400 320 1 0 {name=l1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 590 320 1 0 {name=l2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 400 380 3 0 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 200 380 3 0 {name=l6 sig_type=std_logic lab=avss}
C {devices/iopin.sym} 350 350 2 0 {name=p7 lab=swtt}
C {sky130_fd_pr/nfet_01v8.sym} 380 350 0 0 {name=M1
L=0.15
W=2.1
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
C {sky130_fd_pr/nfet_01v8.sym} 180 350 0 0 {name=M3
L=0.15
W=4.2
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
C {devices/iopin.sym} 540 350 2 0 {name=p2 lab=swff}
C {devices/iopin.sym} 150 350 2 0 {name=p4 lab=swss}
