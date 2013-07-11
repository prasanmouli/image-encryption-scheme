function I4 = arrange_stack(I3,S,height)

for l = 1:height
    I4(:,:,S(l)) = I3(:,:,l);
end