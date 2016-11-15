nneg=-10:-1;
npos=1:10;
Fnneg=(1./(j*nneg*pi)).*(-3*exp(-j*nneg*6*pi/7) ...
+2*exp(j*nneg*2*pi/7)+exp(-j*nneg*12*pi/7));
Fnpos=(1./(j*npos*pi)).*(-3*exp(-j*npos*6*pi/7) ...
+2*exp(j*npos*2*pi/7)+exp(-j*npos*12*pi/7));
F0=10/7;
n=[nneg, 0, npos];
Fn=[Fnneg, F0, Fnpos];
stem(n*(1/7),abs(Fn))