clear

%potencia aderida
pot = 2206.5;
%fatores de potencia por rendimento% do motor
fp50 = 0.68;
fp75 = 0.77;
fp100 = 0.83;
%potencia ativa P por rendimento% do motor
P50 = (pot*(50/100))/(77/100);
P75 = (pot*(75/100))/(81/100);
P100 = (pot*(100/100))/(81.5/100);
%carga S = P + iQ por rendimento% do motor
S50 = P50*fp50 + i*P50*sin(acos(fp50))
S75 = P75*fp75 + i*P75*sin(acos(fp75))
S100 = P100*fp100 + i*P100*sin(acos(fp100))
%corrente usada por rendimento% do motor
I50 = conj(S50/220);
I75 = conj(S75/220);
I100 = conj(S100/220);

%plotando graficos do diagrama fasorial S
subplot(3,3,1)
plot([0 real(S50)],[0 imag(S50)])
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial S50%')

subplot(3,3,2)
plot([0 real(S75)],[0 imag(S75)])
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial S75%')

subplot(3,3,3)
plot([0 real(S100)],[0 imag(S100)])
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial S100%')

%plotando graficos do diagrama fasorial I
subplot(3,3,4)
plot([0 real(I50)],[0 imag(I50)])
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial I50%')

subplot(3,3,5)
plot([0 real(I75)],[0 imag(I75)])
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial I75%')

subplot(3,3,6)
plot([0 real(I100)],[0 imag(I100)])
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial I100%')