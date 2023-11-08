clear all
close all
clc
A=[2, 3, 6; 7, 4, 8; 0, 2, 8]
b=[3; 6; 3]
[L, U]=lu(A)

y=L\b
x=U\y

result=A*x