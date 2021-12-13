# faire des graphes en py

#bilio de maths et de graphiques
import numpy as np
import matplotlib.pyplot as plt

#déclaration de la figure, on y ajoute un titre
plt.figure(1)
plt.title("Une parabole et des points alignés")

#on crée un écart de valeures 
#ici de -3 à 3 tout les 0.01
t= np.arange(1, 10,0.01)

# le graphique abscice 't' ordinées 'sin(t)'
# le style de la courbeest définit par le 3éme argument
# la courbe porte un nom en 4éme argument
plt.plot(t,	2*np.log10(t)+(t**3)/2+ 4*(t**2)+ np.exp(-t),  label='label de courbe')

# Les points sur la courbe
#plt.plot(-3, -23, 'o', label='pt 1')


#on donne des noms aux axes
plt.xlabel("x")
plt.ylabel("y")

#on fixe des échelles aux axes
#plt.axis([0 ,15,-1.1,1.1])
#        |  x  |    y    |

#on affiche
plt.show()