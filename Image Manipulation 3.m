% Remove bottom half of the image

clear; clc;
I = imread('cameraman.tif');
for i = 1:(size(I)/2)
    for j = 1:size(I)
        I2(i,j) = I(i,j);
    end
end
imshow(I2)
print -dpng blaufer_HW2_1c.png

% Another way

% clear; clc;
% I = imread('cameraman.tif');
% I2(1:128,1:256) = I(1:128,1:256);
% imshow(I2)
% print -dpng blaufer_HW2_1c.png
