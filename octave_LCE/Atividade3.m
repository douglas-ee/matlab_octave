clear all

%fatores de potencia cos(teta) = f.p = P/|S|
fp01 = 0.6;
fp02 = 0.5;
fp03 = 0.9;

%cargas complexas S = P + Qi
s01 = 5000*fp01 + j*5000*sin(acos(fp01));
s02 = 15000*fp02 + j*15000*sin(acos(fp02));
s03 = 10000*fp03 - j*10000*sin(acos(fp03));

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

%calculando corrente I* = S/V. conj faz o conjugado de I
I01 = conj(s01/220);
I02 = conj(s02/220);
I03 = conj(s03/220);
I12 = conj(s12/220);
I13 = conj(s13/220);
I23 = conj(s23/220);
I123 = conj(s123/220);

%plotando os graficos
subplot(3,3,1)
plot([0 real(I01)], [0 imag(I01)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S01')

subplot(3,3,2)
plot([0 real(I02)], [0 imag(I02)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S02')

subplot(3,3,3)
plot([0 real(I03)], [0 imag(I03)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S03')

subplot(3,3,4)
plot([0 real(I12)], [0 imag(I12)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S12')

subplot(3,3,5)
plot([0 real(I13)], [0 imag(I13)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S13')

subplot(3,3,6)
plot([0 real(I23)], [0 imag(I23)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S23')

subplot(3,3,7)
plot([0 real(I123)], [0 imag(I123)])
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S123')