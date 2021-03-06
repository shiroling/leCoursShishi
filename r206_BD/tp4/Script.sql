-- Ext 2:
select IDP,LIBELLE,ESTCELEBRE
FROM prenom
WHERE LIBELLE  = 'Bérénice';


-- Ext 3:
SELECT count(libelle) nbTotal, count(ESTCELEBRE) nbCelebre, count(libelle)-COUNT(ESTCELEBRE) 
FROM PRENOM p

-- Ext 4:
select count(*) nb from prenom WHERE ESTCELEBRE IS NULL;

-- Ext 5:
SELECT sum(n.NB)
FROM PRENOM p, NAISSANCE n 
WHERE n.IDP = p.IDP
AND p.LIBELLE = 'Fox'

-- Ext 6:
select libelle
from prenom
where libelle like 'Z%rr%'

-- Ext 7:
SELECT LIBELLE, REGEXP_COUNT(LIBELLE ,'e')
FROM PRENOM
WHERE REGEXP_COUNT(LOWER(LIBELLE) ,'e') >=4

-- Ext 8:
SELECT p1.LIBELLE 
FROM PRENOM p1
MINUS
SELECT p2.LIBELLE
FROM PRENOM p2, NAISSANCE n
WHERE p2.IDP = n.IDP

SELECT p1.LIBELLE 
FROM PRENOM p1
WHERE IDP NOT IN (SELECT p2.IDP 
				  FROM PRENOM p2, NAISSANCE n
				  WHERE p2.IDP = n.IDP );
				 
				 
-- Ext 9:
SELECT sum(n.NB)
FROM NAISSANCE n 

-- Ext 10:
SELECT n.CODE, sum(n.NB)
FROM NAISSANCE n
GROUP BY n.CODE 
ORDER BY 2 DESC 

-- Ext 11:
SELECT n.ANNEE AS "Année de naissance", SUM(n.NB) AS "nombre de Barack"
FROM NAISSANCE n , PRENOM p
WHERE n.IDP = p.IDP 
AND p.LIBELLE = 'Barack'
GROUP BY n.ANNEE 
ORDER BY 1

-- Ext 12:
SELECT p.libelle RESULTAT
FROM PRENOM p

SELECT p2.IDP, SUM(n.NB)
FROM PRENOM p2, NAISSANCE n, ETAT e 
WHERE p2.IDP = n.IDP
AND e.CODE = n.CODE 
AND e.CODE = 'CA'
AND n.SEXE = 'F'
AND n.ANNEE = 2012
GROUP BY p2.IDP, 
HAVING SUM(n.NB)  MAX(n.NB) 
ORDER BY 2 DESC
FETCH FIRST 1 ROWS ONLY;
	
-- Ext 13
SELECT p.libelle
FROM PRENOM p, ETAT e, NAISSANCE n
WHERE p.IDP = n.IDP
AND n.CODE = e.CODE
AND e.CODE = 'CA'
INTERSECT  
SELECT p.libelle
FROM PRENOM p, ETAT e, NAISSANCE n
WHERE p.IDP = n.IDP
AND n.CODE = e.CODE
AND e.CODE = 'CO'
INTERSECT 
SELECT p.libelle
FROM PRENOM p, ETAT e, NAISSANCE n
WHERE p.IDP = n.IDP
AND n.CODE = e.CODE
AND e.CODE = 'FL'
INTERSECT
SELECT p1.libelle
FROM PRENOM p1, ETAT e1, NAISSANCE n1
WHERE p1.IDP = n1.IDP
AND n1.CODE = e1.CODE
AND e1.CODE = 'LA'
INTERSECT 
SELECT p1.libelle
FROM PRENOM p1, ETAT e1, NAISSANCE n1
WHERE p1.IDP = n1.IDP
AND n1.CODE = e1.CODE
AND e1.CODE = 'MA'
INTERSECT
SELECT p1.libelle
FROM PRENOM p1, ETAT e1, NAISSANCE n1
WHERE p1.IDP = n1.IDP
AND n1.CODE = e1.CODE
AND e1.CODE = 'TX'
INTERSECT
SELECT p1.libelle
FROM PRENOM p1, ETAT e1, NAISSANCE n1
WHERE p1.IDP = n1.IDP
AND n1.CODE = e1.CODE
AND e1.CODE = 'UT'

-- Ext 14:
SELECT AVG(X)
FROM (SELECT p.libelle, LENGTH(p.LIBELLE) AS X
	FROM PRENOM p
	GROUP BY p.LIBELLE)










