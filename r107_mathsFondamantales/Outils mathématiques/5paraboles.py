# -*- coding: utf-8 -*-
from numpy import*
from matplotlib.pyplot import*

figure(3)
title("Les courbes puissances")
x=linspace(-1,10,1000)
#plot(x,x,label='f1, bissectrice',color='red')
#plot(x,(x**2),label='f2, x²')
#plot(x,x**(1/2),label='f3, sqrt(x)')
#plot(x,x**3,label='f4, x^5')
#plot(x,2**x,label='f5, exp2(x)')
#plot(x,10**x,label='f5, exp0,5(x)')
legend()
xlabel("x")
ylabel("y")
axis([-1,10,0,1000])

