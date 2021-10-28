# -*- coding: utf-8 -*-
"""
Created on Wed Oct  6 07:20:20 2021

@author: shiro
"""

import numpy as np
import matplotlib.pyplot as plt

plt.figure(1)
t= np.arange(-2.5, 2.5)

plt.loglog(t, np.cos(t), 'r',label="oui")
plt.loglog(t, 1, ':b',label="oui")
plt.loglog(t, np.cos(t), 'r',label="oui")
plt.loglog(t, np.cos(t), 'r',label="oui")

plt.legend()
plt.show()

