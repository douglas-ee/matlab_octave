clear all

V = 220; %volts
f = 60;  %Hz

% cargas complexas da questao
S01 = 5000;  %VA
S02 = 15000; %VA
S03 = 10000; %VA

%fatores de potencia cos(teta) = f.p = P/|S|
fp01 = 0.6; % atrasado
fp02 = 0.5; % atrasado
fp03 = 0.9; % adiantado

%cargas complexas S = P + Qi
s01 = S01*fp01 + j*S01*sin(acos(fp01));
s02 = S02*fp02 + j*S02*sin(acos(fp02));
s03 = S03*fp03 - j*S03*sin(acos(fp03));

%somando as cargas por meio de chaveamento
s12 = s01 + s02;
s13 = s01 + s03;
s23 = s02 + s03;
s123 = s01 + s02 + s03;

%nomeando o chaveamentomento para compensacao e o fator de potencia desejado
################################################################################
CH = s123;
fp_c = 0.9;
################################################################################

%abs_c = |S| modulo da carga desejavel com o f.p desejado
abs_c = real(CH)/fp_c
%Q_CH = Q do chaveamento para encontrar a capacitancia apropriada
Q_CH = sqrt(abs_c^2 - real(CH)^2)
%Qc = potencia reativa da capacitancia apropriada Qc = abs(V)^2/Xc
Qc = imag(CH) - Q_CH
%Xc = 1/(wC)
Xc = V^2/Qc;
w = 2*pi*f;
%capacitancia desejada para compensacao
C = 1/(w*Xc)

%plotando os valores
plot ([0 real(CH) real(CH) 0],[0 0 imag(CH) 0],[0 real(CH) real(CH) 0],[0 0 Q_CH 0])
xlabel('Potência Ativa (W)'),ylabel('Potência Reativa (VAr)')

%salvando o grafico em JPG
saveas(gca, 'grafico_5.jpg', 'jpg')