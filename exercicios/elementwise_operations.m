clear all
clc

% matrix 3 linhas 3 colunas
A = [2 3 0; 1 0 -2; 0 0 3];
%somando dois a matrix
A+2;
%concatenando matrix A
a1 = A(:,1)
a2 = A(:,2)
%somando matrizes
a1+a2;
%multiplicando matrizes
a1.*a2;
[a1 a2 a1.*a2];
2^3;
%elevando matriz ao cubo
a1_e3 = a1 .^3
%elevando matriz a outra matrix
a1_ea2 = a1.^a2
%dividindo uma matriz por outra
a1_div_a2 = a1./a2
[a1 a2 a1./a2]