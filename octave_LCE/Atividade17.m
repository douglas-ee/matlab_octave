syms s w wc eq1

C = 10e-9;
L = 1e-3;
R = 28;
RL = 10;
H(s) = simplify(R/(RL + (1/(s*C)) + s*L + R))
n = [34000 0]
d = [1 44000 1.0e11]
freqs(n, d)
H_max = 0.7675
H_db = -2.30

H_jw = subs(H(s), s, j*w)
H(w) = 34000*w/sqrt((-w^2 + 1.0e11)^2 + (44000*w)^2)
H(wc) = subs(H(w), w, wc)
eq1 = H(wc) == H_max/sqrt(2)
wc = solve(eq1,wc)
wc1 = 2.9471e5
wc2 = 3.3931e5
beta = wc2 - wc1
beta_hz = beta/(2*pi)
wc1_hz = wc1/(2*pi)
wc2_hz = wc2/(2*pi)
wc2_hz - wc1_hz