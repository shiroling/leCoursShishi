# -*- coding: utf-8 -*-
"""
Created on Wed Oct  6 07:20:20 2021

@author: shiro
"""

from numpy import * 
from matplotlib.pyplot import *

figure(1)
t= arange(-3, 3, 0.01)
plot(t, sin(t))
figure(2)
axis([-1, 5, -3, 6])
plot([1, 4, 5, -2], 's')
show()