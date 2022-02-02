with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body paquetage_Mot is

 
   function unMot (chaine : in String) return Mot is
      m : Mot;
      begin
         m.longueur              := chaine'Length;
         m.mot (1 .. m.longueur) := chaine (chaine'First .. chaine'Last);
         return m;
      end unMot;

   function chaine (m : in Mot) return String is
      begin
         return String (m.mot (1 .. longueur (m)));
      end chaine;

   function egal (m1 : in Mot; m2 : in Mot) return Boolean is
      begin
         return m1.longueur = m2.longueur and m1.mot(1..m1.longueur) = m2.mot(1..m2.longueur);
      end egal;



   function inf (m1 : in Mot; m2 : in Mot) return Boolean is
   begin
      return m1.mot(1..m1.longueur) < m2.mot(1..m2.longueur);
    end inf;

 --------
   -- concatenation --
 --------

   function concatenation (m1 : in Mot; m2 : in Mot) return Mot is
      m: Mot;
      i: Integer;
   begin
      -- lever l'exception DEBORDEMENT
      if longueur(m1) + longueur(m2) > LONGUEUR_NOM then
         raise DEBORDEMENT;
      end if;

      m.longueur := longueur(m1) + longueur(m2);
      -- recopie des lettres de m1 dans m
      i:= 1;
      while i<=longueur(m1) loop
         m.mot(i) := m1.mot(i);
         i:= i+1;
      end loop;
       -- recopie des lettres de m2 dans m
      while i<=longueur(m2)+longueur(m1) loop
         m.mot(i) := m2.mot(i);
         i:= i+1;
      end loop;
        return m;
   end concatenation;

 ---
   -- longueur --
 ---

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

 --------
   -- afficher_mot --
 --------

   procedure afficher_mot (m : in Mot) is
   begin
      Put (m.mot (1 .. m.longueur));
   end afficher_mot;

 ----------------------
   -- afficher_mot_avec_longueur --
 ----------------------

   procedure afficher_mot_avec_longueur (m : in Mot) is
   begin
      Put (m.mot (1 .. m.longueur));
      Put (" ** lg=");
      Put (m.longueur, 0);
   end afficher_mot_avec_longueur;

end paquetage_Mot;
