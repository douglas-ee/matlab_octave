clear all
clc

amostras = input('Digite aqui o numero de amostras: ')

%exemplificando como figura 1
figure(1);
%x variando de -pi a pi em 21 amostras
x = linspace(-pi, pi, amostras);
%definindo quem eh y
y = sin(x);
%plitando os valores
plot(x, y, 'm:o', x, cos(x), 'k-x');
%definindo o titulo
title('Sin e Cos')
%definindo a legenda do plot 
legend('Sin(x)', 'Cos(x)')
%definindo o axes
xlabel('Axes des x')
ylabel('Axes des y')

%salvando o grafico em PDF ou JPG
saveas(gca, 'myPlot_graphics.pdf', 'pdf')
saveas(gca, 'myPlot_graphics.jpg', 'jpg')
