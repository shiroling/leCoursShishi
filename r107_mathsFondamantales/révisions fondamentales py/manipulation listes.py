# -*- coding: utf-8 -*-
# On importe une bibli pour faire de l'alléatoire
from random import randint

# On définit 3 tableaux
pair  = []
impair= []
liste = []

# On replis le tableau 'liste' de nombres aléatoires
for i in range(50):
    liste.append( randint(0, 1000) )

# on parcourt la liste en entier
for i in liste :

    # On regarde si le nombre est pair
    if i%2==0 : 
        #si oui on l'ajoute au tableau 'pair'
        pair.append(i)
    else : 
        #si non on l'ajoute au tableau 'impair'
        impair.append(i)

# On affiche les bails
print("La liste des nombres impairs", sorted(impair))
print("La liste des nombres pairs", sorted(pair))