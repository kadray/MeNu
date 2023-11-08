clear all
close all
clc
A=[1, 2, 3; 2, 8, 10; 3, 10 ,22]
[L, LT]=myChol(A)
LT = L'
A_back=L*L'