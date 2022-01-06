with usager;              use usager;
with Ada.Text_IO;         use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package App  is

   DEBORDEMENT : exception;
   ALREADY_EXIST : exception;
   EMPTY_ARRAY : exception;

    MAX_LENGTH : constant Integer:= 100;
    type UserArray is array (1 .. MAX_LENGTH) of Type_Usager;

    type Type_App is record
        user_array : UserArray;
        nbUser : Integer:= 0;
    end record;

    -- Trouve un Usager dans une APP
    procedure find (app : in Type_App; user : in Type_Usager; index_pos : out Integer; finded : out Boolean);

    -- Ajoute un Usager dans une APP
    -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
    -- lève l’exception ALREADY_EXIST si plus l'element existe déjà
    procedure addLast (app : in out Type_App; user : in Type_Usager);

    -- Enlève un usager dans une APP
    -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
    -- lève l’exception EMPTY_ARRAY si l'element n'existe pas
    procedure remove (app : in out Type_App; id : in Integer);

    -- Tri ue APP par les identifiants de ses utilisateurs
    procedure sort (app : in out Type_App);

    -- Lis toutes les donnés des utilisateurs d'une APP
    procedure readApp (app : in Type_App);

end App;