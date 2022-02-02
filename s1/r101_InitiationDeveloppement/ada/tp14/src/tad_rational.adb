package body TAD_rational is

    -- retourne un relationnel avec n le numérateur et d le dénominateur
    function unRationnel (n, d : in Integer) return rational is 
        r: rational;

        begin
        if d = 0 then
            raise DIVIDE_BY_0;
        end if;
        
        r.num := n;
        r.denum := d;
        return r;

        end unRationnel;
    
    -- retourne le numétateur d'un relationnel donné
    function numerateur(r : in rational) return Integer is 
        begin
            return r.num;
        end numerateur;

    -- retourne le dénominateur d'un relationnel donné
    function denominateur (r : in rational) return Integer is
        begin
            return r.denum;
        end denominateur;

    -- retourne un rationnel somme des relationnels r1 et r2 en entrée
    function somme (r1, r2 : in rational) return rational is
        begin
            return unRationnel(
                        numerateur(r1) * denominateur(r2) + numerateur(r2) * denominateur(r1),
                        denominateur(r1) * denominateur(r2)
                        );
        end somme;

    -- retourne un rationnel produit des relationnels r1 et r2 en entrée
    function produit (r1, r2 : in rational) return rational is
        begin
            return unRationnel(
                numerateur(r1)*numerateur(r2),
                denominateur(r1)* denominateur(r2)
                );
        end produit;

    -- retourne le pgcd de deux nombres entiers n et d
    function pgcd(n: in Integer; d : in out Integer) return Integer is
        r: integer;

        begin
            r:= n mod d;
            if r /= 0 then
                d:= pgcd(d, r);
            end if;

            return d;
        end pgcd;

    -- retourne un rationnel, réduction de r un relationnel en entrée
    function reduction (r : in rational) return rational is 
        
        denumCom: integer:= numerateur(r);
        begin

        denumCom:= pgcd(denominateur(r), denumCom);
        return unRationnel(numerateur(r) / denumCom, denominateur(r) / denumCom);


        end reduction;

       -- retourne un rationnel REDUIT de la somme des relationnels r1 et r2 en entrée
   function "+" (r1, r2 : in rational) return rational is
        begin
            return reduction( 
                        unRationnel(numerateur(r1) * denominateur(r2) + numerateur(r2) * denominateur(r1),
                                    denominateur(r1) * denominateur(r2)
                    ));
        end "+"; 

   -- retourne un rationnel REDUIT du produit des relationnels r1 et r2 en entrée
   function "*" (r1, r2 : in rational) return rational is
        begin
            return reduction( 
                        unRationnel(numerateur(r1)*numerateur(r2),
                                    denominateur(r1)* denominateur(r2)
                    ));
        end "*";

end TAD_rational;