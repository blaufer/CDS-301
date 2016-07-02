% Low Level Binary Read

clc; clear;
fid = fopen('file.bin','wb');
fwrite(fid,[1:10]);
fclose(fid);
FileID = fopen('file.bin');
data = fread(FileID);
data