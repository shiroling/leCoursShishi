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
   function "="(m1 : in Mot; m2 : in Mot) return Boolean is
   begin
      --  put("m1=");afficher_mot_avec_longueur(m1);new_line;
      --  put("m2=");afficher_mot_avec_longueur(m2);new_line;
      if longueur(m1) = longueur(m2) then
             --put("meme longueur");
             for i in 1 .. longueur(m1) loop
                if m1.mot(i) /= m2.mot(i) then
                   return False;
                end if;
           end loop;
           return True;
        else
           return False;
        end if;
      --  return
      --    longueur (m1) = longueur (m2)
      --    and then m1.mot (1 .. m1.longueur) = m2.mot (1 .. m2.longueur);
   end "=";

   ----------
   -- inf --
   ----------
   function inf (m1 : in Mot; m2 : in Mot) return Boolean is
        i            : Integer;
        longueur_min : Integer;
   begin
        -- afficher_mot_avec_longueur(m1);
        -- afficher_mot_avec_longueur(m2);
        -- calcul de la longueur du mot le plus court
        longueur_min := m1.longueur;
        if m2.longueur < longueur_min then
           longueur_min := m2.longueur;
        end if;
        -- put("Longueur_min=");put(longueur_min,0);New_Line;
        -- comparaison lettre Ã  lettre des deux mots sur longueur min
        -- Elimination des lettres identiques
        i := 1;
        while i <= longueur_min and then m1.mot (i) = m2.mot (i) loop
           i := i + 1;
        end loop;
       -- comparaison des deux premieres lettres differentes
       --put("Fin de boucle : m1(");put(i,0);put(")=");put(m1.mot(i));
       --put(" m2(");put(i,0);put(")=");put(m2.mot(i)); new_line;
        -- cas 1 : mots égaux
        if i > longueur_min and then longueur(m1) = longueur(m2) then
           -- Put_Line("*** i > longueur_min => mots égaux");
            return False;
        end if;
        -- cas 2 :mot inclus
        if i > longueur_min and then m1.longueur < m2.longueur then
           -- Put_Line("*** m1.longueur < m2.longueur => mot 1 inclus dans mot 2");
           return True;
        end if;
        -- cas 3 : comparaison première lettre différente
        return m1.mot (i) < m2.mot (i);
       -- return m1.mot (1 .. m1.longueur) < m2.mot (1 .. m2.longueur);
   end inf;

   -------------------
   -- concatenation --
   -------------------
   function concatenation (m1 : in Mot; m2 : in Mot) return Mot is
      m : Mot;
   begin
      if longueur (m1) + longueur (m2) > LONGUEUR_NOM then
         raise DEBORDEMENT;
      end if;
      m.longueur := longueur (m1) + longueur (m2);
      --  for i in 1 ..longueur(m1) loop
      --     m.mot (i) := m1.mot (i);
      --  end loop;
      --  for i in 1 .. longueur(m2) loop
      --     m.mot (i + m1.longueur) := m2.mot (i);
      --  end loop;
      m.mot (1 .. m.longueur) :=
        m1.mot (1 .. m1.longueur) & m2.mot (1 .. m2.longueur);
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
