# Author: Luciano de Oliveira Daniel
# https://sites.google.com/site/professorlucianodaniel

from scipy.io import savemat
from numpy import random
from numpy import linalg
import time


def pause():
    input("Press the <ENTER> key to continue...")


dim = int(input('Dimension of the square random matrix:'))
A = random.rand(dim, dim)
print(A, '\n')
print()
savemat('calc_autovalores_01.mat', {'A': A})
t = time.time()
w = linalg.eigvals(A)
elapsed = time.time() - t
print(w, '\n')
print('EIG elapsed time in PYTHON (executable) is:', elapsed, 'seconds', '\n')
savemat('calc_autovalores_02.mat', {'w': w})
print('"I have a paper afloat which I hold to be great guns" (Maxwell, J.C.)', '\n')
pause()
