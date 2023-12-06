clear all; close all; clc;
if(1) A = [ 4 0.5; 0.5 1 ]; % wybor/definicja symetrycznej macierzy kwadratowej
else A = magic(4);
end
[ N, N ] = size(A); % wymiar
x = ones(N,1); % inicjalizacja
for i = 1:20 % poczatek petli
y = A*x; % pierwsze mnozenie
[ymax,imax] = max(abs(y)); % najwieksza wartosc abs() i jej indeks
x = y/ymax; % wektor wlasny
lambda = ymax; % wartosc wlasna
end % koniec petli
x, lambda, % pokaz wynik: max wartosc wlasna i wektor wlasny
[ V, D ] = eig(A) % porownaj z funkcja Matlaba
% Na ekranie monitora otrzymujemy:
% x =[1.0000 0.1623]
% lambda = 4.0811
% V = [0.1602 -0.9871
% -0.9871 -0.1602]
% D = [0.9189 0
%0 4.0811]