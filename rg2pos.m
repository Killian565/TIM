%Donne la position d'une imagette à partir de son rang
function pos = rg2pos(rg,P,Q)

pos(1) = floor((rg-1)/Q)*P;
pos(2) = mod((rg-1),Q)*P;
