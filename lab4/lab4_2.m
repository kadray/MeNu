clear all
close all
clc
%macierz symetryczna, dodatnio określona
A= [4, -1, 2; -1, 5, 3; 2, 3, 6] 
[L, LT]=myChol(A)
A_back=L*L'