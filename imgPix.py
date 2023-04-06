"""
Programa equivalente al de Matlab solo que usando OpenCV (4.7.0)
"""
#Importamos las bibliotecas necesarias
import  cv2
import numpy as np

#Leer una imagen
img=cv2.imread('p1.jpg')
img1=np.array(img)
img1_1=0

#Matriz de ceros
for i in range(0,260):
    for j in range(0,320):
        for z in range(0,3):
            img1_1[i,j,z]=0
img1_1=np.array(img1_1)

#Mostramos una parte de la imagen
i=360
j=420
for i in range(321):
    for j in range(741):
        img1_1[i-360,j-420,:]=img1[i,j,:]
cv2.imshow('Imagen',img)
cv2.imshow('Fragmento',img1_1)

cv2.waitKey(0)
cv2.destroyAllWindows()