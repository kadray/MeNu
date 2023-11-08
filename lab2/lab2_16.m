clear all
close all
clc

syms a b c x;
f= (-b-sqrt(b^2-4*a*c))/2*a;
df_db=diff(f, b);
simplify(b*df_db/f)


a=0.5;
b=1+0.001*randn(1, 1000);
c=0.490:0.001:0.500;
c_index=11;
for k=1:1000
    delta=b(k)^2-4*a*c(c_index);
    cond_b(k)=b(k)/(sqrt(delta));
    x1=(-b-sqrt(delta))/2*a;

end
display("srednia x1: "+ mean(x1))
display("odchylenie x1: "'+ std(x1))
display("srednia cond_b: "+ mean(cond_b))
display("odcylenie cond_b: "+ std(cond_b))