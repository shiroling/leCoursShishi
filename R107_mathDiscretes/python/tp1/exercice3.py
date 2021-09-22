from numpy import *

l= [3, 5, 7, 8]
lodd= []
lpeer= []

for i in range(len(l)): # On n’oubliera pas le symbole ":"
    if l[i] % 2:
        lodd.append(l[i])
    else:
        lpeer.append(l[i])


print(lodd)
print(lpeer)