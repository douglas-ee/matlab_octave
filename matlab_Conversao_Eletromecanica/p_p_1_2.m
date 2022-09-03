clc
clear

% Problema Pratico 1.2
% Para a estrutura magnética da Fig. 1.5 com as dimensões dadas no Exemplo 1.2, observa-se
% que a densidade de fluxo do entreferro é Bg = 0,9 T. Encontre o fluxo de entreferro φ e, para
% uma bobina de N = 500 espiras, a corrente necessária para produzir esse valor de fluxo no entreferro

% Permeabilidade do vacuo
mu0 = pi*4.e-7;
%Todas as dimensoes expressas em metros
Ag = 200.e-4;
lg = 1.e-2; 
N = 500;
Bg = 0.9;

Rg = lg/(mu0*Ag);

fluxo = Bg*Ag;
i = (fluxo*(2*Rg))/N;

