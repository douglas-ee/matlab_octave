clear all
clc
clf

figure(1)

x = linspace(-1, 1, 101);
y = linspace(-1, 1, 201);

[x,y] = meshgrid(x,y);

Z = sin(2*pi*x) .* cos(pi*y);

surf(x,y, Z)

title('surface')

saveas(gca, 'plot3D_2.pdf', 'pdf')
saveas(gca, 'plot3D_2.jpg', 'jpg')