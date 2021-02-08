function mdl = my_fitpca(D,class)
% Find the number of unique classes from the class vector, numclasses    
    class_labels = unique(class);
    numclasses = length(class_labels);
% For each class, use 'pca' to find the eigenvectors (1st output), eigenvalues (3rd output), and mean feature vector (6th output)
    % create a subfield 'class' within the output struct mdl, which is a vector of length numclasses
    % mdl.class(i) has subfields 'eigvects' (the eigenvectors matrix output from 'pca', transposed), 'eigvals' (the eigenvalues output from 'pca'), and 'mu' (the mean feature vector).
    for i = 1:numclasses
        [eigvects,~,eigvals,~,~,mu] = pca(D(class==class_labels(i),:));
        mdl.class(i).eigvects = eigvects';
        mdl.class(i).eigvals = eigvals;
        mdl.class(i).mu = mu;
    end
end


D = [1 3 2 4;1 3 4 5]';
class = [0;0;1;1];
mdl = my_fitpca(D,class);
mdl.class(1) % eigvects: [0.7071 0.7071]; eigvals: 4; mu: [2 2];
mdl.class(2) % eigvects: [0.8944 0.4472]; eigvals: 2.5000; mu: [3 4.5000];


D = [1 3 2 4 5 ;1 3 4 5 6; 6 3 2 1 7]';
class = [0;0;1;1;2];
mdl = my_fitpca(D,class);
mdl.class(1) % eigvects: [-0.4851 -0.4851 0.7276]; eigvals: 8.5000; mu: [2 2 4.5000]
mdl.class(2) % eigvects: [0.8165 0.4082 -0.4082]; eigvals: 3.0000; mu: [3 4.5000 1.5000]
mdl.class(3) % eigvects: [0×3 double]; eigvals: [0×1 double]; mu: [5 6 7] (We get empty eigvects and eigvals because with only one datapoint, there is no variability from the mean!)
