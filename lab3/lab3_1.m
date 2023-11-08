clear all
close all
clc
u=[1;2;3];
v=[4;5;6];

A=[1,2,3;4,5,6;7,8,9];
B=eye(3)
a=(u')*v
b=u*(v.')
c=A+B
d=A*B
e=(u.')*A
f=A*u
g=10*A
h=(A+B)*u

i=inv(A)
j=det(A)
k=rank(A)