with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body TAD_CompteurKilo is

   ---------------
   -- unCptKilo --
   ---------------
   function unCptKilo
     (c : in compteur; d : compteur; u : compteur) return cptKilo
   is
      cptK : cptKilo;
   begin
      cptK.unites    := u;
      cptK.dizaines  := d;
      cptK.centaines := c;
      return cptK;
   end unCptKilo;

   ------------------
   -- obtenirUnite --
   ------------------

   function obtenirUnite (c : in cptKilo) return compteur is
   begin
      return c.unites;
   end obtenirUnite;

   --------------------
   -- obtenirDizaine --
   --------------------

   function obtenirDizaine (c : in cptKilo) return compteur is
   begin
      return c.dizaines;
   end obtenirDizaine;

   ---------------------
   -- obtenirCentaine --
   ---------------------

   function obtenirCentaine (c : in cptKilo) return compteur is
   begin
      return c.centaines;
   end obtenirCentaine;

   ------------
   -- valeur --
   ------------

   function valeur (c : in cptKilo) return Integer is
   begin
      return
        valeur (c.unites) + valeur (c.dizaines) * 10 +
        valeur (c.centaines) * 100;
   end valeur;

   ---------
   -- inf --
   ---------

   function inf (c1 : in cptKilo; c2 : in cptKilo) return Boolean is
   begin
      return valeur (c1) < valeur (c2);
   end inf;

   ----------
   -- egal --
   ----------

   function egal (c1 : in cptKilo; c2 : in cptKilo) return Boolean is
   begin
      return valeur (c1) = valeur (c2);
   end egal;

   -------------------
   -- modifierUnite --
   -------------------

   procedure modifierUnite (c : in out cptKilo; v : in compteur) is
   begin
      c.unites := v;
   end modifierUnite;

   ---------------------
   -- modifierDizaine --
   ---------------------

   procedure modifierDizaine (c : in out cptKilo; v : in compteur) is
   begin
      c.dizaines := v;
   end modifierDizaine;

   ----------------------
   -- modifierCentaine --
   ----------------------

   procedure modifierCentaine (c : in out cptKilo; v : in compteur) is
   begin
      c.centaines := v;
   end modifierCentaine;

   ------------------------
   -- ajouterUnKilometre --
   ------------------------

   --  procedure ajouterUnKilometre (c : in out cptKilo) is begin
   --    -- vÃ©rification depassement du compteur
   --     if valeur(c)>998 then
   --        raise COMPTEUR_DEPASSE;
   --     end if;
   --     -- mise Ã  jour du compteur
   --     c := unCptKilo(valeur(c)+1);
   --  end ajouterUnKilometre;

   procedure ajouterUnKilometre (c : in out cptKilo) is
      unite    : compteur;
      dizaine  : compteur;
      centaine : compteur;
   begin
      -- vÃ©rification depassement du compteur
      if valeur (c) > 998 then
         raise COMPTEUR_DEPASSE;
      end if;
      -- mise Ã  jour du compteur
      unite    := obtenirUnite (c);
      dizaine  := obtenirDizaine (c);
      centaine := obtenirCentaine (c);
      if valeur (unite) /= 9 then
         c := unCptKilo (centaine, dizaine, ajouterUn (unite));
      else
         if valeur (dizaine) /= 9 then
            c :=
              unCptKilo (centaine, ajouterUn (dizaine), remettreAZero (unite));
         else
            c :=
              unCptKilo
                (ajouterUn (centaine), remettreAZero (dizaine),
                 remettreAZero (unite));
         end if;
      end if;
   end ajouterUnKilometre;

   -------------------
   -- remettreAZero --
   -------------------

   procedure remettreAZero (c : in out cptKilo) is
   begin
      c.unites := remettreAZero(obtenirUnite(c));
      c.dizaines := remettreAZero(obtenirDizaine(c));
      c.centaines := remettreAZero(obtenirCentaine(c));


   end remettreAZero;

end TAD_CompteurKilo;
