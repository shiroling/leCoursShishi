# -*- coding: utf-8 -*-
"""
Created on Thu Mar 10 11:32:37 2022

@author: shiro le bg
"""

import numpy as np

def pL(M, s):
    M=np.array(M)
    n=len(M)
    file=[s]
    listeRouge = []
    listFinals = []
    couleur= {}
    
        
    while file!= []:
        i= file[0]
        for j in range(0, n):
            
            
            if M[i][j] == 1 and couleur[j] == 'blanc':
                file.append(j)
                couleur[j] = 'vert'
        couleur[i]='rouge'
        listeRouge.append(i)
        file.pop(0)
    return (listFinals)
                
                        
                
                