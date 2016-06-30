% Make every row and column white

clear;
I = imread('cameraman.tif');
for i = 1:size(I)
    for j = 1:size(I)
        I(i,j) = 255;
    end
end
imshow(I)
print -dpng blaufer_HW2_1b.png

% Another way of doing so

% clear;
% clc;
% I = imread('cameraman.tif');
% I(1:size(I),1:size(I)) = 255;
% imshow(I)
% print -dpng blaufer_HW2_1b.png
