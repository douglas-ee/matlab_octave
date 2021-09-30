clear
clc

## CIRCUITO RL e RC BODE

%frequencias da questao
w = logspace(0,5,1000);
wc = 28000;
f = w/(2*pi);
fc = wc/(2*pi);
%dados da questao
R = 220;
############
V = 20;
L = R/wc
############
I = 20e-3;
C = 1/(wc*R)
%equacoes deduzidas de entrada e saida da questao
Vr = (R)./(j*w*L+R)*V;
Vl = (j*w*L)./(j*w*L+R)*V;
Ir = (1./(j*w*C))./((1./(j*w*C)) + R)*I;
Ic = (R)./((1./(j*w*C)) + R)*I;
%equacoes deduzidas de entrada e saida da questao em corte
Vrc = (R)./(j*wc*L+R)*V;
Vlc = (j*wc*L)./(j*wc*L+R)*V;
Irc = (1./(j*wc*C))./((1./(j*wc*C)) + R)*I;
Icc = (R)./((1./(j*wc*C)) + R)*I;
% plotando os valores
figure(1)
subplot(321), semilogx(f, 20*log10(abs(Vr)/V), fc, 20*log10(1/sqrt(2)),'+k');
xlabel('Frequencia [Hz]'), ylabel('20*log10(|Hw|  [db])')
subplot(322),semilogx(f, angle(Vr/V)*180/pi, fc, -45,'+k');
xlabel('Frequencia [Hz]'),ylabel('Fase Hw [^o]')

subplot(323), semilogx(f, 20*log10(abs(Ir)/I), fc, 20*log10(1/sqrt(2)),'+k');
xlabel('Frequencia [Hz]'), ylabel('20*log10(|Hw|  [db])')
subplot(324), semilogx(f, angle(Ir/I)*180/pi, fc, -45,'+k');
xlabel('Frequencia [Hz]'), ylabel('Fase Hw [^o]')

%salvando o grafico em JPG
saveas(gca, 'grafico_13.jpg', 'jpg')