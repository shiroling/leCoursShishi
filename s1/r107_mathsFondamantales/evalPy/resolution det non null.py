import numpy as np
import numpy.linalg as nl
import sympy as sm


# Membre 1 et 2
A=sm.Matrix([
				[1,0,3],
				[3,2,2],
				[2,1,2]
			])

B=sm.Matrix([
				[140],
				[320],
				[210]
			])


# On calcule le déterminant du 1er membre   ( on part du principe qu'il 
											# est non nul mais voilà)
print(sm.det(A))


#on inverse la matrice A
A= nl.inv(A)



# On calcule et affiche la solution par linag.solve
#print(np.solve(A,B))
