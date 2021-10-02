clc, clear all

C = 10e-9;
L = 1e-3;
RL = 10;
R = 28;

wo = 1/sqrt(L*C);
p1 = floor(log10(wo))-1;
p2 = ceil(log10(wo))+1;
w = logspace(p1,p2,5000);
f = w/2/pi;

Hw = R ./(R+RL + j*w*L + 1 ./(j*w*C));
Hw_x = R ./(R + j*w*L + 1 ./(j*w*C));

% [b]
Hmax_db = max(20*log10(abs(Hw)))

% [c]
B = (R/L)/2/pi

% [d]
w1 = -R/(2*L) + sqrt( (R/(2*L))^2 + 1/(L*C));
f1 = w1/2/pi
Hw1 = R ./ (R+RL + j*w1*L + 1 ./(j*w1*C));
Hw1_x = R ./ (R + j*w1*L + 1 ./(j*w1*C));

Hw1_db = 20*log10(abs(Hw1))

% [e]
w2 = R/(2*L) + sqrt( (R/(2*L))^2 + 1/(L*C));
f2 = w2/2/pi
Hw2 = R ./(R + RL + j*w2*L + 1./(j*w2*C));
Hw2_x = R ./(R + j*w2*L + 1./(j*w2*C));

Hw2_db = 20*log10(abs(Hw2))

figure (1)
subplot(211),semilogx(f,20*log10(abs(Hw)),f,20*log10(abs(Hw_x)),f1,20*log10(abs(Hw1)),'x', f2,20*log10(abs(Hw2)),'x')
##subplot(211),semilogx(f,20*log10(abs(Hw)),f,20*log10(abs(Hw01)),f1,20*log10(abs(Hw1)),'or',f2,20*log10(abs(Hw2)),'or')
lagend('RL = 10','RL=0','f_c_1','f_c_2')
xlabel('Frequência (Hz)'), ylabel('Módulo H')
subplot(212),semilogx(f ,angle(Hw)*(180/pi),f ,angle(Hw_x)*(180/pi),f1 ,angle(Hw1),'x',f2 ,angle(Hw2),'x')
xlabel('Frequência (Hz)'), ylabel('Fase de H (^o)')


%salvando o grafico em JPG
saveas(gca, 'grafico_16.jpg', 'jpg')