%definindo os valores de A e z
A = [1 2 3; 4 5 6];
z = [2; -3; 0];

[v, n] = functionExample(A,z);
a = 3;
f = @(A,x) a*A*x;
g = inline('A*x', 'A', 'x');
w = g(A,z);
%imprimindo os valores
A
z
v
n
f
g
w