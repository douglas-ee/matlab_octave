fp01 = 0.6;
s01 = 5000*fp01 + j*5000*sin(acos(fp01));
fp01 = 0.5;
s01 = 15000*fp01 + j*15000*sin(acos(fp02));
fp01 = 0.9;
s01 = 10000*fp01 + j*10000*sin(acos(fp03));

s123 = s01 + s02 + s03
abs123 = abs(s123)
fp123 = real(s123)/abs(s123)

s12 = s01 + s02
abs12 = abs(s12)
fp12 = real(s12)/abs(s12)

s13 = s01 + s03
abs13 = abs(s13)
fp13 = real(s13)/abs(s13)

s23 = s02 + s03
abs23 = abs(s23)
fp23 = real(s23)/abs(s23)

subplot(2,2,1)
plot([0 real(s123)],[0 imag(s123)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S123')

subplot(2,2,2)
plot([0 real(s12)],[0 imag(s12)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S12')

subplot(2,2,3)
plot([0 real(s13)],[0 imag(s13)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S13')

subplot(2,2,4)
plot([0 real(s23)],[0 imag(s23)])
xlabel('Real'),ylabel('Imag.')
title('Diag. Fasorial S23')