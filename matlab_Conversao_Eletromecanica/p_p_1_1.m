clc
clear

% Problema Pratico 1.1
% O circuito magnético mostrado na Fig. 1.2 tem as dimensões Ac = Ag = 9 cm2, g = 0,050 cm,lc = 30 cm e N = 500 espiras. 
% Suponha o valor μr = 70.000 para o material do núcleo. Encontre o fluxo e corrente

% Permeabilidade do vacuo
mu0 = pi*4.e-7;
mur = 70e3;
%Todas as dimensoes expressas em metros
Ac = 9e-4; 
Ag = 9e-4;
lg = 5e-4; 
lc = 0.3;
Bc = 1;

% (a) o número de espiras for dobrado para N = 1000 espiras, mantendo-se as mesmas dimensões
N = 1000;

% Calculos necessarios
Rg_a = lg/(mu0*Ag);
Rc_a = lc./(mur*mu0*Ac);
Rtot_a = Rg_a+Rc_a;

fluxo_a = Bc*Ac;
F_a = fluxo_a*(Rtot_a);
i_a = (F_a/N);

% (b) se o número de espiras for N = 500 e o entreferro for reduzido a 0,040cm
N = 500;
lg = 4e-4;

% Calculos necessarios
Rg_b = lg/(mu0*Ag);
Rc_b = lc./(mur*mu0*Ac);
Rtot_b = Rg_b+Rc_b;

fluxo_b = Bc*Ac;
F_b = fluxo_b*(Rtot_b);
i_b = (F_b/N);
