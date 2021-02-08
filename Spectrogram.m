load gong % loads gong sound y and sampling frequency Fs
% can play in MATLAB Online with soundsc(y,Fs)
soundsc(y(1:4*Fs),Fs)
% call spectrogram to get s,f,t
[s,f,t] = spectrogram(y,256,[],[],Fs);
% Use imagesc to display it
imagesc(f,t,log(abs(s')))

colorbar
axis xy
xlabel('Frequency (Hz)')
ylabel('Time (s)')
