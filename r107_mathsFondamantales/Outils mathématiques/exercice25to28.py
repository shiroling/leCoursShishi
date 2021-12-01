# -*- coding: utf-8 -*-
from numpy import*
from matplotlib.pyplot import*
x=linspace(-2.5,2.5,100)
def demi(x):
    return((1/2)*x**2)
def puissance4(x):
    return((1/24)*x**4)
    
#%%
#EXERCICE 25
x=linspace(-2.5,2.5,100)
plot(x,cos(x),label='cos')
plot(x,(1+x*0),label='1')
plot(x,(1- demi(x),label='1-demi x²')
plot(x,1-demi(x)+puissance4(x),label='1-demi x² + 24ieme x^4')
legend()
xlabel('x')
ylabel('y')



#%%
#EXERCICE 26




#%%
# EXERCICE 27




#%%
# EXERCICE 28