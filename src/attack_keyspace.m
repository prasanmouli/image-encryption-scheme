clear;
Mid = imread('Ori.png');
Left = imread('1.png');
Right = imread('3.png');
[X,Y] = size(Mid);
s = 0;
for j = 1:X
    for k = 1:Y
        if (Mid(j,k) ~= Left(j,k))
            s = s+1;
        end
        if (Mid(j,k) ~= Right(j,k))
            s = s+1;
        end
    end
end
Ans = s*100/(2*X*Y);
        
    