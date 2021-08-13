clear all
%a virgula separa a coluna e a quebra de linha a coluna
A = [1,2,3.5
     3, 4, -2.1];
%a virgula separa a coluna e o ponto virgula a coluna
B = [0,2,4.5;1.5,3,-0.3];
%operacoes simples com matrizes
C = A - 2*B;
D = A + 2*B;
%gerando uma matrix por meio da juncao de virgula e ponto virgula
E = [A, B; C, D];
%gerando uma matrix por meio da juncao de virgula e ponto virgula
matrice = [E; 2*E];
%obersevando o tamanho das matrizes referente a quantidade de linha e coluna
size(E);
size(matrice);
%impriminto valores no endereco linha 2 coluna 3
matrice(2,3);
%impriminto valores no endereco da linha 2 ate 3 coluna 4 e 6
matrice(2:3, [4,6]);
%imprimindo a matrix transposta
matrice_transposta = matrice';
%matrizes no default de zeros e ones
mat_null = zeros(6,8);
mat_ones = ones(6,8);
%matriz identidade 6 por 6
identity = eye(6,6);
F = [1 2 3 4];
%imprimindo matzes diagonais
mat_diagonale = diag(F);
mat_diagonale_matrice = diag(matrice);
mat_diagonale_A = diag(A);