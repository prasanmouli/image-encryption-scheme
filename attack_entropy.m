clear;
I=imread('Ori.png');
[h w]=size(I);
count(1:256) = 0.00;
for k=1:256
     for i=1:h
         for j=1:w
             if (I(i,j)==k-1) 
             count(1,k)=count(1,k)+1;
             end
         end
     end
end
M=0;
for j=1:256
    p(j)=count(1,j)/(h*w);
    if (p(j) ~= 0)
        M=M+p(j)*log2(p(j));
    end
end
M = -M;