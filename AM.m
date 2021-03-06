clc;
clear all;
close all;
%%Mayukh Bhattacharya
%%1904428
t=[0:0.001:2];
f1=10;
m=cos(2*pi*f1*t);
subplot(6,2,[1,2]);
plot(t,m);
title('mesage&1904428');
f2=100;
c=cos(2*pi*f2*t);
subplot(6,2,[3,4]);
plot(t,c);
title('carrier&1904428');
m1=0.5;
s1=(1+(m1*m)).*c;
subplot(6,2,[5,6]);
plot(t,s1);
title('under modulation&1904428');
m2=1;
s2=(1+(m2*m)).*c;
subplot(6,2,[7,8]);
plot(t,s2);
title('100%modulation&1904428');
m3=1.5;
s3=(1+(m3*m)).*c;
subplot(6,2,[9,10]);
plot(t,s3);
title('over modulation&1904428');
s5=s2.*c;
[b,a]=butter(5,0.1);
s4=filter(b,a,s5);
subplot(6,2,[11,12]);
plot(t,s4);
title('demodulation&1904428' );