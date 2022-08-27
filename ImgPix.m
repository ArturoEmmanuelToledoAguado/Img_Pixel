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
% figure()
% subplot(2,2,1)
% imshow(img1_1)
% title('Parte Img1')
% subplot(2,2,2)
% imshow(img2_1)
% title('Parte Img2')
% subplot(2,2,3)
% imshow(img3_1)
% title('Parte Img3')
% subplot(2,2,4)
% imshow(img4_1)
% title('Parte Img4')

%%Obtencion de pixeles aleatorios de las partes cortadas
%Vectores de coordenadas X Y
x=randi(261,1,30);
y=randi(321,1,30);%Maximo de 30 muestras
%Obtencion del pixel en las coordenadas
for i=1:30
    pix1(1,i,:)=img1_1(x(i),y(i),:);
    pix2(1,i,:)=img2_1(x(i),y(i),:);
    pix3(1,i,:)=img3_1(x(i),y(i),:);
    pix4(1,i,:)=img4_1(x(i),y(i),:);
end