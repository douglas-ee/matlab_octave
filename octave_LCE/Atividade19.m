syms s w wc eq1

C = 10e-9;
L = 1e-3;
R = 34;
RL = 10;

H1(s) = simplify(R/(RL + (1/(s*C)) + s*L + R))
H2(s) = simplify(R/(0 + (1/(s*C)) + s*L + R))

H1 = tf([34000 0], [1 44000 1.0e11])

bode(H1)

grid on
hold on

H2 = tf([34000 0], [1 34000 1.0e11])

bode(H2)
