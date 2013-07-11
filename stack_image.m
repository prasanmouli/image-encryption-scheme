function Inew = stack_image(I,X,Y)
count = 1;
for l = 1:8:Y
    for m = 1:8:X
            Inew(l:l+7,m:m+7) = I(:,:,count);
            count = count + 1;
    end
end
