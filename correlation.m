function resultat = correlation(vect1,vect2,sens)

if (strcmp(sens,'horizontal'))
  vect1 = vect1';
  vect2 = vect2';
end

moy1 = mean(vect1);
moy2 = mean(vect2);

var1 = mean(vect1.^2) - moy1.*moy1;
var2 = mean(vect2.^2) - moy2.*moy2;

covariance = mean(vect1.*vect2) - moy1.*moy2;

resultat = covariance/sqrt(var1*var2);
