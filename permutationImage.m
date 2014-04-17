function IM = permutationImage(im, sigma, P)
%Renvoie l'image dans l'ordre sigma


Q = sqrt(size(sigma,2));
N = P*Q;

[nl,nc] = size(im);
IM = zeros(size(im));

Q_carre = Q*Q;
for k=1:Q_carre
    
    coord_I = rg2pos(sigma(k),P,Q); % Position dans la nouvelle image
    I = coord_I(1) + 1;
    J = coord_I(2) + 1;
    coord_i = rg2pos(k,P,Q); % Position dans l'ancienne image
    i = coord_i(1) + 1;
    j = coord_i(2) + 1;
    
    IM(I:I+P-1,J:J+P-1,:) = im(i:i+P-1,j:j+P-1,:);
    
end
subplot(121);
imagesc(im/255);
subplot(122);
imagesc(IM/255);

end
