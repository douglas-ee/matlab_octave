clc
clear

% Exemplo 1.1
% O circuito magnético mostrado na Fig. 1.2 tem as dimensões Ac = Ag = 9 cm2, g = 0,050 cm,lc = 30 cm e N = 500 espiras. 
% Suponha o valor μr = 70.000 para o material do núcleo. 

% Permeabilidade do vacuo
mu0 = pi*4.e-7;
mur = 70e3;
%Todas as dimensoes expressas em metros
Ac = 9e-4; 
Ag = 9e-4;
lg = 5e-4; 
lc = 0.3;
N = 500;
Bc = 1;

% (a) Encontre as relutâncias Rc e Rg. Dada a condição de que o circuito magnético esteja operando com Bc = 1,0 T
%Relutancia do entreferro
Rg = lg/(mu0*Ag);
Rc = lc./(mur*mu0*Ac);
Rtot = Rg+Rc;

% (b) o fluxo φ e 
fluxo = Bc*Ac;

% (c) a corrente i.
F = fluxo*(Rtot);
i = (F/N);