function [Inew,height] = image_stack(I)
[X Y] = size(I);
count = 1;
for l = 1:8:Y
    for m = 1:8:X
        Inew(:,:,count) = I(l:l+7,m:m+7);
        count = count + 1;
    end
end
height = count - 1;