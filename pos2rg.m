%Donne le rang d'une image à partir de sa position
function rg = pos2rg(position,P,Q)

rg = floor(position(1)/P)*Q + floor(position(2)/P) + 1;
