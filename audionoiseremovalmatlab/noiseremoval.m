[filename, pathname] = uigetfile('*', 'Select the Input Audio');
[audio, Fs] = audioread(num2str(filename)); %X -> sampled data, Fs -> Sampling Rate%

Fsf = 44100; %Sampling Frequency %
Fp = 8e3; % Passband frequency Hz %
Fst = 8.4e3; % Stopband frequency Hz %
Ap = 1; % Passband ripple dB %
Ast = 95; % Stopband attenuation dB %

% Low pass filter
noiseClearingFilter = designfilt('lowpassfir', 'PassbandFrequency', Fp, 'StopbandFrequency', Fst, 'PassbandRipple', Ap, 'StopbandAttenuation', Ast, 'SampleRate', Fsf);

fvtool(noiseClearingFilter);

noisyAudio = awgn(audio, 15, 'measured'); % Decrease the value of second parameter to add more noise %

clearedAudio = filter(noiseClearingFilter, noisyAudio);

% Plotting the three signals %

subplot(3, 1, 1);
plot(audio);
title("Original Audio");

subplot(3, 1, 2);
plot(noisyAudio);
title("Noisy Audio");

subplot(3, 1, 3);
plot(clearedAudio);
title("Cleared Audio");


% Creating audio files for the sounds %
noisyFileName = "noisySound.wav";
audiowrite(noisyFileName,noisyAudio,Fs);
clearedFileName = "clearSound.wav";
audiowrite(clearedFileName,clearedAudio,Fs);