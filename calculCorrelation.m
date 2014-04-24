function resultat = calculCorrelation(sigma,im,P)

Q = size(im,1)/P;

sommeCor = 0;

for k=1:size(sigma,2)

    for i = 1:size(sigma,2)
        aux = sigma(i);
        sigma_moins_1(aux) = i;
    end
  
    if mod(k,Q)~=0
        posK = rg2pos(sigma_moins_1(k),P,Q)+1;
        posKdroite = rg2pos(sigma_moins_1(k+1),P,Q)+1;

        vect1 = im(posK(1):posK(1)+P-1,posK(2)+P-1);
        vect2 = im(posKdroite(1):posKdroite(1)+P-1,posKdroite(2)+P-1);

        if max(vect1)~=0 && max(vect2)~=0
            sommeCor = sommeCor +  correlation(vect1,vect2);
        else
            %sommeCor = sommeCor-0.5;
        end

    end

    if (Q^2-Q>k)
        posK = rg2pos(sigma_moins_1(k),P,Q)+1;
        posKdessous = rg2pos(sigma_moins_1(k+Q),P,Q)+1;

        vect1 = im(posK(1)+P-1,posK(2):posK(2)+P-1);
        vect2 = im(posKdessous(1),posKdessous(2):posKdessous(2)+P-1);

        if max(vect1)~=0 && max(vect2)~=0
            sommeCor = sommeCor +  correlation(vect1,vect2);
        else
            % sommeCor =  sommeCor-0.5;
        end
    
    end

end


resultat = sommeCor;


