clear all
close all
clc
% interp_lagrange.m
clear all; close all;;
x = [-3, -1, 1, 3]; y = [1, 1, 1, 1]; % zadane punkty = wezly
xi = [-3: 0.01 : 3]; % gdzie obliczyc nowe wartosci funkcji
[yi,a] = funTZ_lagrange(x,y,xi); % nasza funkcja interpolujaca
yii = polyval(a,xi); % oblicz wartosci wielomianu "a" w punktach "xi"
a, % obliczone wsp. wielomianu: aN,...,a1,a0
figure; plot(x,y,'ro',xi,yi,'b-',xi,yii,''); title('y=f(x)'); % rysunek
