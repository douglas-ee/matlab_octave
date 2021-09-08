## CIRCUITOS PARALELO

% Ir(w) e Ic(w)

%I = Ir + Ic
%Ir = (1/(j*w*C))/((R + 1)/(j*w*C))
%V = R*Ir = (1/(j*w*C))*Ic
%Ir = (1/(j*w*C))/(R*Ic)
%Ic = R/(1/(j*w*C))Ir
%I = Ir + Ic
%I = Ir + R/(1/(j*w*C))Ir
%(1/(j*w*C))*I = (1/(j*w*C))*Ir + R*Ir
%((1/(j*w*C)) + R)*Ir = (1/(j*w*C))*I
%1/(wC) = R
%1 = wRC
%w = 1/(RC)


I = 20e-3;
R = 150;
C = 220e-9;
w = logspace(0, 5, 1000);
w_c = 1/(R*C);

Ir = (1./(j*w*C))./((1./(j*w*C)) + R)*I;
Ic = (R)./((1./(j*w*C)) + R)*I;

Irc = (1./(j*w_c*C))./((1./(j*w_c*C)) + R)*I;
Icc = (R)./((1./(j*w_c*C)) + R)*I;



figure(1)
subplot(211), plot(w/(2*pi), abs(Ir), w/(2*pi), abs(Ic), w/(2*pi), abs(Ir+Ic), w_c/(2*pi), abs(Irc), 'o-', w_c/(2*pi), abs(Icc), 'om')
xlabel('Frequencia [Hz]'), ylabel('|Ir| e |Ic| (A)')
subplot(212), plot(w/(2*pi), angle(Ir)*180/pi, w/(2*pi), angle(Ic)*180/pi, w/(2*pi), angle(Ir+Ic)*180/pi, w_c/(2*pi), angle(Irc)*180/pi,'o-', w_c/(2*pi), angle(Icc)*180/pi,'om')
xlabel('Frequencia [Hz]'), ylabel('Ph(Ir) e Ph(Ic) (^o)')

