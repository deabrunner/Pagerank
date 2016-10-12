function C=Amat(filename);
    A = Abar(filename);
    B = sum(A);
    A
    B
    for i=1:size(B,2);
        if B(1,i) == 0;
            B(1,i) = size(B,2)
            A(1:size(A),i) = 1;
        end
    end
    A
    
    C = bsxfun(@rdivide, A, B);
    C(isnan(C)) = 0;
   
end
