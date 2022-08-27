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
%%Mostramos los pixeles y su informacion
%Img1
figure()
subplot(4,2,1)
imshow(pix1)
title('Pixeles de img1')
pix1_R=pix1(:,:,1);
pix1_G=pix1(:,:,2);
pix1_B=pix1(:,:,3);
subplot(4,2,2)
hold on
plot(pix1_R,"r")
plot(pix1_G,"g")
plot(pix1_B,"b")
legend("R","G","B")
title('Valores de pixeles')
hold off

%Img2
subplot(4,2,3)
imshow(pix2)
title('Pixeles de img2')
pix2_R=pix2(:,:,1);
pix2_G=pix2(:,:,2);
pix2_B=pix2(:,:,3);
subplot(4,2,4)
hold on
plot(pix2_R,"r")
plot(pix2_G,"g")
plot(pix2_B,"b")
legend("R","G","B")
title('Valores de pixeles')
hold off

%Img3
subplot(4,2,5)
imshow(pix3)
title('Pixeles de img3')
pix3_R=pix3(:,:,1);
pix3_G=pix3(:,:,2);
pix3_B=pix3(:,:,3);
subplot(4,2,6)
hold on
plot(pix3_R,"r")
plot(pix3_G,"g")
plot(pix3_B,"b")
legend("R","G","B")
title('Valores de pixeles')
hold off

%Img4
subplot(4,2,7)
imshow(pix4)
title('Pixeles de img4')
pix4_R=pix4(:,:,1);
pix4_G=pix4(:,:,2);
pix4_B=pix4(:,:,3);
subplot(4,2,8)
hold on
plot(pix4_R,"r")
plot(pix4_G,"g")
plot(pix4_B,"b")
legend("R","G","B")
title('Valores de pixeles')
hold off