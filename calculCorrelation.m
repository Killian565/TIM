function resultat = calculCorrelation(sigma,im,P)

Q = size(im,1)/P;

sommeCor = 0;

for k=1:Q^2

  posI = rg2pos(k,P,Q);
  nouvPos = pos2pos(posI,P,Q,sigma);

  if (posI(2)+1<size(im))
    k_droite = k+1;
    posDroite = rg2pos(k_droite,P,Q);
    nouvPosDroite = pos2pos(posDroite,P,Q,sigma);
    for i=1:P
      vect1(i) = im(nouvPos(1)+i,nouvPos(2)+1);
      vect2(i) = im(nouvPosDroite(1)+i,nouvPosDroite(2)+1);
    end
    sommeCor = sommeCor + correlation(vect1,vect2,'vertical');
  end
  
  if (posI(1)+1<size(im))
    k_bas = k+Q;
    posBas = rg2pos(k_bas,P,Q);
    nouvPosBas = pos2pos(posBas,P,Q,sigma);
    for i=1:P
      vect1(i) = im(nouvPos(1)+1,nouvPos(2)+i);
      vect2(i) = im(nouvPosDroite(1)+1,nouvPosDroite(2)+i);
    end
    sommeCor = sommeCor + correlation(vect1,vect2,'horizontal');
  end

end

