tol=input('ge en tolerans: ');
x=input('ge ett v???rde p??? x: ')';
filnamn=input('Ange ett filnamn: ');
B=Amat(filnamn);
size = length(B);
senaste_x=2.*x;
 
while max(abs(x-senaste_x)) > tol;
    senaste_x = x;
    
    x=B*x;
    
end;
  
v = (1:size)';
V = [v x];
[idx, val] = sort(V(:,2), 'descend');
Resultat = [val idx];
disp('   Nodenumber Pagerank')
disp(Resultat)

%mat = rand(100, 8);
%rowsum = sum(mat,2);
%mat = bsxfun(@rdivide, mat, rowsum);

