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

%nomeando o chaveamentomento para compensacao
CH = s13
%potencia reativa da chave selecionada
Q = imag(CH); %Q = abs(V)^2/X
%formulas usadas
X = 220^2/Q; %Xc = 1/(wC); Xl = wL
w = 2*pi*60; %W = 2pif
%escolha do tipo de compensacao se sera C ou L
if(Q>0)
  L = X/w
else
  C = (1/(w*X))*(-1)
endif
R = 220^2/real(CH)