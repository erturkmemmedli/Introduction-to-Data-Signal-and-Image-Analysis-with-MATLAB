load humanactivity.mat
D = feat; % [24075 x 60] matrix containing 60 feature measurements from 24075 samples

% compute eigvals
[eigvects,~,eigvals] = pca(D);

% compute the cumulative_percent_variance_permode vector. 
percvar = 100*eigvals/sum(eigvals);
cumulative_percent_variance_permode = cumsum(percvar);

% Define N as the number of eigenvectors needed to capture at least 99.9% of the variation in D. 
%N = length(cumulative_percent_variance_permode (cumulative_percent_variance_permode >= 99.9))
%cumulative_percent_variance_permode
N=5;
