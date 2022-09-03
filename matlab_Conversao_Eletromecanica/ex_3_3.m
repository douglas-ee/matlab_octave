% A Tabela 3.1 contém dados de um experimento no qual a indutância de um solenoide foi medida em função da posição x, onde x = 0 corresponde a uma retração total do solenoide.

% Tabela 3.1 Dados para o Exemplo 3.3
% x [cm] 0 0,2 0,4 0,6 0,8 1,0 1,2 1,4 1,6 1,8 2,0
% L [mH] 2,8 2,26 1,78 1,52 1,34 1,26 1,20 1,16 1,13 1,11 1,10

% Plote a força do solenoide para uma corrente de 0,75 A em função da posição no intervalo 0,2 ≤ x ≤ 1,8 cm.

clc
clear

% Aqui estão os dados: x em cm, L em mH
xdata = [0 0.2 0.4 0.6 0.8 1.0 1.2 1.4 1.6 1.8 2.0];
Ldata = [2.8 2.26 1.78 1.52 1.34 1.26 1.20 1.16 1.13 1.11 1.10];

% Converta para unidades SI
x = xdata*1.e-2;
L = Ldata*1.e-3;
len = length(x);
xmax = x(len);

% Use polyfit para realizar um ajuste de quarta ordem de
% L em função de x. Armazene os coeficientes polinomiais em
% um vetor a. O ajuste será da forma:
%
% Lfit = a(1)*x^4 + a(2)*x^3 + a(3)*x^2 + a(4)*x + a(5);
%
a = polyfit(x,L,4);

% Vamos conferir o ajuste
n = 1:101;
xfit = xmax*(n-1)/100;
Lfit = a(1)*xfit.^4 + a(2)*xfit.^3 + a(3)*xfit.^2 + a(4)*xfit + a(5);

% Plote os dados e em seguida o ajuste para comparação
% (converta xfit para cm e Lfit para mH)
plot(xdata,Ldata,'*')
hold
plot(xfit*100,Lfit*1000)
hold
xlabel('x [cm]')
ylabel('L [mH]')
fprintf('\n Pausa. Aperte qualquer tecla para plotar a força.\n')
pause;

% Agora plote a força. A força será dada
%
% i^2 dL i^2
% --- * ---- = --- ( 4*a(1)*x^3 + 3*a(2)*x^2+ 2*a(3)*x + a(4))
% 2 dx 2

% Inicialize a corrente com 0,75 A
I = 0.75;
n = 1:101;
xfit = 0.002 + .016*(n-1)/100;
F = 4*a(1)*xfit.^3 + 3* a(2)*xfit.^2 + 2*a(3)*xfit + a(4);
F = (I^2/2)*F;
plot(xfit*100,F)
xlabel('x [cm]')
ylabel('Força [N]')