function y = GaussianFilter(x, sigma)
    % Compute W by rounding up 6*sigma
    W = ceil(6*sigma);
    % Use fspecial to create our Gaussian filter
    gaussian_filter = fspecial('gaussian', [1,W], sigma);
    % convolve the signal with the filter
    y = conv(x, gaussian_filter,'same');
end


x = [0 0 0 1 0 0 0]; 
sigma = 1.5;
y = GaussianFilter(x, sigma)
