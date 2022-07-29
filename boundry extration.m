clear all;
close all;
clc;
%proses Erosion
I=imread('capture.jpg');
sel=strel('disk',15);
er=imerode(I,sel);
figure,imshow(I);

%proses Dilation
A=imread('bunga lotus.jpg');
se2=strel('ball',5,5);
de=imdilate(A,se2);

subplot(2,2,1), imshow(I), title('gambar asli');
subplot(2,2,2), imshow(er), title('after Erosion');
subplot(2,2,3), imshow(A), title('gambar asli');
subplot(2,2,4), imshow(de), title('after Dilation');