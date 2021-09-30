clear
clc

## CIRCUITO RC

%dados da questao
I = 20e-3;
R = 220;
C = 220e-9;

%frequencias da questao
w = logspace(0,5,1000);
wc = 1/(R*C);
f = w/(2*pi);
fc = wc/(2*pi);

%equacoes deduzidas de entrada e saida da questao
Ir = (1./(j*w*C))./((1./(j*w*C)) + R)*I;
Ic = (R)./((1./(j*w*C)) + R)*I;

%equacoes deduzidas de entrada e saida da questao em corte
Irc = (1./(j*wc*C))./((1./(j*wc*C)) + R)*I;
Icc = (R)./((1./(j*wc*C)) + R)*I;

%plotando os resultados das equacoes
subplot(211),plot((f),abs(Ir),f,abs(Ic),fc,abs(Icc),'+k');
xlabel('Frequencia [Hz]'), ylabel('|I_R| e |I_C| [I]')
legend('I_R','I_C','(F_c,I_c)');
subplot(212),plot((f),rad2deg(angle(Ir)),f,rad2deg(angle(Ic)),fc,rad2deg(angle(Irc)),'+k',fc,rad2deg(angle(Icc)),'+k');
xlabel('Frequência [Hz]'),ylabel('Fase de I_R e I_C [^o]')
legend('I_R','I_C','(F_c,angle(I_c))');

%salvando o grafico em JPG
saveas(gca, 'grafico_15.jpg', 'jpg')