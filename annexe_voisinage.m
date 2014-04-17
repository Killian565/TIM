function [ Vi] = voisinage_insertion(sigma )
%ANNEXE_VOISINAGE Summary of this function goes here
%   Detailed explanation goes here

n = size(sigma,2);


Vi = [];
for i=1:n
    for k=1:n
        if i<k
            sigma_nouv = sigma ; % On copie la valeur de sigma
            for l=i:(k-1)
                sigma_nouv(l) = sigma(l+1);
            end
            sigma_nouv(k) = sigma(i);
            Vi = [Vi ; sigma_nouv];
        elseif i>k
            sigma_nouv=sigma ;
            for l = (k+1):i
                sigma_nouv(l) = sigma(l-1);
            end
            sigma_nouv(k) = sigma(i);
            Vi = [Vi ; sigma_nouv];
            
        end
        
    end
end

Vi = supp_doublons(Vi);

end
