pakage cesar is

    MAX_LENGTH : constant Integer := 40;
    type TabEntiers is array (0 .. MAX_LENGTH) of Integer;
    type TabCharacter is array (0 .. MAX_LENGTH) of Character;

    TYPE Message is record
        texte: TabCharacter;
        nbChar: Integer;
        cle: Integer;
    end record;

    procedure lireMessage(mess: in out Message); 

end cesar