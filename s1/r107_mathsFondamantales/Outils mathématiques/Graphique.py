# -*- coding: utf-8 -*-
from numpy import*
from matplotlib.pyplot import*
l=[]
def fibonaci():
    a,b=1,1
    for i in range(20):
        a,b=a+b,a
        l.append(b)
figure(3)
title("Une parabole et des points alignés")
t2=arange(0,20,1)
fibonaci()
plot(t2,l,'s',label='Une jolie courbe')
xlabel("t")
ylabel("y")
axis([0,10,0,100])
legend()
#show()
print(l)