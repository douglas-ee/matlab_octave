clear
clc

## CIRCUITOS SERIE

% dados do circuitos
% tensao
V = 20;
% resistencia
R = 220;
% indutor
L = 35e-3;
% amostragem
w = logspace(0,5,1000);
wc = R/L;
fc = wc/(2*pi)

% equacoes necessarias
Vr = (R)./(j*w*L+R)*V;
Vl = (j*w*L)./(j*w*L+R)*V;

Vrc = (R)./(j*wc*L+R)*V;
Vlc = (j*wc*L)./(j*wc*L+R)*V;

% plotando os valores
subplot(211),plot(w/(2*pi),abs(Vr),w/(2*pi),abs(Vl),wc/(2*pi),abs(Vlc),'o');
xlabel('Frequencia [Hz]'), ylabel('|VR| e |VL| [V]')
subplot(212),plot(w/(2*pi),rad2deg(angle(Vr)),w/(2*pi),rad2deg(angle(Vl)),wc/(2*pi),rad2deg(angle(Vrc)),'o',wc/(2*pi),rad2deg(angle(Vlc)),'o');
xlabel('Frequencia [Hz]'),ylabel('Fase de VR e VL [^o]')

%salvando o grafico em JPG
saveas(gca, 'grafico_12.jpg', 'jpg')