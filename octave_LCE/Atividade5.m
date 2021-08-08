clear all
%S01 = 5kVA    fp01 = 0.6 (atrasado)
%S02 = 15kVA   fp02 = 0.5 (atrasado)
%S03 = 10kVA   fp03 = 0.9 (adiantado)
%V = 220v      60Hz

%fatores de potencia cos(teta) = f.p = P/|S|
fp01 = 0.6;
fp02 = 0.5;
fp03 = 0.9;

%cargas complexas S = P + Qi
s01 = 5000*fp01 + j*5000*sin(acos(fp01));
s02 = 15000*fp02 + j*15000*sin(acos(fp02));
s03 = 10000*fp03 - j*10000*sin(acos(fp03));

%somando as cargas por meio de chaveamento
s12 = s01 + s02;
s13 = s01 + s03;
s23 = s02 + s03;
s123 = s01 + s02 + s03;

%modulo das cargas, valor absoluto
abs01 = abs(s01);
abs02 = abs(s02);
abs03 = abs(s03);
abs12 = abs(s12);
abs13 = abs(s13);
abs23 = abs(s23);
abs123 = abs(s123);

%nomeando o chaveamentomento para compensacao
CH = s123
%fator de potencia desejavel para compensacao
fp_c = 0.9
%abs_c = |S| modulo da carga desejavel com o f.p desejado
abs_c = real(CH)/fp_c
%Q_CH = Q do chaveamento para encontrar a capacitancia apropriada
Q_CH = sqrt(abs_c^2 - real(CH)^2)
%Qc = potencia reativa da capacitancia apropriada Qc = abs(V)^2/Xc
Qc = imag(CH) - Q_CH
%Xc = 1/(wC)
Xc = 220^2/Qc;
w = 2*pi*60;
%capacitancia desejada para compensacao
C = 1/(w*Xc)

%plotando os valores
plot ([0 real(CH) real(CH) 0],[0 0 imag(CH) 0],[0 real(CH) real(CH) 0],[0 0 Q_CH 0])
xlabel('Potência Ativa (W)'),ylabel('Potência Reativa (VAr)')