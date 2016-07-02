% Streamlines

clear; clear;

figure(1);clf
[X,Y] = meshgrid([-pi:0.1:pi],[-2:0.1:2]);
U = Y;
V = -sin(X);
quiver(X,Y,U,V);
hold on;
axis equal;
h = 0.1;
px(1) = 0.1;
py(1) = 0.1;
vx(1) = 0;
vy(1) = 0;
Nsteps = 80;
for i = 1:Nsteps;
    px(i+1) = px(i) + h*vx(i);
    py(i+1) = py(i) + h*vy(i);
    vx(i+1) = interp2(X,Y,U,px(i),py(i));
    vy(i+1) = interp2(X,Y,V,px(i),py(i));
end
plot(px,py,'g');