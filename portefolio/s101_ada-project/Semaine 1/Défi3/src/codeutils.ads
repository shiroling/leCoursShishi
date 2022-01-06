-- inclution des bibliotéques standard
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

-- Déclaration d'un paquetage nomé "codeutils"
package codeutils is
    
    -- Création du type Enr, composé de 4 valeures entiéres.
    type Enr is record 
        c1  : Integer;
        c2  : Integer;
        c3  : Integer;
        c4  : Integer;
   end record;

   -- patrons de fonctions.   (corp à retouver dans codeutils.adb)
   procedure  lireCode (code : out Enr );
   function codeValide (code : in Enr) return Boolean;

end codeutils;