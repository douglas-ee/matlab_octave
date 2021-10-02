C = 10e-9
L = 1e-3
R = 34
RL = 10

syms s;

w = logspace(0,5,1000);
s = j*w;

H(s) = simplify(R/(RL + (1/(s*C)) + s*L + R));
n = [34000 0];
d = [1 44000 1.0e11];
freqs(n, d);

subplot(211),plot(freqs)