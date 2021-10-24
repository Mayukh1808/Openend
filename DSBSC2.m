clear all; 
close all;
fs=30000;
tiv=1/fs;
t=0:tiv:0.1;
fc=100;
fm=10;
ac=8;
am=5;

y = am*cos(2*pi*fm*t); %message signal
z = ac*cos(2*pi*fc*t); %carrier signal
w = ((am*ac)/2).*(cos(2*pi*(fc+fm)*t)+cos(2*pi*(fc-fm)*t)); 
subplot(4,1,1);
plot(t,z);
xlabel("time -->");
ylabel("magnitude -->");
title("Carrier Signal");
subplot(4,1,2);
plot(t,y);
xlabel("time -->");
ylabel("magnitude -->");
title("Message Signal");
subplot(4,1,3);
plot(t,w);
xlabel("time -->");
ylabel("magnitude -->");
title("DSBSC Signal");
dmod=w.*z;
[b,a]=butter(5,1);
f_t=filter(b,a,dmod);
subplot(4,1,4);
plot(t,f_t);
xlabel('Time (in seconds)');
ylabel('Amplitude');
title('Amplitude demodulation');