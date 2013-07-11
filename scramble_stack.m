function I2 = scramble_stack(I1,S,height)
for l = 1:height
    if (S(l) < 0)
        l
    end
    I2(:,:,l) = I1(:,:,S(l));
end