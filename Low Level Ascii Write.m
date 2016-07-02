% Low Level Ascii Write

clear; clc;
fileID = fopen('file.txt','w');
fprintf(fileID,'%.3f %.3f\n',10.0,11.0);
fclose(fileID);
type file.txt