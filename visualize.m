[s1, samplingrate] = audioread('source1.wav');
[s2, samplingrate] = audioread('source2.wav');
[x1, samplingrate] = audioread('mixedaudio1.wav');
[x2, samplingrate] = audioread('mixedaudio2.wav');
[s1_, samplingrate] = audioread('separatedaudio1.wav');
[s2_, samplingrate] = audioread('separatedaudio2.wav');

subplot(6, 1, 1);
plot(s1, 'r');
title('Source 1');

subplot(6, 1, 2);
plot(s2, 'b');
title('Source 2');

subplot(6, 1, 3);
plot(x1, 'r');
title('Mixed Audio 1');
%ylim([-3,3])

subplot(6, 1, 4);
plot(x2, 'b');
title('Mixed Audio 2');
%ylim([-3, 3]);

subplot(6, 1, 5);
plot(s1_, 'r');
title('Separated Sound 1');

subplot(6, 1, 6);
plot(s2_, 'b');
title('Separted Sound 2');

