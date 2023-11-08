clear all
close all 
clc

A=[4, 5, 6; 10, 11, 12; 1, 2,3]
[L, U]=myLU(A)

A_back_1=L*U

[lower, upper]=lu(A)

A_back_2=lower*upper