function resultat = calculCorrelation(sigma,im,P)

Q = size(im,1)/P;

sommeCor = 0;

for k=1:size(sigma,2)

  if mod(k,Q)~=0
    posK = rg2pos(sigma(k),P,Q)+1;
    posKdroite = rg2pos(sigma(k+1),P,Q)+1;

    for i=1:P
      vect1(i) = im(posK(1)+i-1,posK(2)+P);
      vect2(i) = im(posKdroite(1)+i-1,posKdroite(2));
    end
    sommeCor = sommeCor +  correlation(vect1,vect2);

  end

  if (Q^2-Q>k)
    posK = rg2pos(sigma(k),P,Q)+1;
    posKdessous = rg2pos(sigma(k+Q),P,Q)+1;

    for i=1:P
      vect1(i) = im(posK(1)+P-1,posK(2)+i-1);
      vect2(i) = im(posKdessous(1),posKdessous(2)+i-1);
    end
    sommeCor = sommeCor +  correlation(vect1,vect2);

  end

end


resultat = sommeCor;
