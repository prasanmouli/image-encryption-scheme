function Inew = revcat(I,ite)
Isize = size(I);
X = Isize(1);
Y = Isize(2);
Inew1 = I;
for t = 1:ite
    for j = 1:X
        for k = 1:Y
            p = mod(-j+2*k,X);
            q = mod(j-k,Y);
            if (p == 0) 
                p = X;
            end
            if (q == 0) 
                q = Y;
            end
            Itemp(j,k) = Inew1(p,q);
        end
    end
    Inew1 = Itemp;
end
Inew = Inew1;
%figure;
%imshow(Inew);