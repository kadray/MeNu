clear all
close all
clc
A = [ 1 2; 3 4 ]
b = [ 5; 11 ];
x1 = inv(A)*b, % x=A^(-1)*b
x2 = A\b, % optymalne rozwiazywanie rown. Ax=b
% x3 = pinv(A)*b, % x = inv( A’*A ) * A’ * b , sprawdzisz?
bhat = A*x1, % sprawdzenie
err = max(abs(x1-x2)), % bl


ans3=inv2(A)
ans3_2=inv(A)

M=[1, 22, 3 ;4, 56, 6; 27, 8, 9]
ans3=inv3(M)
ans3_2=inv(M)