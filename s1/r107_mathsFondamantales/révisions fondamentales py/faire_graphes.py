# faire des graphes en py

#bilio de maths et de graphiques
import numpy as np
import matplotlib.pyplot as plt

#déclaration de la figure, on y ajoute un titre
plt.figure(1)
plt.title("Une parabole et des points alignés")

#on crée un écart de valeures 
#ici de 1 à 10 tout les 0.01
t= np.arange(1, 10,0.01)

# Création de la courbe
plt.plot(t,	2*np.log10(t)+(x**3)/2+ 4*(x**2)+ np.exp(-x), ,  label='label de courbe')
# Les points sur la courbe
#plt.plot(-3, -23, 'o', label='pt 1


#on donne des noms aux axes
plt.xlabel("x")
plt.ylabel("y")

#on affiche
plt.show()