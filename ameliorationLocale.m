function meilleurSigma = ameliorationLocale(image,sigma,P)

  voisinageEchange = voisinage_echange(sigma);
  voisinageInsertion = voisinage_insertion(sigma);

  meilleurSigma = sigma;
  meilleureCorr = calculCorrelation(sigma,image,P);

  %for i=1:size(voisinageEchange,1)
  %  if (calculCorrelation(voisinageEchange(i,:),image,P)>meilleureCorr)
  %    meilleurSigma = voisinageEchange(i,:);
  %    meilleureCorr = calculCorrelation(voisinageEchange(i,:),image,P);
  %  end
  %end

  for i=1:size(voisinageInsertion,1)
    if (calculCorrelation(voisinageInsertion(i,:),image,P)>meilleureCorr)
      meilleurSigma = voisinageInsertion(i,:);
      meilleureCorr = calculCorrelation(voisinageInsertion(i,:),image,P);
    end
  end
  
end
