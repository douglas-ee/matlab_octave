clear all

%imprimindo V em diferentes formatos
V1 = 50*exp(j*deg2rad(36.87))
V2 = 81.65/sqrt(2)*exp(j*pi/3)
V3 = -1.41 + j*18.75
V4 = 81.65/sqrt(2)*exp(j*angle(V1+V3))

%somando as tensoes
Veq = V1 + V2 + V3 + V4

%abs = modulo da variavel
abs(Veq)

%fornece o angulo de fase (em radianos) para números complexos
angle(Veq)

%converte radianos para o equivalente em graus
rad2deg(angle(Veq))