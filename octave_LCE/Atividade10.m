E = 36*exp(j*30/100*pi);

rf = 1/2;

R1 = 5;
X1 = 6*rf;
R2 = 2;
X2 = 3*rf;
Xc = 4/rf;
R3 = 4;
X12 = 1*rf;

## E = R1*I1 + j*X1*I1 - j*X12*I2 + R2*(I1 - I2);
## 0 = -j*Xc*I2 + R3*I2 + R2*I2 + j*X2*I2 - R2*I1 - j*X12*I1;

## eq1 = 5*I1 + (j*6)I1 + (-j*1)*I2 + 2(I1 - I2) == 18*sqrt(3) + j*18
## eq2 = (-j*4 + 4)I2 + 2(I2 - I1) + (j*3)*I2 + (-j*1)*I1 == 0

B = [E; 0];
A = [(R1 + j*X1 + R2), -(j*X12 + R2);(-R2 - j*X12), (-j*Xc + R3 + R2 + j*X2)]
I = inv(A)*B;
I1 = I(1);
I2 = I(2,1);

SE = E*conj(I1) % = SR1+SX1+SR2+SXc+SR3+SX2
SR1 = (R1*I1)*conj(I1)
SX1 = (j*X1*I1 - j*X12*I2)*conj(I1)
SR2 = (R2*(I2 - I2))*conj((I1-I2))
SX2 = (j*X2*I2 - j*X12*I1)*conj(I2)
SXc = (-j*Xc*I2)*conj(I2)
SR3 = (R3*I2)*conj(I2)
