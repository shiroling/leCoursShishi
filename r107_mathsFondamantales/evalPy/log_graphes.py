# faire des graphes en py

#bilio de maths et de graphiques
import numpy as np
import matplotlib.pyplot as plt

#déclaration de la figure, on y ajoute un titre
plt.figure(1)
plt.title("Log graphs")

#on crée un écart de valeures logarithmique
#ici de 0 à 10^^5 avec un précision de 1000
t=np.logspace(0,5,100)

#creation de la courbe
plt.loglog(t ,2*np.log10(t)+(t**3)/2+ 4*(t**2)+ np.exp(-t),label="f1")						# ici les 2 axes sont log

#on affiche
plt.show()