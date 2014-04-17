function [ mat_sans_doublons ] = supp_doublons( matrice)
%SUPP_DOUBLONS Summary of this function goes here
%   Supprime les doublons de lignes d'une matrice

[nl,nc] = size(matrice);
mat_sans_doublons = [];

for i1=1:nl
    condglobale = 0;
   
    
    for i2=(i1+1):nl
        cond = 1;
       
        for j=1:nc
            cond = cond && (matrice(i1,j)==matrice(i2,j));
        end
        condglobale = condglobale || cond;
    end
    
    if condglobale == 0 % Il n'y a aucun doublon
        mat_sans_doublons = [mat_sans_doublons ; matrice(i1,:)];
    end
    
end


end
