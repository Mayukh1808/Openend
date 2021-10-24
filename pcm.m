clc; 
clear all;
close all;
pkg load signal
fm = 5;
A = 3;
fs = 20*fm;
t = 0:1/fs:2;
x = A*sin(2*pi*fm*t);
subplot(4,1,1),
plot(t,x);
title ('1904428 Mayukh Analog signal');
subplot(4,1,2),
stem(t,x);
x1 = x+A;
l = length(x1);
q_op = round(x1);
enco = dec2bin(q_op);
k=1;
code = zeros(1,l);
for i=1:l
  for j = 1:3
    code(k) = enco(i,j)-48;
    k = k+1;
  end
end
subplot(4,1,3),stairs(code);
axis([0 243 0 2]);
title('1904428 Mayukh Encoded signal');
deco = bin2dec(enco);
xr = deco-A;
subplot(4,1,4),
plot(t,x,'g',t,xr,'k+-'),
title('1904428 Mayukh Decoded signal')