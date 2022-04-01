# -*- coding: utf-8 -*-
"""
Created on Thu Mar 10 11:32:37 2022

@author: shiro
"""

import numpy as np

M = np.array([[0,1,0,0],[0,0,1,0],[0,0,0,1],[1,0,0,0]])


def Trans2(M):
    n = len(M)
    for s in range(n):          //section de 
        for r in range(n):
            if M[r][s] == 1:
                for t in range(n):
                    if M[s][t] == 1:
                        M[r][t] = 1
        
        
    return(M)

print(Trans2(n))
                
                        
                
                