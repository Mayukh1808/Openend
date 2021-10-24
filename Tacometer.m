## For tachometer feedback
t=0:1:10
wn=3.33
xi=0.76
sync = tf([wn^2],[1 2*xi*wn wn^2]);
sync = tf([wn^2],[1 2*xi*wn wn^2]);
hold on;
grid on;
step(sync,t)
s= Stepinfo(sys)