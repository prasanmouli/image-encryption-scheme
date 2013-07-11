function Inew = mcat(I,ite)
Isize = size(I);
X = Isize(1);
Y = Isize(2);
Itemp(:,:,1) = I;
for c = 1:ite
    for j = 1:X
        for k = 1:Y
            p = mod(j+2*k,X);
            q = mod(j+k,Y);
            if (p == 0) 
                p = X;
            end
            if (q == 0) 
                q = Y;
            end
            Itemp(j,k,c+1) = Itemp(p,q,c);
            
        end
    end
end
Inew = Itemp(:,:,c+1);
%figure;
%imshow(Inew);