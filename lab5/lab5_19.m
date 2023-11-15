clear all
close all
clc

N = 100;
M=4
f=0.5
T=1/f
t = linspace(0, (N/M)*2*pi, N); 
x = sin(t); 
plot(t, x, 'o');
hold on
plot(t, sin(t))
T=1
x_interp=0
t_i= linspace(0, (N/M)*2*pi, N*8)
for n=1:N
    x_interp= x_interp + x(n)*sinc(pi/T*(t_i-n*T));
end


hold on
plot(t, x_interp, 'o-')