clear all
clc

%dados da questao
V = 220; % volts
f = 60;  % hertz

%###############################################################################
% MUDANDO OS VALORES DOS MOTORES PARA OBTER O RESULTADO DESEJADO NA COMBINAÇAO
%###############################################################################

%potencia aderida
pot_A = 2206.5;
pot_B = 735.5;

%fatores de potencia por rendimento% do motor
fp50_A = 0.68;
fp75_A = 0.77;
fp100_A = 0.83;

fp50_B = 0.56;
fp75_B = 0.68;
fp100_B = 0.76;

%potencia ativa P por rendimento% do motor
P50_A = (pot_A*(50/100))/(77/100);
P75_A = (pot_A*(75/100))/(81/100);
P100_A = (pot_A*(100/100))/(81.5/100);

P50_B = (pot_B*(50/100))/(61/100);
P75_B = (pot_B*(75/100))/(65/100);
P100_B = (pot_B*(100/100))/(66/100);

################################################################################
%carga S = P + iQ por rendimento% do motor
## S50_A = P50_A*fp50_A + i*P50_A*sin(acos(fp50_A));
## S75_A = P75_A*fp75_A + i*P75_A*sin(acos(fp75_A));
## S100_A = P100_A*fp100_A + i*P100_A*sin(acos(fp100_A));

## S50_B = P50_B*fp50_B + i*P50_B*sin(acos(fp50_B));
## S75_B = P75_B*fp75_B + i*P75_B*sin(acos(fp75_B));
## S100_B = P100_B*fp100_B + i*P100_B*sin(acos(fp100_B));

abs_S50_A = P50_A/fp50_A;
abs_S75_A = P75_A/fp75_A;
abs_S100_A = P100_A/fp100_A;

abs_S50_B = P50_B/fp50_B;
abs_S75_B = P75_B/fp75_B;
abs_S100_B = P100_B/fp100_B;

S50_A = abs_S50_A*exp(j*(acos(fp50_A)));
S75_A = abs_S75_A*exp(j*(acos(fp75_A)));
S100_A = abs_S100_A*exp(j*(acos(fp100_A)));

S50_B = abs_S50_B*exp(j*(acos(fp50_B)));
S75_B = abs_S75_B*exp(j*(acos(fp75_B)));
S100_B = abs_S100_B*exp(j*(acos(fp100_B)));


%carga S das respectivas combinações
OP01 = S50_A + S50_B;
OP02 = S50_A + S75_B;
OP03 = S50_A + S100_B;
OP04 = S75_A + S50_B;
OP05 = S75_A + S75_B;
OP06 = S75_A + S100_B;
OP07 = S100_A + S50_B;
OP08 = S100_A + S75_B;
OP09 = S100_A + S100_B;
disp('Vector do valor S das combinacoes')
vector_OP = [OP01 OP02 OP03 OP04 OP05 OP06 OP07 OP08 OP09]';

%valor absoluto das cargas
S01 = abs(OP01);
S02 = abs(OP02);
S03 = abs(OP03);
S04 = abs(OP04);
S05 = abs(OP05);
S06 = abs(OP06);
S07 = abs(OP07);
S08 = abs(OP08);
S09 = abs(OP09);
disp('Vector do valor abs de S das combinacoes')
vector_S = [S01 S02 S03 S04 S05 S06 S07 S08 S09]';

%fatores de potencias de cada carga
FP01 = real(OP01)/S01;
FP02 = real(OP02)/S02;
FP03 = real(OP03)/S03;
FP04 = real(OP04)/S04;
FP05 = real(OP05)/S05;
FP06 = real(OP06)/S06;
FP07 = real(OP07)/S07;
FP08 = real(OP08)/S08;
FP09 = real(OP09)/S09;
disp('Vector do FS das combinacoes')
vector_FP = [FP01 FP02 FP03 FP04 FP05 FP06 FP07 FP08 FP09]';

%potencia reativa das cargas
Q01 = imag(OP01);
Q02 = imag(OP02);
Q03 = imag(OP03);
Q04 = imag(OP04);
Q05 = imag(OP05);
Q06 = imag(OP06);
Q07 = imag(OP07);
Q08 = imag(OP08);
Q09 = imag(OP09);
disp('Vector Q das combinacoes')
vector_Q = [Q01 Q02 Q03 Q04 Q05 Q06 Q07 Q08 Q09]';

%calculando o valor da capacitancia para corrigir a potencia reativa
disp('Vector das compensacoes dos capacitores')
capacitor_correcao_geral = (vector_Q)/2*pi*f*V^2;

%capacitancia da correcao de menor valor de FP
disp('capacitor da operacao 1, com menor valor de FP')
c_correcao_01 = capacitor_correcao_geral(1,1);

%corrigindo todas as cargas em paralelo com a capacitancia de menor valor de FP
disp('Vector da correcao com uso do capacitor da operacao 1, com menor valor de FP')
OP01_c = OP01 - j*imag(OP01);
OP02_c = OP02 - j*imag(OP01);
OP03_c = OP03 - j*imag(OP01);
OP04_c = OP04 - j*imag(OP01);
OP05_c = OP05 - j*imag(OP01);
OP06_c = OP06 - j*imag(OP01);
OP07_c = OP07 - j*imag(OP01);
OP08_c = OP08 - j*imag(OP01);
OP09_c = OP09 - j*imag(OP01);
vector_OP_c = [OP01_c OP02_c OP03_c OP04_c OP05_c OP06_c OP07_c OP08_c OP09_c]';

%novos valores de fator de potencia apos a correcao da potencia reativa por meio do capacitor
disp('Vector dos FP, apos a correcao com capacitor de menor FP')
FP01_c = (real(OP01_c)/abs(OP01_c));
FP02_c = (real(OP02_c)/abs(OP02_c));
FP03_c = (real(OP03_c)/abs(OP03_c));
FP04_c = (real(OP04_c)/abs(OP04_c));
FP05_c = (real(OP05_c)/abs(OP05_c));
FP06_c = (real(OP06_c)/abs(OP06_c));
FP07_c = (real(OP07_c)/abs(OP07_c));
FP08_c = (real(OP08_c)/abs(OP08_c));
FP09_c = (real(OP09_c)/abs(OP09_c));
vector_FP_c = [FP01_c FP02_c FP03_c FP04_c FP05_c FP06_c FP07_c FP08_c FP09_c]';

%plotando o triangulo de potencia
plot([0 real(OP09) real(OP09) 0],[0 0 imag(OP09) 0],[0 real(OP09_c) real(OP09_c) 0],[0 0 imag(OP09_c) 0])
xlabel('Potência Ativa (W)')
ylabel('Potência Reativa (VAr)')
title('Triangulo Da Potencia OP09')

%salvando o grafico em JPG
saveas(gca, 'grafico_8.jpg', 'jpg')

