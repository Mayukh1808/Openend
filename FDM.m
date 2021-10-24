%%Frequency Division Multiplexing of 3 signals
clc;
clear;
pkg load signal;
Frame=25e3;
fs=(25e3)/2;
T=0.02;
t=0:1/Frame:T;
%%signal 1
fc=1500;
cs=cos(2*pi*fc*t);
ms=sin(2*pi*100*t);
ts= cs.*ms;
subplot(3,2,1)
plot(t,ts);
title('time domain signal 1');
xlabel('Time duration');
ylabel('Amplitude');
xfft= abs(fft(ts));
subplot(3,2,2)
plot(t,xfft);
title('frequency domain signal 1');
xlabel('Time duration');
ylabel('Amplitude');
%%signal 2
fc1=2500;
cs1=cos(2*pi*fc1*t);
ms1=sin(2*pi*100*t);
ts1= cs1.*ms1;
subplot(3,2,3)
plot(t,ts1);
title('time domain signal 2');
xlabel('Time duration');
ylabel('Amplitude');
xfft1= abs(fft(ts1));
subplot(3,2,4)
plot(t,xfft1);
title('frequency domain signal 2');
xlabel('Time duration');
ylabel('Amplitude');
%%signal 3
fc2=3500;
cs2=cos(2*pi*fc2*t);
ms2=sin(2*pi*100*t);
ts2= cs2.*ms2;
subplot(3,2,5)
plot(t,ts2);
title('time domain signal 3');
xlabel('Time duration');
ylabel('Amplitude');
xfft2= abs(fft(ts2));
subplot(3,2,6)
plot(t,xfft2);
title('frequency domain signal 3');
xlabel('Time duration');
ylabel('Amplitude');
%%Original Message Signal
figure;
subplot(3,1,1)
plot(t,ms);
title('message signal ms');
xlabel('time duration');
ylabel('Amplitude');
subplot(3,1,2)
plot(t,ms1);
title('message signal ms1');
xlabel('time duration');
ylabel('Amplitude');
subplot(3,1,3)
plot(t,ms2);
title('message signal ms2');
xlabel('time duration');
ylabel('Amplitude');
%%Multiplexed signal
figure;
tfdm= ts+ts1+ts2;
subplot(2,1,1)
plot(t,tfdm);
title('Multiplexed signal');
xlabel('Time duration');
ylabel('Amplitude');
tfdm_fft =abs(fft(tfdm));
subplot(2,1,2)
plot(tfdm_fft);
title('frequency domain multiplexed signal');
xlabel('Time duration');
ylabel('Amplitude');
%%passing the multiplexed single through Band pass filter
figure;
[a,b]= butter(2,[1400/fs,1600/fs],'bandpass');
y1= filter(a,b,tfdm);
subplot(3,1,1)
plot(t,y1);
title("demultiplexed signal 1");
xlabel("Time duration");
ylabel("Amplitude");
[a1,b1]= butter(2,[2400/fs,2600/fs],'bandpass');
y2= filter(a1,b1,tfdm);
subplot(3,1,2)
plot(t,y2);
title("demultiplexed signal 2");
xlabel("Time duration");
ylabel("Amplitude");
[a2,b2]= butter(2,[3400/fs,3600/fs],'bandpass');
y3= filter(a2,b2,tfdm);
subplot(3,1,3)
plot(t,y3);
title("demultiplexed signal 2");
xlabel("Time duration");
ylabel("Amplitude");