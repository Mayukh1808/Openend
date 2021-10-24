t = 0 :0.1:10;
for T= 1:1:10;
sysc = tf ([1],[1 1/T]);
figure 1;
hold on; 
grid on;
ramp (sysc);
end;





