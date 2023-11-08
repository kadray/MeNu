clear all
close all
clc

P=10
x=10^P
f1=sqrt(x)*(sqrt(x+1)-sqrt(x));
f2=sqrt(x)/(sqrt(x+1)+sqrt(x));

for P=1:15
    x=10^P;
   format long e
   f1=sqrt(x)*(sqrt(x+1)-sqrt(x));
   f2=sqrt(x)/(sqrt(x+1)+sqrt(x));
   fprintf('At x = %i, f1(x) = %f, f2(x) = %f \n', x, f1, f2)
end
format long e
x=10^10;
a=sqrt(x+1)
b=sqrt(x)
display('diff=')
display(a-b)
display('sum=')
display(a+b)