function ans = fibo_add1(C)
[X,Y] = size(C);
[c,len] = image_row(C,X,Y);
c = uint64(c);
l = uint64(1:len);
c = c .* l;
sum = 0;
for j = 1:len
    sum = sum + c(j);
    c(j) = c(j) + sum;
end
p = uint64(len:-1:1);
sum = 0;
c = c .* p; 
c = mod(c,256);
for j = len:-1:1
    sum = sum + c(j);
    c(j) = c(j)+sum;
end
Ans = mod(c,256);
Ans = uint8(Ans);
ans = row_image(Ans,X,Y);