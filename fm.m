clc;
clear;
pkg load signal
t = 0:0.001:1;
Am=10
Ac=10
fm = 2;
fc = 50;
message = Am * cos(2 * pi * fm * t);
subplot(4, 1, 1);
plot(t, message);
title("1904428/Message signal");
carrier = Ac * cos(2 * pi * fc * t);
subplot(4, 1, 2);
plot(t, carrier);
title("1904428/Carrier signal");
mu = 28;
modulated = Ac * cos( (2 * pi * fc * t) + (mu * sin(2 * pi * fm * t)) );
subplot(4, 1, 3);
plot(t, modulated); 
title("1904428/FM Signal");
d=diff(modulated);
y=abs(d);
[b,a]=butter(5,0.1);
f=filter(b,a,y);
subplot(4,1,4);
plot(f);
title("1904428 Demodulated signal")