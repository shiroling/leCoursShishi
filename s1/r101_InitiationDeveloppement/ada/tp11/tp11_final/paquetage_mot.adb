with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body paquetage_Mot is

   -----------
   -- unMot --
   -----------

   function unMot (chaine : in String) return Mot is
      m : Mot;
   begin
      m.longueur              := chaine'Length;
      m.mot (1 .. m.longueur) := chaine (chaine'First .. chaine'Last);
      return m;
   end unMot;

   ------------
   -- chaine --
   ------------

   function chaine (m : in Mot) return String is
   begin
      return String (m.mot (1 .. longueur (m)));
   end chaine;

   ----------
   -- egal --
   ----------

   function egal (m1 : in Mot; m2 : in Mot) return Boolean is
   begin
      -- si les deux chaines ont des longueurs differentes alors
      --      retourner FAUX
      -- sinon
      --      comparer lettre a lettre chaque mot
      --      si une lettre est differente alors
      --         retrourner FAUX
      --      sinon
      --         retourner VRAI
      return false;
   end egal;

   ----------
   -- inf --
   ----------

   function inf (m1 : in Mot; m2 : in Mot) return Boolean is
      i            : Integer;
      longueur_min : Integer;
   begin
      -- calculer longueur_min qui est la longgueur du mot le plus court
      -- comparer lettre a lettre des deux mots sur la longueur min
      -- comparaison des deux premieres lettres differentes
      -- cas 1 : mots égaux => retourner FAUX
      -- cas 2 : mot 1 inclus dans mot 2 => retourner VRAI
      -- cas 3 : comparaison première lettre différente
      --        => retourner VRAI si la lettre de mot1 < mot2
      --        et FAUX sinon
      return False;
    end inf;

   -------------------
   -- concatenation --
   -------------------

   function concatenation (m1 : in Mot; m2 : in Mot) return Mot is
      m : Mot;
   begin
      -- lever l'exception DEBORDEMENT
      -- si longueur (m1) + longueur (m2) >= LONGUEUR_NOM
      -- calcul de la longueur du mot
      -- recopie des lettres de m1 dans m
      -- recopie des lettres de m2 dans m
        return m;
   end concatenation;

   --------------
   -- longueur --
   --------------

   function longueur (m : in Mot) return Integer is
   begin
      return m.longueur;
   end longueur;

   ----------
   -- ieme --
   ----------

   function ieme (m : in Mot; i : in Integer) return Character is
   begin
      if i < 0 or i > LONGUEUR_NOM then
         raise TRANCHE_INVALIDE;
      end if;
      return m.mot (i);
   end ieme;

   -------------------
   -- afficher_mot --
   -------------------

   procedure afficher_mot (m : in Mot) is
   begin
      Put (m.mot (1 .. m.longueur));
   end afficher_mot;

   ---------------------------------
   -- afficher_mot_avec_longueur --
   ---------------------------------

   procedure afficher_mot_avec_longueur (m : in Mot) is
   begin
      Put (m.mot (1 .. m.longueur));
      Put (" ** lg=");
      Put (m.longueur, 0);
   end afficher_mot_avec_longueur;

end paquetage_Mot;
