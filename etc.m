t=0:0.1:10;

for T=1:2:10;
  sync = tf ([9],[ 1 9/T]);
  figure 1;
  hold on;
  grid on;
  impulse(sync,t);
  figure 2;
  hold on;
  grid on;
  step(sync,t);
  figure 3;
  hold on;
  grid on;
  ramp(sync,t);
  end;