% High Level Ascii Write Single

clear; clc;
X = reshape([1:10],5,2)
fileID = fopen('blaufer_HW4_1.txt','w');
save -ascii blaufer_HW4_1.txt X;
type blaufer_HW4_1.txt
