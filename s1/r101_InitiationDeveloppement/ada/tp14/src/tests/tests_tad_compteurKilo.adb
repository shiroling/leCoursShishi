with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

with TAD_Compteur; use TAD_Compteur;

package body tests_TAD_CompteurKilo is

   ----------------------------------
   -- Pour pouvoir faire les tests --
   ----------------------------------

    function unCptKilo (c : in Integer ; d : Integer ; u : Integer) return cptKilo is
      centaines : compteur;
      dizaines : compteur;
      unites : compteur;
    begin
      -- verification de la valeur initiale
      if c < 0 or c > 9 or d < 0 or c > 9 or u<0 or u>9 then
         raise VALEUR_INVALIDE;
      end if;
      -- unites
      unites := unCompteur;
      for i in 1 .. u loop
         unites := ajouterUn (unites);
      end loop;
      -- dizaines
      dizaines := unCompteur;
      for i in 1 .. d loop
         dizaines := ajouterUn (dizaines);
      end loop;
      -- centaines
      centaines := unCompteur;
      for i in 1 .. c loop
         centaines := ajouterUn (centaines);
      end loop;
      -- retour du compteur kilometrique
      return unCptKilo(centaines,dizaines,unites);
   end unCptKilo;

   --------
   -- P1 --
   --------

   procedure P1 is
      cpt : cptKilo;
      u : compteur;
      d : compteur;
      c : compteur;
   begin
      -- calcul unités
      u := unCompteur;
      for i in 1..3 loop
         u := ajouterUn(u);
      end loop;
      -- calcul dizaines
      d := unCompteur;
      for i in 1..2 loop
         d:= ajouterUn(d);
      end loop;
      -- calcul centaine
      c := unCompteur;
      c := ajouterUn(c);
      -- construction du compteur
      cpt := unCptKilo(c, d, u);
      -- vérifications
      put("La propriété P1 qui vérifie le chiffre des unités est ");
      if valeur(obtenirUnite (cpt) )= 3 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
    end P1;

   --------
   -- P2 --
   --------

   procedure P2 is
      cpt : cptKilo;
      u : compteur;
      d : compteur;
      c : compteur;
   begin
      -- calcul unités
      u := unCompteur;
      for i in 1..3 loop
         u := ajouterUn(u);
      end loop;
      -- calcul dizaines
      d := unCompteur;
      for i in 1..2 loop
         d:= ajouterUn(d);
      end loop;
      -- calcul centaine
      c := unCompteur;
      c := ajouterUn(c);
      -- construction du compteur
      cpt := unCptKilo(c, d, u);
      -- vérifications
      put("La propriété P2 qui vérifie le chiffre des dizaines est ");
       if valeur(obtenirDizaine (cpt)) = 2 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P2;

   --------
   -- P3 --
   --------

   procedure P3 is
     cpt : cptKilo;
      u : compteur;
      d : compteur;
      c : compteur;
   begin
      -- calcul unités
      u := unCompteur;
      for i in 1..3 loop
         u := ajouterUn(u);
      end loop;
      -- calcul dizaines
      d := unCompteur;
      for i in 1..2 loop
         d:= ajouterUn(d);
      end loop;
      -- calcul centaine
      c := unCompteur;
      c := ajouterUn(c);
      -- construction du compteur
      cpt := unCptKilo(c, d, u);
      -- vérifications
      put("La propriété P3 qui vérifie le chiffre des centaines est ");
       if valeur(obtenirCentaine (cpt)) = 1 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P3;

   --------
   -- P4 --
   --------

   procedure P4 is
      cpt : cptKilo;
      u : compteur;
      d : compteur;
      c : compteur;
   begin
      -- calcul unités
      u := unCompteur;
      for i in 1..3 loop
         u := ajouterUn(u);
      end loop;
      -- calcul dizaines
      d := unCompteur;
      for i in 1..2 loop
         d:= ajouterUn(d);
      end loop;
      -- calcul centaine
      c := unCompteur;
      c := ajouterUn(c);
      -- construction du compteur
      cpt := unCptKilo(c, d, u);
      put("La propriété P4 qui vérifie la valeur d'un compteur est ");
      if valeur (cpt) = 123 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P4;

   ---------
   -- P5a --
   ---------

   procedure P5a is
      c1 : cptKilo;
      c2 : cptKilo;
   begin
      c1 := unCptKilo (1,2,3);
      c2 := unCptKilo (3,2,1);
     put("La propriété P5a qui vérifie la comparaison de deux compteur est ");
      if inf (c1, c2) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P5a;

   ---------
   -- P5b --
   ---------

   procedure P5b is
      c1 : cptKilo;
      c2 : cptKilo;
   begin
      c1 := unCptKilo (3,2,1);
      c2 := unCptKilo (1,2,3);
      put("La propriété P5b qui vérifie la comparaison de deux compteur est ");
      if not inf (c1, c2) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P5b;

   ---------
   -- P5c --
   ---------

   procedure P5c is
      c1 : cptKilo;
      c2 : cptKilo;
   begin
      c1 := unCptKilo (1,2,3);
      c2 := unCptKilo (1,2,3);
      put("La propriété P5c qui vérifie la comparaison de deux compteur est ");
      if not inf (c1, c2) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P5c;

   --------
   -- P6a --
   --------

   procedure P6a is
      c1 : cptKilo;
      c2 : cptKilo;
   begin
      c1 := unCptKilo (1,2,3);
      c2 := unCptKilo (3,2,1);
     put("La propriété P6a qui vérifie l'égalité de deux compteur est ");
      if not egal (c1, c2) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P6a;

   ---------
   -- P6b --
   ---------

   procedure P6b is
      c1 : cptKilo;
      c2 : cptKilo;
   begin
      c1 := unCptKilo (3,2,1);
      c2 := unCptKilo (1,2,3);
     put("La propriété P6a qui vérifie l'égalité de deux compteur est ");
      if not egal (c1, c2) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P6b;

   ---------
   -- P6c --
   ---------

   procedure P6c is
      c1 : cptKilo;
      c2 : cptKilo;
   begin
      c1 := unCptKilo (1,2,3);
      c2 := unCptKilo (1,2,3);
      put("La propriété P6c qui vérifie l'égalité de deux compteur est ");
     if egal (c1, c2) then
         Put_Line ("La propriété P6c est OK");
      else
         Put_Line ("La propriété P6c est KO");
      end if;
   end P6c;

   --------
   -- P7 --
   --------

   procedure P7 is
      cpt   : cptKilo;
      u : compteur;
   begin
      cpt := unCptKilo (1,2,3);
      u   := unCompteur;
      modifierUnite (cpt,u);
      -- vérifier la propriété
       put("La propriété 7 qui vérifie modification des unité d'un compteur est ");
     if valeur (obtenirUnite(cpt)) = valeur(u) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P7;

   --------
   -- P8 --
   --------

   procedure P8 is
      cpt   : cptKilo;
      d : compteur;
   begin
      cpt := unCptKilo (1,2,3);
      d   := unCompteur;
      modifierDizaine (cpt,d);
      -- vérifier la propriété
      put("La propriété 8 qui vérifie modification des dizaines d'un compteur est ");
     if valeur (obtenirDizaine(cpt)) = valeur(d) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P8;

   --------
   -- P9 --
   --------

   procedure P9 is
      cpt   : cptKilo;
      c : compteur;
   begin
      cpt := unCptKilo (1,2,3);
      c   := unCompteur;
      modifierCentaine (cpt,c);
      -- vérifier la propriété
      put("La propriété 9 qui vérifie modification des centaines d'un compteur est ");
     if valeur (obtenirCentaine(cpt)) = valeur(c) then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P9;

   ----------
   -- P10a --
   ----------

   procedure P10a is
      cpt : cptKilo;
   begin
      cpt := unCptKilo (1,3,4);
      ajouterUnKilometre (cpt);
      put("La propriété 10a qui vérifie l'incrémentation d'un compteur est ");
    if valeur(cpt) = 135 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P10a;

   ----------
   -- P10b --
   ----------

   procedure P10b is
      cpt : cptKilo;
   begin
      cpt := unCptKilo (1,3,9);
      ajouterUnKilometre (cpt);
      put("La propriété 10b qui vérifie l'incrémentation d'un compteur est ");
    if valeur(cpt) = 140 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P10b;

   ----------
   -- P10c --
   ----------

   procedure P10c is
      cpt : cptKilo;
   begin
      cpt := unCptKilo (1,9,9);
      ajouterUnKilometre (cpt);
      put("La propriété 10c qui vérifie l'incrémentation d'un compteur est ");
    if valeur(cpt) = 200 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P10c;

   ---------
   -- P10d --
   ---------

   procedure P10d is
      cpt : cptKilo;
   begin
      cpt := unCptKilo (9,9,9);
      ajouterUnKilometre (cpt);
      Put_Line ("La propriété P10d est KO");
   exception
       when COMPTEUR_DEPASSE =>
         Put_Line ("La propriété P10d est OK");
      when others =>
         Put_Line ("La propriété P10d est KO - autre exception levee");
end P10d;

   --------
   -- P11 --
   --------

   procedure P11 is
      cpt : cptKilo;
   begin
      cpt := unCptKilo (1,3,4);
      remettreAZero (cpt);
         Put ("La propriété P11 qui vérifie la remise à zéro d'un compteur est");
      if valeur(cpt) = 0 then
         Put_Line ("OK");
      else
         Put_Line ("KO");
      end if;
   end P11;

end tests_TAD_CompteurKilo;
