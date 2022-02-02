import numpy as np
import numpy.linalg as nl
import sympy as sm


# Membre 1 et 2
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


# On calcule le déterminant du 1er membre
print(sm.det(A))


# On calcule et affiche la solution
#print(nl.solve(A,B))
