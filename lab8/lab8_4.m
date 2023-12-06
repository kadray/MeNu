clear all; 
close all;
clc;

% Przyklad z Yang 2005
A = [ 2 0 1; 0 -2 0; 1 0 2 ]
[N,N] = size(A);
[R, D] = solve(A)
%Przykład 3x3
B= [4 2 0;
    2 7 3;
    0 3 1;]
[R, D]=solve(B)
% Macierz symetryczna 4x4

C = [1 3 3 7;
    3 3 9 5;
    3 9 5 6;
    7 5 6 7;]
[R, D] = solve(C)
function [R, D] = solve(A)
   D = A;
   [N, N] = size(D);
   R = eye(N);
   while (1)
       Dabs = abs(D - tril(D));
       [v, x, y] = mmax(Dabs);
       assert(Dabs(y, x) == v);
      
       if (abs(v) > 0.00000000001)
           Ri = makeRi(y, x, D);
           D = Ri.' * D * Ri;
           R = R * Ri;
       else
           return
       end
   end
end
function [v, x, y] = mmax(A)
   [N, N] = size(A);
   [v, i] = max(A, [], 'all');
   x = fix(i / N) + 1;
   y = rem(i, N);
   if (x == 0)
       y = N;
       x = x - 1;
       return
   end
end
function [Ri] = makeRi(p, q, A)
   xi = (A(q,q) - A(p,p)) / 2 / A(p,q);
   if( xi > -eps )
       t =  (abs(xi) + sqrt(1 + xi^2));
   else
       t = -(abs(xi) + sqrt(1 + xi^2));
   end
  
   c = 1 / sqrt(1+t^2);
   s = t * c;
   [N, N] = size(A);
   Ri = eye(N);
   Ri(p, p) = c;
   Ri(q, q) = c;
   Ri(p, q) = -s;
   Ri(q, p) = s;
end
