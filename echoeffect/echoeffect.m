[filename, pathname] = uigetfile('*', 'Select the Input Audio');
[audio, Fs] = audioread(num2str(filename)); %X -> sampled data, Fs -> Sampling Rate%

n = length(audio);

a = 0.8;

d = 2000;

echoAudio = zeros(n+d, 1);

paddedAudio = padarray(audio, [d, 0], 0, 'pre');

for i = (d+1):1:n
    echoAudio(i-d, 1) = audio(i) + a*paddedAudio(i-d);
end

% Plotting the three signals %
subplot(2, 1, 1);
plot(audio);
title("Original Audio");

subplot(2, 1, 2);
plot(echoAudio);
title("Echo Audio");

% Creating audio files for the sounds %
echoFileName = "echoSound.wav";
audiowrite(echoFileName,echoAudio,Fs);
