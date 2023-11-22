% approx_krata.m
close all; clear all;
% Generacja/wczyranie obrazka
N = 512; Nstep = 32;
[img, cmap] = imread('Lena512.bmp'); img = double(img); % Lena
%img = zeros(N,N); % czarny kwadrat
if(0) % opcjonalna biala siatka
for i=Nstep:Nstep:N-Nstep, img(i-1:i+1,1:N) = 255*ones(3,N); end
for j=Nstep:Nstep:N-Nstep, img(1:N,j-1:j+1) = 255*ones(N,3); end
end
imshow( img, cmap ); pause
% Dodawanie znieksztalcen beczkowych
a = [ 1.06, -0.0002, 0.000005 ]; % wspolczynniki wielomianu znieksztalcen
a = [1,0 , 0.0001]
x=1:N; y=1:N; cx = N/2+0.5; cy = N/2+0.5;
[X,Y] = meshgrid( x, y ); % wszystkie x,y
r = sqrt( (X-cx).^2 + (Y-cy).^2 ); % wszystkie odleglosci od srodka
R = a(1)*r.^1 + a(2)*r.^2 + a(3)*r.^3; % zmiana odleglosci od srodka
Rn = R ./ r; % normowanie
imgR = interp2( img, (X-cx).*Rn+cx, (Y-cy).*Rn+cy ); % interploacja
figure;
subplot(1,2,1),imshow(img,cmap); title('Oryginal');
subplot(1,2,2),imshow(imgR, cmap); title('Rybie oko');