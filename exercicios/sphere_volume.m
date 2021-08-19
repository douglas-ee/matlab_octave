clear all
clc

%raio estipulado
radius = input('digite o raio da sphera: ');
%computando o volume
volume = (4/3)*pi*radius^3;
%imprimindo os valores
disp(['com raio de: ' num2str(radius) ', teremos um volume de: ' num2str(volume)])