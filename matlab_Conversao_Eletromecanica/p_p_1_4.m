clc
clear

% Problema Pratico 1.4
% Escreva um script de MATLAB para plotar a indutancia do circuito magnetico do Exemplo 1.1
% com μr = 70.000 em funcao do comprimento do entreferro, quando este varia de 0,01cm ate 0,10cm.

% Permeabilidade do vacuo
mu0 = pi*4.e-7;

%Todas as dimensoes expressas em metros
Ac = 9e-4; 
Ag = 9e-4;
lg = 0.0001:0.0001:0.001; 
lc = 0.3;
N = 500;

%Relutancia do entreferro
Rg = lg./(mu0*Ag);
mur = 70000;
Rc = lc./(mur*mu0*Ac);
Rtot = Rg+Rc;
L = N^2./Rtot;

%plotando os valores
plot(lg,L);
title('L x lg')
xlabel('Comprimento do Entreferro [m]')
ylabel('Indutância [H]')


%salvando o grafico em PDF ou JPG
saveas(gca, 'p_p_1_4.jpg', 'jpg')
