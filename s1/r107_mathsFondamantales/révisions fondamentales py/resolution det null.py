import numpy as np
import numpy.linalg as nl
import sympy as sm


# Membre 1 et 2
A=sm.Matrix([
				[3,-5,1],
				[1,-2,2],
				[5,-8,0]
			])

B=sm.Matrix([
				[3],
				[7],
				[-1]
			])

# On déclare des symboles ou variables
# autant que de termes dans le membre 1 
# de chaque équation  (ici 4)

x, y, z=sm.symbols("x y z")

# On calcule et stoke dans "X" la solution
# linsolve((MEMBRE_1, MEMBRE_2), [LISTE_SYMBOLES])
X=sm.linsolve( (A,B) ,    [x, y, z])

# On affiche la réponce
print("l'ensemble des solutions du système est S="+str(X))
