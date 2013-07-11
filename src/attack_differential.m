clear;
C = imread('Ori.png');
D = imread('L1.png');
C = double(C);
D = double(D);
[X Y] = size(C);
sum = 0.00;
NPCR = 0.00;
UACI = 0.00;
for j = 1:X
    for k = 1:Y
        T = 0;
        if C(j,k) > D(j,k)
            T = C(j,k) - D(j,k);
            NPCR = NPCR+1;
        elseif C(j,k) < D(j,k)
            T = D(j,k) - C(j,k);
            NPCR = NPCR+1;
        end
        sum = sum+T;
    end
    UACI = UACI + sum/255.000;
    sum = 0;
end
MF = 100.00/double(X*Y);
UACI = UACI*MF;
NPCR = NPCR * MF;