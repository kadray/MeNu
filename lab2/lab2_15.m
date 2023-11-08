clear all
close all
clc
fi=0
f0=20
fpr=192000
n=1:19200

w=2*pi*(f0/fpr);
y=sin(w*n+fi);
plot(y)
format long
a=2*cos(w)*2^14