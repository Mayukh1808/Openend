%%Mayukh Bhattacharya
%%1904428
clc;
clear all;
close all;
t=[0:0.001:1];
f1=5;
m=cos(2*pi*f1*t);
subplot(4,2,[1,2]);
plot(t,m);
title('message&1904428');
f2=80;
c=cos(2*pi*f2*t);
subplot(4,2,[3,4]);
plot(t,c);
title('carrier&1904428');
s=m.*c;
subplot(4,2,[5,6]);
plot(t,s);
title('DSB-SC&1904428');
s1=s.*c;
[b,a]=butter(5,0.5);
s2=filter(b,a,s1);
subplot(4,2,[7,8]);
plot(t,s2);
title('demodulation&1904428');