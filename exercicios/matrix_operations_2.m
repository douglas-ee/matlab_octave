clear all
clc

%matrizes coluna
A = [3;-1;2];
B = [0.4;4;-0.1];
%transposta das matrizes coluna
At = A';
Bt = B';
%operacoes com matrizes
AtB = A'*B;
ABt = A*B';
%matrix 3 linhas 2 colunas
C = [2 0 1; 3 2 1];
%matrix 2 linhas 2 colunas
D = [2 3; 1 0];
%operacao simples de multiplicacao
D*C;
%matrizes linhas e colunas
E = [3, 1, 0.9];
F = [3; 1; 0.9];
G = [2 3 0; 1 0 -2; 0 0 3];
%inverso da matriz G
inv(G);
%operacoes simples com matri inverso
H = inv(G)*F;
I = G\F; % resolutiin de G H = I