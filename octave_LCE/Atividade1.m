V1 = 50*exp(j*deg2rad(36.87));
V2 = 81.65/sqrt(2)*exp(j*pi/3);
V3 = -1.41 + j*18.75;
Veq = V1 + V2 + V3;
V2_ = 81.65/sqrt(2)*exp(j*angle(V1+V3));
Veq_ = V1 + V2_ + V3;
abs(Veq_);
angle(Veq_);
rad2deg(angle(Veq_));
