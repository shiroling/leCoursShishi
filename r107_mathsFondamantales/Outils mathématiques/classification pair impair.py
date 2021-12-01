# -*- coding: utf-8 -*-
from random import randint
pair=[]
impair=[]
liste = []
for i in range(50):
    liste.append( randint(0, 1000) )
for i in liste :
    if i%2==0 : 
        pair.append(i)
    else : 
        impair.append(i)
print("La liste des nombres impairs", sorted(impair))
print("La liste des nombres pairs", sorted(pair))

        
