# -*- coding: utf-8 -*-

from numpy import*
from matplotlib.pyplot import*
#%%
x=linspace(-10,10,100)
plot(x,-2*x+3,label='-2x+3')
plot(x,(-5/3)*x+4/3,label='5tier de x +4tier')
legend()
xlabel('x')
ylabel('y')
#%%