%Donne la position d'une imagette à partir de son rang
function posF = pos2pos(posI,P,Q,sigma)
k = pos2rg(posI,P,Q);
kbis = sigma(k);
posF = rg2pos(kbis,P,Q);
