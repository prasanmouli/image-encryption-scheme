%function d=mat_fibo(c,len,X,Y)
clear;
c = imread('Lenna.png');
c = rgb2gray(c);
I = c;
[X Y] = size(c);
[c,len] = image_row(c,X,Y);
len = uint64(X*Y);
c= uint64(c);
l = uint64(1:len);
for k=1:len
    d(k)=uint64(sum(c(k:-1:1) .* l(1:k)));
end
for k=len:-1:1
    d(k)=d(k)+uint64(sum(c(k:1:len) .* l(1:len-k+1)));
end
Inew = row_image(d,X,Y);
Inew = mod(Inew,256);
Inew = uint8(Inew);