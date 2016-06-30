% Flip color image

clear; clc;
Zebra = imread('http://blogs.mathworks.com/pick/files/TwoZebras.jpg');
Zebras = flipdim(Zebra,2);
imshow(Zebras)
print -dpng blaufer_HW3_2c.png
