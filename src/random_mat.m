function ab = random_mat(X,Y,x)
% clear;
% X = 512;Y=512;
% x = 32517000;
x = double(x);
while(floor(x) > 0)
    x = x/10;
end
mo = x;
for m=1:6500
    y=3.569946*x*(1-x);
    x=y;
end
for m=1:X
    for n = 1:Y
        y=3.569946*x*(1-x);
        a(m,n) = y*10^15;
        x=y;
    end
end
cc=mod(a,256);
ab=floor(cc);
ab = uint8(ab);