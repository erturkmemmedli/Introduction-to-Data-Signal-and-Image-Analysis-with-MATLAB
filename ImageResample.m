function img_resample = ImageResample(img, dim)
% define r,c,nr,nc
nr = dim(1);
nc = dim(2);
[r, c] = size(img);
% use the meshgrid function to determine sampling coordinates
[C, R] = meshgrid(1:(c-1)/(nc-1):c, 1:(r-1)/(nr-1):r);
% use interp2 to interpolate
img_resample = interp2(double(img), C, R);
end



[C,R] = meshgrid(1:10,1:15); % inputs are ordered columns, then rows
img = uint8(C.*R);
size(img) % = 15 x 10
dim = [20;25];
img_resample = ImageResample(img, dim);
size(img_resample) % = 20 x 25
imagesc(img);
figure
imagesc(img_resample)
