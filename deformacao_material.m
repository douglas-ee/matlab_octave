Y1 = 0:10:100
X1 = 0:0.1:1

Y1 = tand(30)*X1

Y2 = 0:15:150
X2 = 0:0.1:1

Y2 = tand(60)*X2

plot(X1,Y1*100,X2,Y2*100)
axis([0 1 0 150])
title('Rigidez dos materiais')
xlabel('Deformação')
ylabel('Tensão')