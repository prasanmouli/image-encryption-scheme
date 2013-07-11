function [Inew,len] = image_row(I,X,Y);
len = 0;
for j = 1:X
    Inew(len+1:len+Y) = I(j,:);
    len = length(Inew);
end