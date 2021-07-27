import numpy as np
import cv2 as cv

import os
current_dir = os.getcwd()
path_read = current_dir + "/Project/Testbench/TestFile_48x48.txt"

image = np.zeros((48,48,3),np.float32)
file_read = open(path_read,"r")
pixel = []
for x in file_read:
    pixel.append(int(x))
k=0
for i in range(48):
    for j in range(48):
       image[i,j] = (pixel[k],pixel[k],pixel[k])
       k = k+1

cv.imwrite(current_dir + "/Project/Result/Surprise.jpg",image)
cv.waitKey(0)
cv.destroyAllWindows()