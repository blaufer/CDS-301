% Antialiasing simple image

clear; clc;
n = 16;
for i = [1:n]
 for j = [1:n]
   if ( (i - n/2)^2 + (j - n/2)^2) <= (n/4)^2
     M(i,j) = 0;
   else
     M(i,j) = 1;
   end
 end
end
C = [0,0,0;0.5,0.5,0.5;1,1,1];
for i = 3:13;
    for j = [1:n-1]
        if (M(i,j) == 0)
            if (M(i,j+1) == 1)
                M(i,j) = 0.5;
            end
            if (M(i,j-1) == 1)
                M(i,j) = 0.5;
            end
        end
    end
end
imagesc(M);
colormap(C);
hold on; axis square; grid on;
