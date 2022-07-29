%Closing and Opening
I=imread('capture.jpg');
se=strel('disk',10);
c=imclose(I,se);
o=imopen(I,se);
subplot(2,2,1), imshow(I), title('gambar asli');
subplot(2,2,2), imshow(c), title('closing');
subplot(2,2,3), imshow(I), title('gambar asli');
subplot(2,2,4), imshow(o), title('opening');