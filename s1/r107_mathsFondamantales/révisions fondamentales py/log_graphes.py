# faire des graphes en py

#bilio de maths et de graphiques
import numpy as np
import matplotlib.pyplot as plt

#déclaration de la figure, on y ajoute un titre
plt.figure(1)
plt.title("Log graphs")

#on crée un écart de valeures logarithmique
#ici de 0 à 10^^6 avec un précision de 1000
x=np.logspace(0,6,1000)

# le graphique abscice 't' ordinées 'sin(t)'
# le style de la courbe est définit par le 3éme argument
# la courbe porte un nom en 4éme argument
plt.loglog(x,x,label="f1")						# ici les 2 axes sont log
plt.semilogx(x, np.log2(x),label='f2')			# ici seul les abscices sont log
plt.semilogy(x, np.log(x),label='f3')			# ici seul les ordonnées sont log

#on affiche
plt.show()