function k=summer(I,y)
I = uint64(I);
a=sum(I);
k=uint64(0);
for j=1:y
    k=k+a(j);
end
