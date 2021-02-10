function edge_mag = SobelMagnitude(img)
% Use fspecial to generate the horizontal and vertical Sobel filters (sh and sv)
img = im2double(img)
sh = fspecial('sobel')
sv = sh'
% Apply both filters to the image to generate img_sh and img_sv
img_sh = imfilter(img,sh);
img_sv = imfilter(img,sv);
% Compute edge_mag as the square root of the sum of the squared img_sh and img_sv results
sum = img_sh.^2 + img_sv.^2;
edge_mag = sqrt(sum);



img = imread('cameraman.tif');
edge_mag = SobelMagnitude(img);
imagesc(img); colormap(gray);
figure; imagesc(edge_mag); colormap(gray);
