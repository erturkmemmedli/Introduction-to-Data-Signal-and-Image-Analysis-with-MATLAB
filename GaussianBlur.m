function [img_filt,filt] = GaussianBlur(img,sigma)
% Use fspecial to generate the Gaussian filter
W = ceil(6*sigma);
filt = fspecial('gaussian',[W,W],sigma);
% Apply the filter to the image using convolution
img_filt = conv2(img,filt,'same');
end



sigma = 20; 
img = imread('moon.tif');
[img_filt,filt] = GaussianBlur(img,sigma);
imagesc(img)
title('moon')
colormap(gray)
figure();
imagesc(img_filt)
title('moon blurred with sigma=20')
colormap(gray)
figure;
surf(filt)
title('gaussian filter with sigma=20')
