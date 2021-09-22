from numpy import *

l=[4, 5, 9, 24]
m= sum(l) / len(l)
l.sort()
mediane = len(l) // 2
mediane  = (l[mediane] + l[~mediane]) /2
print(m)
print(mediane)