# -*- coding: utf-8 -*-
import numpy as np
def sommegeo(x,n):
    return((1-x**(n+1))/(1-x))
def valeurproche(a,p): #P la précision du calcul
    l=[]
    for i in range(p):
        l.append(a**i)
    return(round(sum(l),p))
print()
print("la somme de la suite géométrique est : ",sommegeo(2,8))
print("La valeur approché de a l'inverse de a est : ", valeurproche(-0.23,100))