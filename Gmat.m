%liknande funktion som Amat fast med d?mpningsfaktor
function G=Gmat(filename);
    A = Abar(filename);
    B = sum(A);
    size = length(B);

    for i=1:size;
        if B(1,i) == 0;
            B(1,i) = size(B,2)
            A(1:size(A),i) = 1
        end
    end
     
    C = bsxfun(@rdivide, A, B);
    C(isnan(C)) = 0;
    
    %d = d?mpningsfaktor
    d = 0.85;
    
    % Skapar en ny matris som ?r Google matrisen, som g?r att "n?tsurfaren"
    % n?r som hellst 
    G = (d*C) + ((1-d)/size)*ones(size);
end
