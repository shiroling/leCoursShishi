# -*- coding: utf-8 -*-
from numpy import*
from matplotlib.pyplot import*

x=logspace(0,6,1000)
loglog(x,x,label="f1")
loglog(x,x**2,label="f2")
loglog(x,x**3,label="f3")
legend()
#%%
x=logspace(0,6,1000)
semilogx(x,log2(x),label='log2')
semilogx(x,log(x),label='ln')
#%%
x=linspace(1,100,1000)
semilogy(x,3**x,)
semilogy(x,2**x)