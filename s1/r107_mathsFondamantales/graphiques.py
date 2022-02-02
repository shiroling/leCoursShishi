# -*- coding: utf-8 -*-
"""
Created on Wed Oct  6 07:20:20 2021

@author: shiro
"""

import numpy as np
import matplotlib.pyplot as plt

plt.figure(1)
t= np.arange(0, 1.1, 0.01)
plt.plot(t, t**1.1, 'r',label="x^1.1")
plt.plot(t, t**2, 'c', label="x^2")
plt.plot(t, t**0.6, 'g', label="x^0.6")
plt.legend()
plt.show()