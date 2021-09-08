clear all

## V = 220v
## 60Hz

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
s12 = s01 + s02
s13 = s01 + s03
s23 = s02 + s03
s123 = s01 + s02 + s03

%modulo das cargas, valor absoluto
abs01 = abs(s01)
abs02 = abs(s02)
abs03 = abs(s03)
abs12 = abs(s12)
abs13 = abs(s13)
abs23 = abs(s23)
abs123 = abs(s123)

%fatores de potencia cos(teta) = f.p = P/|S|
fp12 = real(s12)/abs(s12)
fp13 = real(s13)/abs(s13)
fp23 = real(s23)/abs(s23)
fp123 = real(s123)/abs(s123)

%plotando os graficos
subplot(3,3,1)
plot([0 real(s01)],[0 imag(s01)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S01')

subplot(3,3,2)
plot([0 real(s02)],[0 imag(s02)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S02')

subplot(3,3,3)
plot([0 real(s03)], [0 imag(s03)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S03')

subplot(3,3,4)
plot([0 real(s12)],[0 imag(s12)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S12')

subplot(3,3,5)
plot([0 real(s13)],[0 imag(s13)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S13')

subplot(3,3,6)
plot([0 real(s23)],[0 imag(s23)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S23')

subplot(3,3,7)
plot([0 real(s123)],[0 imag(s123)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S123')

%salvando o grafico em JPG
saveas(gca, 'grafico_2.jpg', 'jpg')