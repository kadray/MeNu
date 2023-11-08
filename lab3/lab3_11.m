clear all
close all
clc

X=load("babia_gora.dat"); 
figure; grid; plot3(X(:,1), X(:,2), X(:,3)); title("normal")

%scaling
k=2
l=0.5
m=100
S=[k, 0, 0; ...
   0, l, 0; ...
   0, 0, m;]
scaled=X*S
figure; grid; plot3(scaled(:,1), scaled(:,2), scaled(:,3)); title("scaled")

%translation

T=zeros(size(X))
T(:,1)=-100
T(:,2)=100
T(:,3)=1000

transl=X+T
figure; grid; plot3(transl(:,1), transl(:,2), transl(:,3)); title("translated")

%mirroring
M=eye(3)
M(1, 1)=-1
mirror=X*M
figure; grid; plot3(mirror(:,1), mirror(:,2), mirror(:,3)); title("mirrored")

%flipped
M=eye(3)
M(3, 3)=-1
flip=X*M
figure; grid; plot3(flip(:,1), flip(:,2), flip(:,3)); title("flipped")