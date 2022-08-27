clc;
clear all;
close all;

%Extraccion de las imagenes
img1=imread('p1.jpg');
img2=imread('p2.jpg');
img3=imread('p3.jpg');
img4=imread('p4.jpg');

%Mostramos una parte de la imagen
img1_1(:,:,:)=img1([360:620],[420:740],:);
img2_1(:,:,:)=img2([360:620],[420:740],:);
img3_1(:,:,:)=img3([360:620],[370:690],:);
img4_1(:,:,:)=img4([360:620],[370:690],:);
figure()
subplot(2,2,1)
imshow(img1_1)
title('Parte Img1')
subplot(2,2,2)
imshow(img2_1)
title('Parte Img2')
subplot(2,2,3)
imshow(img3_1)
title('Parte Img3')
subplot(2,2,4)
imshow(img4_1)
title('Parte Img4')