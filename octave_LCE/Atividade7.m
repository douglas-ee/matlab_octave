pot = 2206.5;

fp50 = 0.68;
fp75 = 0.77;
fp100 = 0.83;

P50 = (pot*(50/100))/(77/100);
P75 = (pot*(75/100))/(81/100);
P100 = (pot*(100/100))/(81.5/100);

%S50 = P50/fp50;
%S75 = P75/fp75;
%S100 = P100/fp100;

%Q50 = sqrt(S50^2 - P50^2);
%Q75 = sqrt(S75^2 - P75^2);
%Q100 = sqrt(S100^2 - P100^2);

S50 = P50*fp50 + i*P50*sin(acos(fp50))
S75 = P75*fp75 + i*P75*sin(acos(fp75))
S100 = P100*fp100 + i*P100*sin(acos(fp100))

I50 = conj(S50/220);
I75 = conj(S75/220);
I100 = conj(S100/220);

x = [0 real(I50)];
y = [0 imag(I50)];

subplot(3,1,1)
plot([0 22],[0 0],x,y)
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial 50%')

x = [0 real(I75)];
y = [0 imag(I75)];
subplot(3,1,2)
plot([0 22],[0 0],x,y)
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial 75%')

x = [0 real(I100)];
y = [0 imag(I100)];
subplot(3,1,3)
plot([0 22],[0 0],x,y)
xlabel('Real'),ylabel('Imaginário')
title('Diagrama Fasorial 100%')