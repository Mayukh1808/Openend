[filename, pathname] = uigetfile('*', 'Select the Input Audio');
[audio, Fs] = audioread(num2str(filename)); %X -> sampled data, Fs -> Sampling Rate%

n = length(audio);

lengthInSeconds = n/Fs;

sinF = 0.25;

t = linspace(0, lengthInSeconds, n);

a = 0.5;

d = 2000;

modsin = sin(2*pi*sinF*t);

modsin1 = round(d.*modsin')+d;

flangeAudio = zeros(n+d, 1);

paddedAudio = padarray(audio, [d, 0], 0, 'pre');

for i = (d+1):1:n
    flangeAudio(i-d, 1) = audio(i) + a*paddedAudio(i-modsin1(i-d));
end

% Plotting the three signals %
subplot(2, 1, 1);
plot(audio);
title("Original Audio");

subplot(2, 1, 2);
plot(flangeAudio);
title("Flange Audio");

% Creating audio files for the sounds %
flangeFileName = "flangeSound.wav";
audiowrite(flangeFileName,flangeAudio,Fs);