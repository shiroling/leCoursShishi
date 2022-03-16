# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

# faire des graphes en py

import numpy as np
import matplotlib.pyplot as plt

def nbTotal(M):
    temp = M
    p=len(M)
    for i in range(1, p):
         temp= np.dot(temp,M)
         temp=temp+M
    return (temp)    

def transitiveClosing(M):
    Ma=nbTotal(M)
    p=len(Ma)
    for i in range (0,p):
        for j in range (0,p):
            if Ma[i][j]>1 :
                Ma[i][j]=1    
    return Ma




M = np.array([[0,1,0,0,0],[0,0,1,0,0],[0,0,0,0,1],[0,0,1,0,0],[0,1,0,0,0]])
print (nbTotal(M))
print(transitiveClosing(M))    
#plt.figure(1)
#plt.semilogy(y, 's')

#M=np.linalg.matrix_power(M, p)
