# -*- coding: utf-8 -*-
import numpy as np
l=[]
def vallog(x,n):
    a=(x)/1
    for i in range(0,n):
        a=((a*2)/3)*x*-1
        l.append(a)
    return(sum(l))
def vallogv2(x,n):
    for i in range(n):
        a=(-1)**i*(x**(i+1)/(i+1))
        l.append(a)
    return(sum(l))
print(vallogv2(2,100))
print(np.log(2))

        
