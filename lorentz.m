function Inew=lorentz(len);
x0=0.0000000000778899;
y0=0.0000000000123654;
z0=.00000000000657789;
y(1,:)=[x0 y0 z0];
n=16000+len;
h=10^-2;
s=10;%-(10^-15);
r=28;
b=8/3;
count = 1;
i = 2;
while(count <= n)
    ydot(1)=s*(y(i-1,2)-y(i-1,1));
    ydot(2)=r*y(i-1,1)-y(i-1,2)-y(i-1,1)*y(i-1,3);
    ydot(3)=y(i-1,1)*y(i-1,2)-b*y(i-1,3);
    y(i,:)=y(i-1,:)+h*ydot;
    p(i,:)=uint8(floor(mod(y(i,:)*10^15,256)));
    I(count) = p(i,1);count = count + 1;
    I(count) = p(i,2);count = count + 1;
    I(count) = p(i,3);count = count + 1;
    i = i+1;
end
Inew = I(16001:n);
% y=y*10^15;
% y=floor(mod(y,256));
% 
% x=y(16001:16000+len,1);
% z=y(16001:16000+len,3);
% y1=y(16001:16000+len,2);
% for j=1:len
%     x1(1,j)=x(j,1);
%     y2(1,j)=y1(j,1);
%     z1(1,j)=z(j,1);
% end