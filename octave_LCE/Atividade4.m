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

%plotando o diagrama fasorial de S
subplot(4,4,1)
plot([0 real(s01)], [0 0], [real(s01) real(s01)], [0 imag(s01)], [0 real(s01)], [0 imag(s01)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S01')

subplot(4,4,2)
plot([0 real(s02)], [0 0], [real(s02) real(s02)], [0 imag(s02)], [0 real(s02)], [0 imag(s02)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S02')

subplot(4,4,3)
plot([0 real(s03)], [0 0], [real(s03) real(s03)], [0 imag(s03)], [0 real(s03)], [0 imag(s03)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S03')

subplot(4,4,4)
plot([0 real(s12)], [0 0], [real(s12) real(s12)], [0 imag(s12)], [0 real(s12)], [0 imag(s12)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S12')

subplot(4,4,5)
plot([0 real(s13)], [0 0], [real(s13) real(s13)], [0 imag(s13)], [0 real(s13)], [0 imag(s13)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S13')

subplot(4,4,6)
plot([0 real(s23)], [0 0], [real(s23) real(s23)], [0 imag(s23)], [0 real(s23)], [0 imag(s23)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S23')

subplot(4,4,7)
plot([0 real(s123)], [0 0], [real(s123) real(s123)], [0 imag(s123)], [0 real(s123)], [0 imag(s123)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL S123')

%plotando o diagrama fasorial de I
subplot(4,4,8)
plot([0 real(I01)], [0 0], [real(I01) real(I01)], [0 imag(I01)], [0 real(I01)], [0 imag(I01)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I01')

subplot(4,4,9)
plot([0 real(I02)], [0 0], [real(I02) real(I02)], [0 imag(I02)], [0 real(I02)], [0 imag(I02)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I02')

subplot(4,4,10)
plot([0 real(I03)], [0 0], [real(I03) real(I03)], [0 imag(I03)], [0 real(I03)], [0 imag(I03)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I03')

subplot(4,4,11)
plot([0 real(I12)], [0 0], [real(I12) real(I12)], [0 imag(I12)], [0 real(I12)], [0 imag(I12)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I12')

subplot(4,4,12)
plot([0 real(I13)], [0 0], [real(I13) real(I13)], [0 imag(I13)], [0 real(I13)], [0 imag(I13)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I13')

subplot(4,4,13)
plot([0 real(I23)], [0 0], [real(I23) real(I23)], [0 imag(I23)], [0 real(I23)], [0 imag(I23)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I23')

subplot(4,4,14)
plot([0 real(I123)], [0 0], [real(I123) real(I123)], [0 imag(I123)], [0 real(I123)], [0 imag(I123)])
xlabel('Real'),ylabel('Imag.')
title('DIAG. FASORIAL I123')