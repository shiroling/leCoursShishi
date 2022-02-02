# -*- coding: utf-8 -*-
from numpy import*
from matplotlib.pyplot import*

figure(3)
title("Les 7 droites")
x=linspace(-10,10,50)
plot(x,(x*(-2/3)+(7/3)),label='d1',color='red')
plot(x,(x*2-2),label='d2')
plot(x,3*x-4,label='d3')
plot(x,-x+2,label='d4')
plot(x,x*0-1,label='d5')
plot(x,-x,label='d6')
plot(x*0+7,x,label='d7')
legend()
xlabel("x")
ylabel("y")
axis([-10,10,-5,5])