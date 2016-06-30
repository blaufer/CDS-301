% Mirror image

clear; clc;
I = imread('cameraman.tif');
I2 = fliplr(I)
imshow(I2)
print -dpng blaufer_HW2_2a.png
