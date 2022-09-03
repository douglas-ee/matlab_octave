clc
clear

% Exemplo 2.11
% Um transformador de corrente com uma relação de 800:5 A e 60 Hz tem os seguintes parâme-
% tros (referidos ao enrolamento de 800 A):

% Supondo que o enrolamento de corrente elevada esteja conduzindo uma corrente de
% 800 A, calcule o valor da corrente e da fase relativa no enrolamento de corrente baixa se a
% impedância de carga for puramente resistiva com Rb = 2,5

%Parâmetros TC
R_2p = 9.6e-6;
X_2p = 54.3e-6;
X_m = 17.7e-3;
N_1 = 5;
N_2 = 800;
N = N_1/N_2;

%Impedância de carga
R_b = 2.5;
X_b = 0;
Z_bp = N^2*(R_b + j * X_b);

%Corrente de primário
I1 = 800;

%Corrente de secundário
I2 = I1*N*j*X_m/(Z_bp + R_2p + j*(X_2p + X_m));
magI2 = abs(I2);
phaseI2 = 180*angle(I2)/pi;
fprintf('\nValor da corrente de secundário = %g [A]',magI2)
fprintf('\n e ângulo de fase = %g [graus]\n\n',phaseI2)