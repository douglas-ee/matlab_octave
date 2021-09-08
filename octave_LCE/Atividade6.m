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

%nomeando o chaveamentomento para compensacao
################################################################################
CH = s123;
################################################################################

%potencia reativa da chave selecionada
Q = imag(CH); %Q = abs(V)^2/X
%formulas usadas
X = V^2/Q; %Xc = 1/(wC); Xl = wL
w = 2*pi*f; %W = 2pif
%escolha do tipo de compensacao se sera C ou L
if(Q>0)
  L = X/w
else
  C = (1/(w*X))*(-1)
endif
R = V^2/real(CH)