%%Time specifications:
   Fs = 8000;                   % samples per second
   dt = 1/Fs;                   % seconds per sample
   StopTime = 0.25;             % seconds
   t = (0:dt:StopTime-dt)';     % seconds
   %%Sine wave:
   Fc = 10;                     % hertz
   x = sin(2*pi*Fc*t);
   % Plot the signal versus time:
   figure;
   subplot(2,1,1);
   stem(t,x);
   xlabel('time (in seconds)');
   title('Signal versus Time');
   zoom xon;
   %%subplot(2,1,2);
   y=conv(x,x);
   subplot(2,1,2);
   stem(y);
   xlabel('time (in seconds)');
   title('Convolution of the signal');