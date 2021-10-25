% Taking input from audio files %
[filename, pathname] = uigetfile('*', 'Select the Input Audio');
[audio, Fs] = audioread(num2str(filename)); % X -> sampled data, Fs -> Sampling Rate %


% Creating audio files for the sounds %
noisyFileName = "outputaudio.wav";
audiowrite(noisyFileName,noisyAudio,Fs);