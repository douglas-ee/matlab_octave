clc
clear

% Exemplo 1.2
% A estrutura magnética de uma máquina síncrona está mostrada esquematicamente na Fig. 1.5.
% Assumindo que o ferro do rotor e do estator têm permeabilidade infinita (μ → ∞), encontre
% o fluxo φ do entreferro e a densidade de fluxo Bg. Neste exemplo, I = 10 A, N = 1000 espiras,
% g = 1 cm e Ag = 200 cm2

% Permeabilidade do vacuo
mu0 = pi*4.e-7;
%Todas as dimensoes expressas em metros
Ag = 200.e-4;
lg = 1.e-2; 
i = 10; 
N = 1000;

fluxo = (N*i*mu0*Ag)/(2*lg);
Bg = fluxo/Ag;
