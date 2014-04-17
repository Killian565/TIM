%Script de résolution de Puzzle:

lectri;
sigma = randperm(16);
P = 128;
ameliorationLocale(im,sigma,P);
IM = permutationImage(im, sigma, P);
