with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

package animals is

    MAX_NAME : constant Integer := 17;
    MAX_ANIMALS: constant Integer := 100;
    type TabCharacter   is array (0 .. MAX_LENGTH) of Character;
    type tabEntiers     is array (0 .. MAX_ANIMALS) of Integer;
    type tabAnimaux     is array (0 .. MAX_ANIMALS) of TabCharacter;
    
    type listeAnimaux is record
        lesAnimaux: tabAnimaux;
        nbCharacters: tabEntiers;
        nbEspeces: Integer;
    end listeAnimaux;

    procedure addAnimal (a: out listeAnimaux);
    procedure afficherAnimaux (a: in listeAnimaux);
    

end animals;