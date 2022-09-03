clc
clear

% Exemplo 1.1
% O circuito magnético da Fig. 1.6a é constituído por uma bobina de N espiras enroladas em um
% núcleo magnético, de permeabilidade infinita, com dois entreferros paralelos de comprimentos
% g1 e g2, e áreas A1 e A2, respectivamente. Encontre 

% (a) a indutância do enrolamento

% (b) a densidade de fluxo B1 no entreferro 1 quando o enrolamento está conduzindo uma corrente i.
% Despreze os efeitos de espraiamento no entreferro.

% Permeabilidade do vacuo
mu0 = pi*4.e-7;
%Todas as dimensoes expressas em metros
Ag1 = 9e-4; 
Ag2 = 5e-4; 
lg1 = 5e-4; 
lg2 = 3e-4; 
N = 500;
i = 5;

Rg1 = lg1/(mu0*Ag1);
Rg2 = lg2/(mu0*Ag2);
Rtot = Rg1+Rg2;

L = mu0*N*N*((Ag1/lg1)+(Ag2/lg2)); 

fluxo_1 = (mu0*N*i)/lg1;

Bg1 = fluxo_1/Ag1;