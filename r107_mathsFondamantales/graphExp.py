# -*- coding: utf-8 -*-
"""
Created on Wed Oct 20 10:18:52 2021

@author: shiro
"""
from numpy import *
from matplotlib.pyplot import *


def func_name(x):
    Figure(1)
    t=arrange(-3, 3, 0.01)
    plot(t, sin(t))
    figure(2)
    axis([-1, 5, -3, 6])
    plot([1,4,5,-2], 's')
    show()