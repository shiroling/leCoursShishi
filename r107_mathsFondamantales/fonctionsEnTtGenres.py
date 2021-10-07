# -*- coding: utf-8 -*-
"""
Created on Wed Oct  6 07:14:57 2021

@author: shiro
"""

from numpy import *

def f(t):
    return(t**2+3*t-7)


def fibonacci(n):
    a,b= 1,1
    for i in range(n):
        a,b = a+b, a
    return b


print (fibonacci(2), fibonacci(10))