function cr=vert(a,b,t,I)
ex=0.0;
ey=0.0;
for j=1:t
     x=I(a(j),b(j));
     ex=ex+x/t;
     y=I(a(j)+1,b(j));
     ey=ey+y/t;
end
dx=0.0;
dy=0.0;
for j=1:t
     x=I(a(j),b(j));
     dx=dx+(((x-ex)^2)/t);
     y=I(a(j)+1,b(j));
     dy=dy+(((y-ey)^2)/t);
end
cov=0.0;
for j=1:t
    x=I(a(j),b(j));
    y=I(a(j)+1,b(j));
    cov=cov+(x-ex)*(y-ey)/t;
end
Dy = double(dy);
cr=cov/sqrt(dx*(Dy));