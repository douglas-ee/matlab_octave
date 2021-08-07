clear

fp01 = 0.6;
s01 = 5000*fp01 + j*5000*sin(acos(fp01));
fp02 = 0.5;
s02 = 15000*fp02 + j*15000*sin(acos(fp02));
fp03 = 0.9;
s03 = 10000*fp03 - j*10000*sin(acos(fp03));

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

I123 = conj(s123/220);
I12 = conj(s12/220);
I13 = conj(s13/220);
I23 = conj(s123/220);

i123 = abs(I123)
i12 = abs(I12)
i13 = abs(I13)
i23 = abs(I23)

x=[0 real(fp123)];
y=[0 real(i123)];
subplot(2,2,1)
plot([0 220], [0 0], x, y)
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S123')

x=[0 fp12];
y=[0 i12];
subplot(2,2,2)
plot([0 220], [0 0], x, y)
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S12')

x=[0 real(fp13)];
y=[0 imag(i13)];
subplot(2,2,3)
plot([0 220], [0 0], x, y)
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S13')

x=[0 real(fp23)];
y=[0 imag(i23)];
subplot(2,2,4)
plot([0 220], [0 0], x, y)
xlabel('REAL'), ylabel('IMAG')
title('DIAG. FASORIAL S23')