clear all
close all
clc
syms x;
f=(1+x^2)^-1;
%f1=1/(1+x^2);
display(taylor(f))
%f1=1/(1+x^2) <- z obliczeń na kartce
f1=matlabFunction(pade(f,"Order", [2, 2]));
f=matlabFunction(f);

xv=-10:0.1:10;
y1=f(xv);
y2=f1(xv);
plot(xv, y2, 'r-', LineWidth=5); 
hold on
plot(xv, y1, 'g--', LineWidth=3); legend("original");
legend("aproximated", "original");