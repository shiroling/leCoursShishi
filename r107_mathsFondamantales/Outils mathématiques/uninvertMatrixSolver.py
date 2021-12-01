# -*- coding: utf-8 -*-
"""
Created on Wed Dec  1 09:55:03 2021

@author: shiro
"""
import numpy as np
import numpy.linalg as nl
import sympy as sm



# déclaration de symboles (les variables de l'équarion)
x,y,z,t=sm.symbols("x y z t")

# Membre 1 er 2
A=np.matrix([[1,6,4],[3,5,3],[5,4,6]])
B=np.matrix([[113],[102],[127]])

print(nl.det(A))
#%%%
print(nl.det(A))

print(nl.solve(A,B))


#%%
# On demmande a sympy de résoudre le tout
X=sm.linsolve((A,B),[x,y, z, t])

# affichage
print("l'ensemble des solutions du système est S="+str(X))
