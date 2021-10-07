# -*- coding: utf-8 -*-
"""
Created on Wed Oct  6 09:43:35 2021

@author: shiro
"""

from numpy import * 

def sommegeo(x, n):
    return (1-x**(n+1))/(1-x)

def calculLog(x, n):
    



def sommegeo2(x, n):
    result= 0
    for k in range(0, n+1):
        result= result +((-1)**k) * (x**k)
    return result





def inverseNombre(x, n):
    print(1/(1+x))
    return (sommegeo(-1, n)+ sommegeo(x, n))