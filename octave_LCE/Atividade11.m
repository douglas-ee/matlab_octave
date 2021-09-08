clear
clc

## CIRCUITOS PARALELO

% cdados do circuitos
% corrente
I = 20e-3;
% resistencia
R = 150;
% capacitancia
C = 220e-9;
% amostragem
w = logspace(0, 5, 1000);

w_c = 1/(R*C);

% equacoes necessarias
Ir = (1./(j*w*C))./((1./(j*w*C)) + R)*I;
Ic = (R)./((1./(j*w*C)) + R)*I;

Irc = (1./(j*w_c*C))./((1./(j*w_c*C)) + R)*I;
Icc = (R)./((1./(j*w_c*C)) + R)*I;

% plotando o resultado
figure(1)
subplot(211), plot(w/(2*pi), abs(Ir), w/(2*pi), abs(Ic), w/(2*pi), abs(Ir+Ic), w_c/(2*pi), abs(Irc), 'o-', w_c/(2*pi), abs(Icc), 'om')
xlabel('Frequencia [Hz]'), ylabel('|Ir| e |Ic| (A)')
subplot(212), plot(w/(2*pi), angle(Ir)*180/pi, w/(2*pi), angle(Ic)*180/pi, w/(2*pi), angle(Ir+Ic)*180/pi, w_c/(2*pi), angle(Irc)*180/pi,'o-', w_c/(2*pi), angle(Icc)*180/pi,'om')
xlabel('Frequencia [Hz]'), ylabel('Ph(Ir) e Ph(Ic) (^o)')

%salvando o grafico em JPG
saveas(gca, 'grafico_11.jpg', 'jpg')