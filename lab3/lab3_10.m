% matrix_obiekt3D.m
clear all 
close all
clc
X=load('babia_gora.dat');
size(X);
figure; grid; plot3( X(:,1), X(:,2), X(:,3), '-' );

% for k=1:180
% 
%     ax = -k/180*pi; ay = -k/180*pi; az = k/180*pi;
% 
%     Rx = [ 1, 0, 0; 0, cos(ax), -sin(ax); 0, sin(ax), cos(ax) ]; % macierz rotacji wzg. x
%     Ry = [ cos(ay), 0, -sin(ay); 0, 1, 0; sin(ay), 0, cos(ay) ]; % macierz rotacji wzg. y
%     Rz = [ cos(az), -sin(az), 0; sin(az), cos(az), 0; 0, 0, 1 ]; % macierz rotacji wzg. z
%     XR = Rz  * X'; 
%     plot3( XR(1,:), XR(2,:), XR(3,:), '-' );
%     pause(0.05)
%     end
% pause;
ax = -45/180*pi; ay = -90/180*pi; az = 135/180*pi;

Rx = [ 1, 0, 0; 0, cos(ax), -sin(ax); 0, sin(ax), cos(ax) ];
Ry = [ cos(ay), 0, -sin(ay); 0, 1, 0; sin(ay), 0, cos(ay) ]; 
Rz = [ cos(az), -sin(az), 0; sin(az), cos(az), 0; 0, 0, 1 ];
XR = Rx*Ry*Rz * X', % 3 rotacje po kolei
    figure; grid; plot3( XR(1,:), XR(2,:), XR(3,:), '-' );