# -*- coding: utf-8 -*-
from numpy import*
from matplotlib.pyplot import*

figure(3)
title("Les courbes puissances")
x=linspace(1,10,1000)
plot(x,x**2,label='f1',color='red')
plot(x,(x**1.1),label='f2')
plot(x,x**0.6,label='f3')
title("Exercice 17")
#%%
x=linspace(0.01,5,1000)
plot(x,log2(x),label='f1',color='red')
plot(x,log(x),label='f2')
plot(x,log10(x),label='f3')
figure(4)
#%%
title("Exercice 18")
x=linspace(0.5,5,1000)
plot(x,x**2,label='f1',color='red')
plot(x,log(x),label='f2')
plot(x,2**x,label='f3')
axis([0.5,5])
legend()
xlabel("x")
ylabel("y")
#%%
title("Exercice 19")
x=linspace(0,1600,1000)
plot(x,x**2,label="f1")
plot(x,1.01**x,label="f2")
legend()
xlabel("x")
ylabel("y")
#axis([1,40])
l=[]
l2=[]
l.append(2**2)
l2.append(1.1**2)
for i in range(1,4):
    l.append((10**i)**2)
    l2.append(1.01**(10**i))
print(l)
print(l2)
#%%
#%%
