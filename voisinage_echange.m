function matriceSigma = voisinage_echange(sigma)


matriceSigma(1,:)=sigma;
position = 2;

for i=1:size(sigma,2)
  for j=1:size(sigma,2)
    if (j~=i)
      for k=1:size(sigma,2)
	if (k==i)
	  sigmaSol(k)=sigma(j);
	else if (k==j)
	       sigmaSol(k)=sigma(i);
	     else sigmaSol(k) = sigma(k);
	     end
        end
      end
      matriceSigma(position,:) = sigmaSol(1,:);
      position = position+1;
    end
  end
end

