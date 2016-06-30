% Flip image upside down

clear; clc;
I = imread('cameraman.tif');
I2 = flipud(I)
imshow(I2)
print -dpng blaufer_HW2_2b.png
