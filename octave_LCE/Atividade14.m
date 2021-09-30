clear
clc

## CIRCUITO RL

%dados da questao
V = 20;
R = 220;
L = 35e-3;

%frequencias da questao
w = logspace(0,5,1000);
wc = R/L;
f = w/(2*pi);
fc = wc/(2*pi);

%equacoes deduzidas de entrada e saida da questao
Vr = (R)./(j*w*L+R)*V;
Vl = (j*w*L)./(j*w*L+R)*V;

%equacoes deduzidas de entrada e saida da questao em corte
Vrc = (R)./(j*wc*L+R)*V;
Vlc = (j*wc*L)./(j*wc*L+R)*V;

%plotando os resultados das equacoes
subplot(211),plot((f),abs(Vr),f,abs(Vl),fc,abs(Vlc),'+k');
xlabel('Frequencia [Hz]'), ylabel('|V_R| e |V_L| [V]')
legend('V_R','V_L','(F_c,V_c)');
subplot(212),plot((f),rad2deg(angle(Vr)),f,rad2deg(angle(Vl)),fc,rad2deg(angle(Vrc)),'+k',fc,rad2deg(angle(Vlc)),'+k');
xlabel('Frequência [Hz]'),ylabel('Fase de V_R e V_L [^o]')
legend('V_R','V_L','(F_c,angle(V_c))');

%salvando o grafico em JPG
saveas(gca, 'grafico_14.jpg', 'jpg')

%axis([0 10 0 100])
