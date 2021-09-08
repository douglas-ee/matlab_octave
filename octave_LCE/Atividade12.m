## CIRCUITOS SERIE
clc
V = 20;
R = 220;
L = 35e-3;
w = logspace(0,5,1000);
wc = R/L;
fc = wc/(2*pi)

Vr = (R)./(j*w*L+R)*V;
Vl = (j*w*L)./(j*w*L+R)*V;

Vrc = (R)./(j*wc*L+R)*V;
Vlc = (j*wc*L)./(j*wc*L+R)*V;

subplot(211),plot(w/(2*pi),abs(Vr),w/(2*pi),abs(Vl),wc/(2*pi),abs(Vlc),'o');
xlabel('Frequencia [Hz]'), ylabel('|VR| e |VL| [V]')
subplot(212),plot(w/(2*pi),rad2deg(angle(Vr)),w/(2*pi),rad2deg(angle(Vl)),wc/(2*pi),rad2deg(angle(Vrc)),'o',wc/(2*pi),rad2deg(angle(Vlc)),'o');
xlabel('Frequencia [Hz]'),ylabel('Fase de VR e VL [^o]')

%salvando o grafico em JPG
saveas(gca, 'grafico_11.jpg', 'jpg')