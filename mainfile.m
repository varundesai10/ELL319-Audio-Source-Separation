file1 = "source1.wav";
file2 =  "source2.wav";

printf('working...\n');
[s1, sampling_rate] = audioread(file1);
[s2, sampling_rate] = audioread(file2);
%s1 = s1'; s2 = s2'; %making sizes compatible with the algorithm

S = [s1'; s2'];


%the mixing matrix:
A = [0.5, 0.3;0.7, 0.8];

%the mixed source
X = A*S;

%calling the ica function implemented in a different file:
[S_, W] = ica(X, 5000, 1e-16);

%saving the mixed file too so that we can listen to it later on to comment on the performance of th algorithm
%first we center the audio files, or else VLC can't play it nicely for us

X = X - mean(X, 2);

audiowrite('mixedaudio1.wav', X(1,:)', sampling_rate);
audiowrite('mixedaudio2.wav', X(2, :)', sampling_rate);

%saving the separated sources
audiowrite('separatedaudio1.wav', S(1,:)', sampling_rate);
audiowrite('separatedaudio2.wav', S(2,:)', sampling_rate);

printf('Done.\n');
printf('Run visualize.m to see plots of mixed and separated signals.');


