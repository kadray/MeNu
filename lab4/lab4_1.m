clear all
close all 
clc

A = [4 5 2 7;
     5 9 6 0;
     4 6 2 2;
     8 9 6 2]
[L, U]=myLU(A)

A_back_1=L*U

[lower, upper]=lu(A)

A_back_2=lower*upper