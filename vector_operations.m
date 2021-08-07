vec_col = [2; 4; 5]
vec_ligne = [-2, 3, 4]
v = vec_ligne
size(v) %fornece a quantidade de linhas e colunas
a = [-1:4]
b = [-0.5:2:3]
c = [-0.5:2:5]
d = [-0.5:2:3.5]
e = linspace(2.1, 4.2, 4) %essa funcao secciona em quatro parte em determinado intervalo
f = [-1:2:5] % de -1 saltando de 2 em 2 ate 5
g = [0.5:1.4:6]
h = [f, g]
i = [f ; g]
h(3)
x = h([2, 4, 5, 1]) %imprime os valores de h nas posicoes 2, 4, 5, 1
x' % imprime x em colunas 
j = [-3; 2; 1]
k = [0.5; 2; -4]
l = j+k
m = 3.2 * l
vec_long = [j; k]
vec_null = zeros(4,1)
vec_null = zeros(1,4)
vec_null = ones(4,1)
vec_null = ones(1,4)