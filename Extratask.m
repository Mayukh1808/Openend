%%Mayukh Bhattacharya
%%1904428
clc;
clear all;
close all;
Am=7;
Ac=25
t=[0:0.001:1];
fm=10;
m=Am*cos(2*pi*fm*t);
subplot(4,2,[1,2]);
plot(t,m);
title('message&1904428');
fc=100;
c=Ac*cos(2*pi*fc*t);
subplot(4,2,[3,4]);
plot(t,c);
title('carrier&1904428');
mu=Am/Ac;%%mu=28%=0.28
amplitudeModulatedSignal = Ac .* (1 + mu * (cos(2 * pi * fm * t))) .* cos(2 * pi * fc * t);
subplot(6,2,[7,8]);
plot(t, amplitudeModulatedSignal);
title("Modulated Signal");