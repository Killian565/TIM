function meilleurSigma = recuit_simule(image,sigma,P)

% Parametres de la methode de segmentation :
T_0 = 0.1;
Q = size(image,1)/P;
nb_iteration = 200;
alpha = 0.20;
meilleurSigma = sigma;
meilleureCorr = calculCorrelation(sigma,image,P);

% Boucle du recuit simule :
T = T_0;

for i = 1:nb_iteration
  for k = 1:Q^2
    k_bis = floor((Q^2)*rand)+1;
    for j=1:size(sigma,2)
      if (j~=k & j~=k_bis)
        sigma_nouveau(j) = meilleurSigma(j);
      end
      if j==k
	sigma_nouveau(j) = meilleurSigma(k_bis);
      end
      if j==k_bis
	sigma_nouveau(j) = meilleurSigma(k);
      end
    end

    nouvelleCorr = calculCorrelation(sigma_nouveau,image,P);
    if nouvelleCorr > meilleureCorr
      meilleurSigma = sigma_nouveau;
      meilleureCorr = nouvelleCorr;
    else if rand<=exp(-(meilleureCorr - nouvelleCorr)/T)
           meilleurSigma = sigma_nouveau;
           meilleureCorr = nouvelleCorr;
	 end
    end
  end
  T = alpha*T;
end
