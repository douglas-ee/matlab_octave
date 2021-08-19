clear all
clc
clf

figure(1)

t = linspace(-2*pi, 2*pi, 200);

plot3(sin(t), cos(t), t, 'b-o');
hold on
plot3(sin(t), -cos(t), t, 'k-x');

title('Helice')
xlabel('x axis')
ylabel('y axis')
zlabel('z axis')


saveas(gca, 'plot3D.pdf', 'pdf')
saveas(gca, 'plot3D.jpg', 'jpg')