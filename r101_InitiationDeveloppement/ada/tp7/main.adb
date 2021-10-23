with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

procedure main is

    MAX_LENGTH : constant Integer := 40;
    type TabEntiers is array (0 .. MAX_LENGTH) of Integer;
    type TabCharacter is array (0 .. MAX_LENGTH) of Character;

    TYPE Message is record
        texte: TabCharacter;
        nbChar: Integer;
        cle: Integer;
    end record;

    procedure lireMessage(mess: in out Message) is
        i: Integer;
        begin
            i:= 0;
                put("Ecrit ton mot");
                    while i<mess.nbChar and i<MAX_LENGTH loop
                        get(mess.texte(i));
                        i:= i+1;
                    end loop;
        end lireMessage;

    procedure printMessage (mess: in Message) is
        i: Integer; 
        begin
            i:= 0;
            while i< mess.nbChar loop
                put(mess.texte(i));
                i:= i+1;
            end loop;
        end printMessage;

    procedure decriptMessage (mess: in Message) is
        i: Integer; 
        begin
            i:= 0;
            while i< mess.nbChar loop
                put(Character'Val(mess.cle+ Character-pos(mess.texte(i)));--'
                i:= i+1;
            end loop;
        end decriptMessage;

    message1: Message;

begin
    message1:=4;
    lireMessage(message1);
    decriptMessage(message1);

end main;