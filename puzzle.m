%Script de résolution de Puzzle:

lectri;
sigma = randperm(16);
P = 128;
sigma = recuit_simule(im,sigma,P);
%sigma = ameliorationLocale(im,sigma,P);
IM = permutationImage(im, sigma, P);
