clear all
close all
clc
a=1;
b=434535345345;
c=4;
% ax^2+bx=c
delta=sqrt(b^2-4*a*c);

x1=(-b-delta)/2*a
x2=(-b+delta)/2*a
bigger=max(abs(x1), abs(x2))
x_1=bigger
x_2=(2*c)/(-b-delta)