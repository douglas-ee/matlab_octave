clc, clear all, close all

C = 10e-9; % [Capacitor {F}]
L = 1e-3;  % [Indutor {H}]
RL = 10;   % [Resistencia {R}]
R = 28;    % [Resistencia {R}]

wo = 1/sqrt(L*C);          % [Frequencia Angular em ressonancia {rad/s}]
p1 = floor(log10(wo))-1;   % [Potencia 1 {W}]
p2 = ceil(log10(wo))+1;    % [Potencia 2 {W}]
w = logspace(p1,p2,10000); % [Frequencia Angular {rad/s}]
f = w/2/pi;                % [Frequencia {Hz}]

Hw = R ./(R+RL + j*w*L + 1 ./(j*w*C));   % [F. Transferencia]
Hw_r = R ./(R + j*w*L + 1 ./(j*w*C));    % [F. Transferencia - RL = 0]

% [b]
Hmax_db = max(20*log10(abs(Hw)));        % [decibel max da F. Transferencia]

% [c]
B = (R/L)/2/pi;

% [d]
w1 = -R/(2*L) + sqrt( (R/(2*L))^2 + 1/(L*C));   % [Frequencia Angular 1 {rad/s}]
f1 = w1/2/pi    % [Frequencia 1 {Hz}]
Hw1 = R ./ (R+RL + j*w1*L + 1 ./(j*w1*C));      % [F. Transferencia]
Hw1_r = R ./ (R + j*w1*L + 1 ./(j*w1*C));       % [F. Transferencia - RL = 0]
Hw1_db = 20*log10(abs(Hw1));                    % [decibel da F. Transferencia 1]
Hw1_db_r = 20*log10(abs(Hw1_r));                % [decibel da F. Transferencia 1 - RL = 0]

% [e]
w2 = R/(2*L) + sqrt( (R/(2*L))^2 + 1/(L*C));    % [Frequencia Angular 2 {rad/s}]
f2 = w2/2/pi;   % [Frequencia 2 {Hz}]
Hw2 = R ./ (R+RL + j*w2*L + 1 ./(j*w2*C));      % [F. Transferencia]
Hw2_r = R ./ (R + j*w2*L + 1 ./(j*w2*C));       % [F. Transferencia - RL = 0]
Hw2_db = 20*log10(abs(Hw2));                    % [decibel da F. Transferencia 2]
Hw2_db_r = 20*log10(abs(Hw2_r));                % [decibel da F. Transferencia 2 - RL = 0]

% plotando os diagramas
figure (1)
subplot(211),semilogx(f, 20*log10(abs(Hw)), f, 20*log10(abs(Hw_r)), f1, 20*log10(abs(Hw1)),'or', f2, 20*log10(abs(Hw2)),'or', f1, 20*log10(abs(Hw1_r)),'x', f2, 20*log10(abs(Hw2_r)),'x')
legend('RL = 10','RL = 0','f_1','f_2','f_1_r','f_2_r')
xlabel('Frequencia - [Hz]'), ylabel('Modulo - [H]')
subplot(212),semilogx(f, angle(Hw)*(180/pi), f, angle(Hw_r)*(180/pi), f1, angle(Hw1)*(180/pi),'or', f2, angle(Hw2)*(180/pi),'or', f1, angle(Hw1_r)*(180/pi),'x', f2, angle(Hw2_r)*(180/pi),'x')
xlabel('Frequencia - [Hz]') , ylabel('Fase - [H] (^o)')

%salvando o grafico em JPG
saveas(gca, 'grafico_18.jpg', 'jpg')
