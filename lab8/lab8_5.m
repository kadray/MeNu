% evd_qr.m
clear all; close all; clc;

A = [ 4 0.5; 0.5 1 ]; % analizowana macierz
A =[1e-10, 0, 1; 1, 1e-10, 1; 1, 1, 1e-10];
det(A)
[N,N]=size(A); % jej wymiary
x = ones(N,1); % inicjalizacja
[Q,R] = qr(A); % pierwsza dekompozycja QR
for i=1:100 % petla - start
[Q,R] = qr(R*Q); % kolejne iteracje
end % petla -stop
A1 = R*Q, % ostatni wynik
lambda = diag(A1), % elementy na przekatnej
ref = eig(A), % porownanie z Matlabem
A*ref
% Z ekranu komputera:
% A1 =
% 4.0811 -0.0000
% -0.0000 0.9189
% lambda =
% 4.0811
% 0.9189
% ref =
% 0.9189
% 4.0811