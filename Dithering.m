% Dithering a matrix

clear; clc;
A = [0,128,144,222,255,19,22;4,228,144,222,255,19,22;8,28,44,22,0,19,22;9,38,44,22,0,19,22;2,47,44,22,0,19,22;1,100,144,0,255,19,22;1,99,144,0,255,19,22;];
Amean = mean2(A); % Changed from mean to mean2 (mean2 is for a matrix)
for i = 1:size(A);
    for j = 1:size(A);
        if (A(i,j) < Amean); 
            A(i,j) = 0;
        else
            A(i,j) = 255;
        end
    end
end
A