%S01 = 5kVA    fp01 = 0.6 (atrasado)
%S02 = 15kVA   fp02 = 0.5 (atrasado)
%S03 = 10kVA   fp03 = 0.9 (adiantado)
%V = 220v      60Hz

fp01 = 0.6;
P01 = 5000;
S01 = P01*fp01 + j*P01*sin(acos(fp01));

fp02 = 0.5;
P02 = 15000;
S02 = P02*fp02 + j*P02*sin(acos(fp02));

fp03 = 0.9;
P03 = 10000;
S03 = P03*fp03 - j*P03*sin(acos(fp03));

S123 = S01 + S02 + S03

S12 = S01 + S02

S13 = S01 + S03

S23 = S02 + S03

fp12_ = 0.9;
absS12_ = real(S12)/fp12_;
Q12_ = sqrt(absS12_^2 - real(S12)^2);

Qc = imag(S12) - Q12_;

%Qc = abs(V)^2/Xc

Xc = 220^2/Qc; %Xc = 1/(wC)
w = 2*pi*60

C = 1/(w*Xc)

plot ([0 real(S12) real(S12) 0],[0 0 imag(S12) 0],[0 real(S12) real(S12) 0],[0 0 Q12_ 0])
xlabel('Potência Ativa (W)'),ylabel('Potência Reativa (VAr)')