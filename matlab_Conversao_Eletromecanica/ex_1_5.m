clc
clear

% Exemplo 1.5
% Usando MATLAB, faça um grafico da indutancia do circuito magnetico do Exemplo 1.1 e da
% Fig. 1.2 em função da permeabilidade do nucleo no intervalo 100 ≤ μ r ≤ 100.000.

% Permeabilidade do vacuo
mu0 = pi*4.e-7;

%Todas as dimensoes expressas em metros
Ac = 9e-4; 
Ag = 9e-4;
lg = 5e-4; 
lc = 0.3;
N = 500;

%Relutancia do entreferro
Rg = lg/(mu0*Ag);
mur = 1:100:10000;
Rc = lc./(mur*mu0*Ac);
Rtot = Rg+Rc;
L = N^2./Rtot;

%plotando os valores
plot(mur,L);
title('L x mur')
xlabel('Permeabilidade relativa do núcleo')
ylabel('Indutância [H]')


%salvando o grafico em PDF ou JPG
saveas(gca, 'ex_1_5.jpg', 'jpg')
