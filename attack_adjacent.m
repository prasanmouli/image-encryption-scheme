clear;
format long;
I=imread('Lenna.png');
I = rgb2gray(I);
I1=imread('Ori.png');
I = im2double(I);
I1 = im2double(I1);
%%%%%%%%%%%%%%%%%%%%%
t=3000;
[s1 s2]=size(I);
%%%%%%%%%%%%%%%%%%%%%
for j=1:t
a(j)=randi([1 s1-1]);
end
for j = 1:t
b(j)=randi([1 s1-1]);
end
%%%%%%%%%%%%%%%%%%%%%
k=1;
cr(k)=hori(a,b,t,I);
k = k+1;
cr(k)=vert(a,b,t,I);
k=k+1;
cr(k)=diog(a,b,t,I);
%%%%%%%%%%%%%%%%%%%%%
k=k+1;
cr(k)=hori(a,b,t,I1);
k=k+1;
cr(k)=vert(a,b,t,I1);
k=k+1;
cr(k)=diog(a,b,t,I1);
%%%%%%%%%%%%%%%%%%%%