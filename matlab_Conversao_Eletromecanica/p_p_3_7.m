clc
clear

i_1 = .37;
i_2 = -0.37;

A = (i_1^2)/2;
B = (i_2^2)/2;
C = (i_1*i_2);

x = linspace(-3, 3,1000); 
T = A*(-1.08*sin(4*x)) + B*(-1.08*sin(4*x)) + C*(-1.3*sin(2*x));
T_1 = A*(-1.08*sin(4*x)) + B*(-1.08*sin(4*x));
T_2 = C*(-1.3*sin(2*x));

plot(x,T, x,T_1, x,T_2)
ylabel('T [N*m]')
xlabel('Grau')