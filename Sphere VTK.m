% Creates VTK for Paraview for a sphere

clc; clear;

dtheta = 30;
x(360/dtheta*2,3) = 0;
j = 1;
for i = 0:dtheta:360-dtheta;
    x(j,1) = cosd(i);
    x(j,2) = sind(i);
    x(j,3) = 0.0;
    x(j+360/dtheta,1) = cosd(i);
    x(j+360/dtheta,2) = 0.0;
    x(j+360/dtheta,3) = sind(i);
    j = j + 1;
end
z = size(x,1);
fid = fopen('sphere.vtk','w');
fprintf(fid,'# vtk DataFile Version 3.0 \nCircle \nASCII \n \nDATASET POLYDATA \n');
fprintf(fid,'POINTS ');
fprintf(fid,'%.0f ', z);
fprintf(fid,'float\n');
fprintf(fid,'%f %f %f \n', x');
fprintf(fid,'\nPOLYGONS %.0f %.0f \n', z*2-2, (z*2-2)*4);
for j = 1:((size(x,1)/2)-1);
    fprintf(fid,'%.0f ', 3);
    if j < ((size(x,1)/2)-1);
        fprintf(fid,'%.0f %.0f %.0f \n', j, j+1, z/2+j);
    else
        fprintf(fid,'%.0f %.0f %.0f \n', j, 0, z/2+j);
    end
end
q = 1;
for j = (size(x,1)/2):size(x,1)-1;
    fprintf(fid,'%.0f ', 3);
    if j < (size(x,1)-1);
        fprintf(fid,'%.0f %.0f %.0f \n', j, j+1, q);
    else
        fprintf(fid,'%.0f %.0f %.0f \n', j, q, 0);
    end
    q = q + 1;
end
q = z-1;
for j = 1:((size(x,1)/2)-1);
    fprintf(fid,'%.0f ', 3);
    if j < ((size(x,1)/2)-1);
        fprintf(fid,'%.0f %.0f %.0f \n', j, j+1, q);
    else
        fprintf(fid,'%.0f %.0f %.0f \n', j, 0, q);
    end
    q = q - 1;
end
q = z/2-1;
for j = (size(x,1)/2):size(x,1)-1;
    fprintf(fid,'%.0f ', 3);
    if j == size(x,1)/2
        fprintf(fid,'%.0f %.0f %.0f \n', j, j+1, 0);
        q = q + 1;
    elseif j == (size(x,1)-1);
        fprintf(fid,'%.0f %.0f %.0f \n', j, size(x,1)/2, q);
    elseif j < size(x,1);
        fprintf(fid,'%.0f %.0f %.0f \n', j, j+1, q);
    end
    q = q - 1;
end
fclose(fid);