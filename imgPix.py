"""
Programa equivalente al de Matlab solo que usando OpenCV (4.7.0)
"""
#Importamos las bibliotecas necesarias
import  cv2
import numpy as np

#Leer una imagen
img=cv2.imread('p1.jpg')
img1=np.array(img)

#Mostramos una parte de la imagen
print(img1[0,0])

cv2.waitKey(0)
cv2.destroyAllWindows()