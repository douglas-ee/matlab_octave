clear all
clc

%imprimindo V em diferentes formatos
V1 = 50*exp(j*deg2rad(36.87))
V2 = 81.65/sqrt(2)*exp(j*pi/3)
V3 = -1.41 + j*18.75
V4 = 81.65/sqrt(2)*exp(j*angle(V1+V3))

%somando as tensoes
Veq = V1 + V2 + V3 + V4;

%abs = modulo da variavel
abs_Veq = abs(Veq);

%fornece o angulo de fase (em radianos) para números complexos
angle_Veq = angle(Veq);

%converte radianos para o equivalente em graus
rad_Veq = rad2deg(angle(Veq));

figure(1)
subplot(2,2,1)
plot([0, Veq], [0, V1], [0, V2], [0,V3], [0, V4])
title('Equacoes e valores com V')

subplot(2,2,2)
plot([0, abs_Veq])
title('Valor absoluto de V')

subplot(2,2,3)
plot([0, angle_Veq])
title('Angulo que V forma')

subplot(2,2,4)
plot([0, rad_Veq])
title('Angulo em rad que V forma')

%salvando o grafico em JPG
saveas(gca, 'grafico_1.jpg', 'jpg')