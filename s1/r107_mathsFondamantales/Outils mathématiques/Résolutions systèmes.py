# -*- coding: utf-8 -*-
"""
Created on Wed Nov 24 08:17:08 2021

@author: Jules
"""

import numpy as np
import numpy.linalg as nl
import sympy as sm
#%%#

A1=np.matrix([[2,1],[5,3]])
A2=np.matrix([[2,4],[1,2]])
A3=np.matrix([[1,2,3],[4,5,6],[5,7,10]])
B1=np.matrix([[3],[4]])
B3=np.matrix([[1],[2],[1]])

print(nl.det(A1))
print(nl.det(A2))
print(nl.det(A3))

print(nl.solve(A1,B1))
print(nl.solve(A3,B3))
#%%#
x,y,z,t=sm.symbols("x y z t")
A=sm.Matrix([[3,4,1,2],[6,2,2,5],[9,12,3,10]])
B=sm.Matrix([[3],[7],[13]])
X=sm.linsolve((A,B),[x,y,z,t])
print("l'ensemble des solutions du système est S="+str(X))
#%%
x,y=sm.symbols("x y")
A=sm.Matrix([[2,4],[1,2]])
B=sm.Matrix([[6],[5]])
X=sm.linsolve((A,B),[x,y])
print("l'ensemble des solutions du système est S="+str(X))
#%%
x,y=sm.symbols("x y")
A=sm.Matrix([[2,4],[1,2]])
B=sm.Matrix([[6],[3]])
X=sm.linsolve((A,B),[x,y])
print("l'ensemble des solutions du système est S="+str(X))
#%%
x,y,z,t=sm.symbols("x y z t")
A=sm.Matrix([[1,-1,6],[2,3,7]])
B=sm.Matrix([[2],[1]])
X=sm.linsolve((A,B),[x,y,z,t])
print("l'ensemble des solutions du système est S="+str(X))
