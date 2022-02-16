# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

# faire des graphes en py

import numpy as np
import matplotlib.pyplot as plt

def nbTotal(p,M):
    somme= 0
    temp = M
    for i in range(1, p):
         M= M* temp
           
    #M=np.linalg.matrix_power(M, p)

    return np.sum(M)    




M = np.matrix([[0,1,0,1],[0,1,1,0],[0,1,0,1],[1,0,1,0]])
y=[]
for i in range(1, 21):
    y.append(nbTotal(i,M))

    
plt.figure(1)
plt.semilogy(y, 's')