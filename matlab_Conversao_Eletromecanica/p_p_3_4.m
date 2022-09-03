clc
clear

x = linspace(0, 2*pi,1000); 
T = -0.1017*sin(2*x) + 0.044*cos(4*x);

plot(x,T)
ylabel('T [N*m]')
xlabel('Grau')