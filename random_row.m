function Inew = random_row(len)
Inew(1:len) = -1;
count = 1;
xcheck = 0;
ycheck = 0;
x = 0.6315477;y = 0.18906343;
while (Inew(len) == -1)
    X = y+1-(1.4)*x*x;
    Y = (0.3)*x;
    MX = mod(floor(X*10^15),len);
    MY = mod(floor(Y*10^15),len);
    for j = 1:count-1
        if Inew(j) == MX
            xcheck = 1;
        end
    end
    if (xcheck == 0)
        Inew(count) = MX;
        count = count + 1;
    end
    for j = 1:count-1
        if Inew(j) == MY
            ycheck = 1;
        end
    end
    if (ycheck == 0)
        Inew(count) = MY;
        count = count + 1;
    end
    x = X;
    y = Y;
    xcheck = 0;
    ycheck = 0;
end
c = 0;
for j = 1:len
    if Inew(j) == 0
        Inew(j) = len;
    end
end
%Inew1 = Inew;