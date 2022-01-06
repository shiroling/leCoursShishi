-- bibliothËques d'entrÈes sorties
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with ada.Calendar ; use ada.Calendar ;

package body usager is

   -------------------------
   -- lire_enregistrement --
   -------------------------

   procedure getUsager (enreg : out Type_Usager) is
   begin
      New_Line;
      Put_line ("Quel est le numero d'adherent de l'usager ? ");
      Get (enreg.numero_adherent);
      skip_line ;
      Put_line ("Quel est le nom de l'usager ? ");
      Get_line (enreg.nom, enreg.longueur);
      Put_line ("Quel est l'annee de naissance de l'usager ? ");
      Get (enreg.annee_naissance);
      skip_line ;
   end getUsager;

   ----------------------------
   -- ecrire_enregistrement --
   ----------------------------

   procedure putUsager (enreg : in Type_Usager) is
   begin
      New_Line;
      Put ("Le numero d'adherent de l'usager est ");
      Put (enreg.numero_adherent, 0);
      new_Line;
      Put ("Son nom est ");
      Put_Line (enreg.nom(1..enreg.longueur));
      Put ("Son annee de naissance est ");
      Put (enreg.annee_naissance, 0);
      new_line;
      new_line;
   end putUsager ;

   ----------------
   -- age_usager --
   ----------------

   function getAge (enreg : in Type_Usager) return Integer is
   begin
      return (year(clock) - enreg.annee_naissance);
   end getAge;

   -----------------------
   -- operateur affectation --
   -----------------------

   procedure affectation (enreg1 : in Type_Usager; enreg2 : out Type_Usager)is
   begin
      enreg2.nom :=enreg1.nom;
      enreg2.longueur :=enreg1.longueur;
      enreg2.annee_naissance :=enreg1.annee_naissance;
      enreg2.numero_adherent :=enreg1.numero_adherent;
   end affectation;

   -----------------------
   -- operateur affectation --
   -----------------------

   function affectation2 (enreg : in Type_Usager) return Type_Usager is
      enreg2 : Type_usager;
   begin
      enreg2.nom :=enreg.nom;
      enreg2.longueur :=enreg.longueur;
      enreg2.annee_naissance :=enreg.annee_naissance;
      enreg2.numero_adherent :=enreg.numero_adherent;
      return enreg2;
   end affectation2;
   -----------------------
   -- egalite --
   -----------------------

   function "=" (enreg1 : in Type_Usager; enreg2 : in Type_Usager)return Boolean is
   begin
       return (enreg2.nom =enreg1.nom) and
      (enreg2.longueur =enreg1.longueur) and
      (enreg2.annee_naissance =enreg1.annee_naissance);
   end "=";


   ----------------------------
   -- comparateur d'identite --
   ----------------------------

   function identityCompare (enreg1 : in Type_Usager; enreg2 : in Type_Usager)return Boolean is
   begin
       return (enreg1 = enreg2 and enreg2.numero_adherent =enreg1.numero_adherent);
   end identityCompare;

   ------------------------------------
   -- comparateur < des identifiants --
   ------------------------------------

   function "<" (enreg1 : in Type_Usager; enreg2 : in Type_Usager)return Boolean is
   begin
       return (enreg1.numero_adherent < enreg2.numero_adherent);
   end "<";

end usager;
