%exemplo de funcao que calcula o produto matricial de A e x
function [b,normB] = functionExample(A,x)

%A - parametro de matriz
%x - um vetor

%saidas
%calculo de A*X
b = A*x;
%normB = norm(b)
%calculo de norm(b)
normB = norm(b);
%calculos inuteis
A = 0;
x = 0;

 end