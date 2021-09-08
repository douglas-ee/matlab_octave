syms I1 I2

eq1 = 5*I1 + (j*6)I1 + (-j*1)*I2 + 2(I1 - I2) == 18*sqrt(3) + j*18
eq2 = (-j*4 + 4)I2 + 2(I2 - I1) + (j*3)*I2 + (-j*1)*I1 == 0

[A b] = equationsToMatrix([eq1 eq2], I1, I2)
x = linsolve(A, b)