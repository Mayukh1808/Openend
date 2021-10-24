t = 0:0.1:100;
wn= 0.5;
for xi=0:0.1:1.2;
sysc = tf ([wn^2],[1 2*xi*wn wn^2]);
figure 1;
hold on;
grid on;
ramp (sysc, t);
end;