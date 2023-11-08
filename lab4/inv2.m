function Ainv = inv2(A)
    if det(A)==0
    Ainv=0;
    end

    Ainv = 1/(A(1, 1)*A(2, 2)-A(2,1)*A(1, 2))* [A(2,2), -A(1,2); -A(2,1), A(1, 1)];
end