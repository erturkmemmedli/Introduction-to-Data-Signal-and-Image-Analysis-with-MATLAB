function [md,b,std_per_mode] = MahalanobisDistance(pcamdl,v)
    % compute b, our PCA coordinates for v
    b = pcamdl.eigvects*(v-pcamdl.mu)';
    % compute std_per_mode, the standard deviation distance from the mean for v for each mode of variation
    std_per_mode = abs(b)./sqrt(pcamdl.eigvals);
    % compute md, the Mahalanobis distance
    md = sqrt(sum(std_per_mode.^2));
end


mdl.class(1).eigvects = [0.7071 0.7071]; 
mdl.class(1).eigvals = 4; 
mdl.class(1).mu = [2 2];
v = [2,2];
md = MahalanobisDistance(mdl.class(1),v) % md = 0 because v = mu
v = [2,2] + 2*[0.7071 0.7071];
md = MahalanobisDistance(mdl.class(1),v) % md = 1 because v is 2/sqrt(eigval)=2/2=1 standard deviations from mean along eigenvector
v = [2,2] - 6*[0.7071 0.7071];
md = MahalanobisDistance(mdl.class(1),v) % md = 3 because v is 6/sqrt(eigval)=6/2=3 standard deviations from mean along eigenvector
v = [2,2] + [-0.7071 0.7071];
md = MahalanobisDistance(mdl.class(1),v) % md = 0 because v lies in a direction from mu that is orthogonal to the eigenvector
