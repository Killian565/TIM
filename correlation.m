function resultat = correlation(vect1,vect2)

M = cov(vect1,vect2);
resultat = M(1,2)/sqrt(M(1,1)*M(2,2));

end
