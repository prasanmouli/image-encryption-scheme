clear;
close all;
I = imread('Lenna.png');
I = rgb2gray(I);
a = randi([1 512]);
b = randi([1 512]);
I1 = I;
I1(512,512) = I1(512,512)+ 1;
I1(1,1) = I1(1,1)+1;
imwrite(I1,'LennaLF.png');