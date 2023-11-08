clear all
close all
clc
A = [ 1.0001  2.0001  3.0001; ...
      2.0002  4.0002  6.0002; ...
      1.0003  2.0003  3.0003]
A=A+0.01*rand(size(A))
det_A = det(A)
b = [ 5; 11; 2 ];
x1 = inv(A)*b;
xj=fITER(A, b)
err = max(abs(x1-xj))