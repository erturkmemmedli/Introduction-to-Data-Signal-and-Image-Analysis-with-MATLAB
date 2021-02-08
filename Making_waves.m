% Define T, Fs, and f (vector of sound frequencies)
T = 3;
Fs = 44100;
f = [330 247 208 165 123 82];
% Compute time vector, t
t = [0:1/Fs:T-1/Fs];
% Use a for-loop to construct y as a sum of cosines
y = zeros(1,132300);
for i = 1:length(f)
    for j = 1:length(t)
        y(j) = y(j) + cos(2*pi*f(i)*t(j));
    end
end
plot(y,t)
