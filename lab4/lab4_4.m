clear all
close all
clc
A = [ 1.0001  2.0001  3.0001; ...
      2.0002  4.0002  6.0002; ...
      1.0003  2.0003  3.0003]
A=A+0.01*rand(size(A))
det_A = det(A)
b = [ 5; 11; 2 ];

x1 = inv(A)*b; % x=A^(-1)*b
x2 = A\b; % optymalne rozwiazywanie rown. Ax=b
x3=pinv(A)*b;

b1 = A*x1, % sprawdzenie
b2 = A*x2
b3 = A*x3

err1 = max(abs(x1-x2))
err2 = max(abs(x3-x2))