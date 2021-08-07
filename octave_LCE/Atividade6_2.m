#Combinações possívies para as Cargas
# 000, 001, 010, 011
# 100, 101, 110, 111

fp01 = 0.6;
S01 = 5000*fp01 + j*5000*sin(acos(fp01));
% S01 = P01 + jQ01

fp02 = 0.5; 
S02 = 15000*fp02 + j*15000*sin(acos(fp02));

fp03 = 0.9;
S03 = 10000*fp03 - j*10000*sin(acos(fp03));

#Combinação
S13 = S01 + S03;

Q13 = imag(S13);
P13 = real(S13);

#Compensação do fator de potência (Banco de capacitores)
#fp_ = 0;
#absS000_ = real(S000) / fp_;#fp = P /|S|
#Q000_ = sqrt( absS000_^2 - real(S000)^2);#S^2 = P^2 + Q^2

#Qc = imag(S000) - Q000_;#Q = Q_ + Qc -> Qc = Q - Q_

#Em paralelo ( PDF AULA 4)
#Qc = |v|^2/Xc, Assim

Xc = (220)^2/Q13;#Xc = 1/j(wC)
w = 2*pi*60;

C = abs(1/(j*w*Xc))

R = 220^2/P13

#Serie
#Calcular usando a impedância 



 