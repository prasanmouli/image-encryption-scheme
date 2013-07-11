function Inew = row_image(I,X,Y);
len = 0;
for j = 1:X
    Inew(j,:) = I(len+1:len+Y);
    len = len+Y;
end
