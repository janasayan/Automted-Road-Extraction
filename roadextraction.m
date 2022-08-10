clc
clear all;
close all;
%Reading the Image
[file,path] = uigetfile;
I=imread(file);
%Showing the original Image
figure;
imshow(I);
title('ORGINAL IMAGE');
J=rgb2gray(I);
%whos
figure,imshow(J);
title('GRAYSCALED IMAGE ');
K=imadjust(J,[0.5 0.9],[]); 
figure;
imshow(K);
level = graythresh(K); 
I=im2bw(K,level); 
I=imread(file);
I = im2bw(I, 0.65);
figure;
imshow(I);
title('BINARY IMAGE AFTER THRESHOLDING');
B = medfilt2(I);
figure,imshow(B);
title('MEDIAN FILTERED IMAGE');
im = bwareaopen(B,10000); 
im3 = bwmorph(im, 'majority');
im=im3;
se=strel('square',2);
im1=imclose(im,se);
figure,imshow(im1);
%title('removing connected components(pixel <6)');
BW = bwmorph(im,'remove');
figure,imshow(BW);
title('MORPHOLOGICAL FILTERED IMAGE');
BW1 = edge(BW,'sobel');
figure,imshow(BW1);
title('SOBEL EDGE DETECTION ON IMAGE');
se = ones(2,3);
closeBW=imclose(BW1,se);
subplot(1,2,1), imshow(closeBW), title('CLOSED IMAGE');
subplot(1,2,2), imshow(im1), title('NORMAL');
BW1=closeBW;
%title('binary image with filled holes');
%OVERALYING OBTAINED ROADS OVER GRAYSACLE IMAGE
H = vision.AlphaBlender;
J = im2single(J);
BW1 = im2single(BW1);
Y = step(H,J,BW1);
figure,imshow(Y)