clear
clc

## CIRCUITOS SERIE
I = 20e-3;
V = 20;
R = 220;
w = logspace(0,5,1000);
wc = 28000;

L = R/wc
C = 1/(wc*R)

% wc = R/L;
%w_c = 1/(R*C);

fc = wc/(2*pi)
% equacoes necessarias
Vr = (R)./(j*w*L+R)*V;
Vl = (j*w*L)./(j*w*L+R)*V;

Ir = (1./(j*w*C))./((1./(j*w*C)) + R)*I;
Ic = (R)./((1./(j*w*C)) + R)*I;

% plotando os valores

figure(1)
subplot(321), semilogx(w/(2*pi), 20*log10(abs(Vr)/V), wc/(2*pi), 20*log10(1/sqrt(2)),'o');
xlabel('Frequencia [Hz]'), ylabel('20*log10(|Hw|  [db])')
subplot(322),semilogx(w/(2*pi), angle(Vr/20)*180/pi, wc/(2*pi), -45,'ok');
xlabel('Frequencia [Hz]'),ylabel('Fase Hw [^o]')
subplot(323), semilogx(w/(2*pi), 20*log10(abs(Ir)/I), wc/(2*pi), 20*log10(1/sqrt(2)),'x');
xlabel('Frequencia [Hz]'), ylabel('20*log10(|Hw|  [db])')
subplot(324), semilogx(w/(2*pi), angle(Ir/20)*180/pi, wc/(2*pi), -45,'xk');
xlabel('Frequencia [Hz]'), ylabel('Fase Hw [^o]')

%salvando o grafico em JPG
saveas(gca, 'grafico_13.jpg', 'jpg')