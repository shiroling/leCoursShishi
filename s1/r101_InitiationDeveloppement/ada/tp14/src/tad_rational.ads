package TAD_rational is

   DIVIDE_BY_0 : exception;

   type rational is private;

   -- retourne un relationnel avec n le numérateur et d le dénominateur
   function unRationnel (n, d: in Integer) return rational;

   -- retourne le numétateur d'un relationnel donné
   function numerateur(r : in rational) return Integer;

   -- retourne le dénominateur d'un relationnel donné
   function denominateur (r : in rational) return Integer;

   -- retourne un rationnel somme des relationnels r1 et r2 en entrée
   function somme (r1, r2 : in rational) return rational;

   -- retourne un rationnel produit des relationnels r1 et r2 en entrée
   function produit (r1, r2 : in rational) return rational;

   -- retourne le pgcd de deux nombres entiers n et d
   function pgcd(n: in Integer; d : in out Integer) return Integer;

   -- retourne un rationnel, réduction de r un relationnel en entrée
   function reduction (r : in rational) return rational;

   -- SURCHARGE OPERATEUR
   -- retourne un rationnel REDUIT de la somme des relationnels r1 et r2 en entrée
   function "+" (r1, r2 : in rational) return rational;

   -- retourne un rationnel REDUIT du produit des relationnels r1 et r2 en entrée
   function "*" (r1, r2 : in rational) return rational;




private
   type rational is record
      num    : integer;
      denum  : integer;
   end record;

end TAD_rational;
