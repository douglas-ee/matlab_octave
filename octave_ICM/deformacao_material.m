clear
clc

%dados de tensao
X1 = 0:0.1:1
Y1 = tand(30)*X1

X2 = 0:0.1:1
Y2 = tand(60)*X2

W1 = Y1*100
W2 = Y2*100

%imprimindo os dados da tabela/grafico
plot(X1,W1,X2,W2)
title('RIGIDEZ DO MATERIAL')
legend('X - Deformacao','Y - Tensao')
xlabel('DEFORMACAO DO MATERIAL')
ylabel('TENSAO DO MATERIAL')

%salvando o grafico em JPG e PDF
saveas(gca, 'grafico_deformacao_material.jpg', 'jpg')
saveas(gca, 'grafico_deformacao_material.pdf', 'pdf')