close all
clear all
clc

a=num2bitstr( single( (1+1/4)*2^(-124) ));
b=num2bitstr( single( -5.877472*10^(-38) ));
if a==b
    display('equal')
else
    display('not equal')
end
c=299792458
x_s=num2bitstr( single(c));
x_d=num2bitstr( double(c));
sign=0
exponent=0
fraction=1
for i=1:length(x_s)
    if i==1 && x_s(1)=='1'
        sign=-1;
    else
        sign=1;
    end
    if i>1 && i<=9 && x_s(i)=='1'
       exponent = exponent + 2^(9-i);
    end
    if i > 9  && x_s(i) == '1'
        fraction = fraction + 2^(9-i);
    end
end
result_s=sign*(2^(exponent-127))*fraction

exponent_d=0;
fraction_d=1;
for i=1:length(x_d)
    if i==1 && x_d(1)=='1'
        sign=-1;
    else
        sign=1;
    end
    if i>1 && i<=12 && x_d(i)=='1'
       exponent_d = exponent_d + 2^(12-i);
    end
    if i > 12 && x_d(i) == '1'
        fraction_d = fraction_d + 2^(12-i);
    end
end
result_d=sign*2^(exponent_d-1023)*fraction_d