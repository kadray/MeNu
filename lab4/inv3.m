function Ainv = inv3(A)
    if det(A)==0
    Ainv=0;
    end
    N = size(A);
    AD = zeros(N);
    for i=1:N
       for j=1:N
          temp_m = A;
          temp_m(i,:) = [];
          temp_m(:,j) = [];
          AD(i,j) = (-1).^(i+j) * det(temp_m);
        end
      end

    Ainv=(1/det(A))*AD';
end
