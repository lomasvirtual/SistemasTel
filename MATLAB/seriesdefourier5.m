clear
nneg=-3:-1;
npos=1:3;
n=nneg;
Fnneg=(1./(j*n*pi)).*(-3*exp(-j*n*6*pi/7)+2*exp(j*n*2*pi/7)+exp(-j*n*12*pi/7));
n=npos;
Fnpos=(1./(j*n*pi)).*(-3*exp(-j*n*6*pi/7)+2*exp(j*n*2*pi/7)+exp(-j*n*12*pi/7));
F0=10/7;
n=[nneg,0,npos];
Fn=[Fnneg,F0,Fnpos];
k=0;
for t=-1:.01:6
k=k+1;
fapprox(k)=sum(Fn.*(exp(j*n*2*pi*t/7)));
end
t=-1:.01:6;
fexact=4*(t<=3)-2*(t>=3);
plot(t,fapprox,t,fexact)