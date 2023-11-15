% interp_obiekt3D.m
clear all; close all;
clc
load('babia_gora.dat'); X=babia_gora;

figure; grid; plot3( X(:,1), X(:,2), X(:,3), 'b.' ); pause
x = X(:,1); y = X(:,2); z = X(:,3); % pobranie x,y,z
xvar = min(x) : (max(x)-min(x))/200 : max(x); % zmiennosc x
yvar = min(y) : (max(y)-min(y))/200 : max(y); % zmiennosc y

[Xi,Yi] = meshgrid( xvar, yvar); % siatka interpolacji xi, yi
out1 = griddata( x, y, z, Xi,Yi, 'cubic' ); % interp: nearest, linear, spline, cubic
out2 = griddata( x, y, z, Xi,Yi, 'nearest' );  
out3 = griddata( x, y, z, Xi,Yi, 'linear' ); 
out4 = griddata( x, y, z, Xi,Yi, 'v4' ); 
subplot(221); mesh(out1); title("Cubic")
subplot(222); mesh(out2); title("Nearest")
subplot(223); surf(out3); title("Linear")
subplot(224); mesh(out4); title("Spline")


