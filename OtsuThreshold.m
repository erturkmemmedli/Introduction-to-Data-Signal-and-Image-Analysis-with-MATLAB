function [msk,thrsh] = OtsuThreshold(img)
% Define the Otsu threshold 'thrsh' using the histogram of img
thrsh = otsuthresh(imhist(img))*255;
% Apply the threshold to 'img' to make 'msk'
msk = img > thrsh;
end


img = imread('mri.tif');
[msk,thrsh] = OtsuThreshold(img);

imagesc(img)
title('mri')
colormap(gray)
figure();
imagesc(msk)
colormap(gray)
thrsh % = 36
