clear all
close all
clc

[h, fpr]=audioread("Hippo.wav", [1,16224]);
[c, fpr]=audioread("Canary.wav", [1,16224]);
sum=h+c;
N=length(sum);
n=0:N-1; k=0:N-1;
A = sqrt(2/N)*cos( pi/N *(k'*n));
sum_spectrum=A*sum;
h_spectrum=A*h;
c_spectrum=A*c;

%soundsc(sum, fpr)

%METODA 1
% c_back_spectrum=sum_spectrum-h_spectrum
% c_back=(A^-1)*c_back_spectrum
% soundsc(c_back, fpr)

%METODA 2

y=sum_spectrum;
plot(y); title('y')
y(1:6000,1)=zeros(6000,1);
figure; plot(y); title('y cut');
c_back=A'*y;

soundsc(c_back, fpr)
figure; plot(sum); title('sum');
figure; plot(c); title('c');
figure; plot(c_back); title('c back');
