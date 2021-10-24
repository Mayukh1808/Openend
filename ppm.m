pkg load control
pkg load signal
clc;
clear;
T=1000;
t=linspace(0,1,T);
fm=3;
Am=1;
mt=Am*sin(2*pi*fm*t);
subplot(4,1,1);
plot(mt);

pt=zeros(1,T)
for i=1:40:T
  pt(1,i:i+19)=1;
  pt(1,i+20:i+39)=0;
end
subplot(4,1,2)
plot(pt)
at=mt.*pt;
subplot(4,1,3)
plot(at);
%%d=diff(at);
%%y=abs(at);
[b,a]=butter(5,0.02);
f=filter(b,a,at);
subplot(4,1,4);
plot(f);