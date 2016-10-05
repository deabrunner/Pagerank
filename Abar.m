function A=Abar(filename)
    M=dlmread (filename);
    [no_nodes,cc]=size(M);
    A=zeros(no_nodes,no_nodes);
    for i = 1:no_nodes;
        for j = 1:cc;
             h = M(i,j);
             if h ~= i;
                 if h > 0; 
                    A(h,i) = 1;
                 end                 
             end              
        end
    end
end




