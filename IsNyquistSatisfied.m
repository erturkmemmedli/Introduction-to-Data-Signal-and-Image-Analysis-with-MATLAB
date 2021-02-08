function [y,Fs_min] = IsNyquistSatisfied(fmax,Fs)
    Fs_min = fmax * 2
    if Fs_min >= Fs
        y = false
    else
        y = true
    end
end


fmax = 16000;
Fs = 28800;
[y,Fs_min] = IsNyquistSatisfied(fmax,Fs) % false, with Fs_min=32000

fmax = 16000;
Fs = 44100;
[y,Fs_min] = IsNyquistSatisfied(fmax,Fs) % true, with Fs_min=32000
