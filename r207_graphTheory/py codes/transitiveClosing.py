# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

# faire des graphes en py

import numpy as np
import matplotlib.pyplot as plt

def nbTotal(p,M):
    temp = M
    for i in range(1, p):
         M= M* temp
           
def transitiveClosing(p, M):
    Mtmp = M

    print(M)
    for i in range(0, p-1):
        M=M+ np.linalg.matrix_power(M, i+1)
        print(M)
        
        for j in range(0, p-1):
            if M[i,j] == 0:
                Mtmp[i,j] = 0
            else:
                Mtmp[i,j] = 1
                
    return (Mtmp)    




M = np.matrix([[0,1,0,0,0],[0,0,1,0,0],[0,0,0,0,1],[0,0,1,0,0],[0,1,0,0,0]])

print(transitiveClosing(3, M))    
#plt.figure(1)
#plt.semilogy(y, 's')

#M=np.linalg.matrix_power(M, p)
