clc
clear

% Exemplo 2.10
% Um transformador de potencial com uma relação de 2400:120 V e 60 Hz tem os seguintes
% parametros (referidos ao enrolamento de 2400 V):
% (a) Supondo uma entrada de 2400 V, que idealmente deve produzir uma tensão de 120 V
% no enrolamento de baixa tensão, calcule os erros de módulo e de ângulo de fase da tensão do
% secundário se o enrolamento do secundário for posto em circuito aberto.

%Parâmetros TP
R1 = 128;
X1 = 143;
Xm = 163e3;
N1 = 2400;
N2 = 120;
N = N1/N2;

%Tensão de primário
V1 = 2400;

%Tensão de secundário
V2 = V1*(N2/N1)*(j*Xm/(R1+ j*(X1+Xm)));
magV2 = abs(V2);
phaseV2 = 180*angle(V2)/pi;

%plotando os valores
fprintf('\nValor de V2 = %g [V]',magV2)
fprintf('\n e ângulo = %g [graus]\n\n',phaseV2)
