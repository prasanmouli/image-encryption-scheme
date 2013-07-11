clear;
close all;
format long;
I = imread('Lenna.png');
I = rgb2gray(I);
figure
imhist(I);
[X Y] = size(I);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[I1,len] = image_stack(I);
S = random_row(len);
I1 = scramble_stack(I1,S,len);
Inew = stack_image(I1,X,Y);
%ite = floor(2/3*X*Y);
%Itemp = mcat(Inew,ite);
% figure
% imshow(Inew);  %------Inew MAT1--------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = lorentz(X*Y);
A = row_image(A,X,Y);
B = fibo_add1(I);
%C = sum_matrix(A,Itemp,Y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%-----------------I is MAT3--------%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Inew = bitxor(Inew,A);
Inew = bitxor(Inew,B);
Iite = sum(Inew);
ite = mod(sum(Iite),512);
Inew = mcat(Inew,ite);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%=======================================================%
% figure
% imshow(Inew);
% title('Completely scrambled image');
figure
imhist(Inew);
% title('Histo of completely scrambled im');
imwrite(Inew,'Ori.png');
%=======================================================%
Inew = revcat(Inew,ite);
Inew = bitxor(Inew,B);
Inew = bitxor(Inew,A);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
I3 = image_stack(Inew);
I3 = arrange_stack(I3,S,len);
Inew = stack_image(I3,X,Y);
figure
imshow(Inew);