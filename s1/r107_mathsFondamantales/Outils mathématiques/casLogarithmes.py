# faire des graphes en py

#bilio de maths et de graphiques
import numpy as np
import matplotlib.pyplot as plt

#déclaration de la figure, on y ajoute un titre
plt.figure(1)
plt.title("Une parabole et des points alignés")

#on crée un écart de valeures 
#ici de -3 à 3 tout les 0.01
t= np.arange(-3, 15,0.05)

# le graphique abscice 't' ordinées 'sin(t)'
# le style de la courbeest définit par le 3éme argument
# la courbe porte un nom en 4éme argument
plt.loglog(t,	np.sin(t), label='label de courbe')

#on fixe des échelles aux axes
plt.axis([0 ,15,-1.1,1.1])
#    |  x  |  y  |

#on affiche
plt.show()