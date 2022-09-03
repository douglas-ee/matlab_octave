clc
clear

i_1 = .8;
i_2 = .01;

A = (i_1^2)/2;
B = (i_2^2)/2;
C = (i_1*i_2);

x = linspace(-3, 3,1000); 
T = A*(-2*10^-3*sin(2*x)) + B*(-20*sin(2*x)) + C*(-0.3*sin(x));
T_1 = -1.64*10^-3*sin(2*x);
T_2 = -2.4*10^-3*sin(x);

plot(x,T, x,T_1, x,T_2)
ylabel('T [N*m]')
xlabel('Grau')
