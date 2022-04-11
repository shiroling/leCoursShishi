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
SELECT count(n.IDP)
FROM PRENOM p, ETAT e, NAISSANCE n 
WHERE n.CODE  = e.CODE 
AND n.IDP = p.IDP
WHERE p.LIBELLE = 'fox' OR p.LIBELLE = 'Fox';


