
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Text_IO;         use Ada.Text_IO;

procedure somme is

    MAX_LENGTH : constant Integer := 40;
    type TabEntiers is array (0 .. MAX_LENGTH -1) of Integer;
    type TabCharacter is array (0 .. MAX_LENGTH) of Character;


    procedure printTabInt (nb:in Integer; tab: in TabEntiers) is
    i: Integer; 

    begin
        i:= 0;
        while i< nb loop
            put(i); put(':'); put(tab(i));
            new_line;
            i:= i+1;
        end loop;
    end printTabInt;

    procedure printTabChar (nb:in Integer; tab: in TabCharacter) is
    i: Integer; 

    begin
        i:= 0;
        while i< nb loop
            put(tab(i));
            i:= i+1;
        end loop;
    end printTabChar;


    procedure askTab(nb: in Integer; tab: out TabEntiers) is
    i: Integer;
    begin
        i:= 0;
        while i< nb and i<MAX_LENGTH loop
            put("file une valeure pour l'indice:"); put(i); new_line;
            get(tab(i));
            i:= i+1;
        end loop;
    end askTab;

    procedure stutterword(nb: in Integer; tab1: in TabCharacter; tab2: in TabEntiers) is
    i, j :Integer;

    begin
        i:= 0;
        while i<nb loop
            j:=0;
            while j<tab2(i) loop
                put(tab1(i));
                j:= j+1;
            
            end loop;
            i:= i+1;
        end loop;
    end stutterword;
    

    function sommeTab(nb: in Integer; tab: in TabEntiers) return Integer is
    i, somme: Integer;
    begin
    i:=0; somme:= 0;
    while i< nb loop
        somme:= somme + tab(i);
        i:= i+1;
    end loop;

    return somme;
    end sommeTab;

    function diffTab(tab1: in TabEntiers; tab2: in TabEntiers; nb: in Integer) return TabEntiers is
    i: Integer;
    tab: TabEntiers;

    begin
        i:= 0;
        while i<nb  loop
            tab(i):= tab1(i)- tab2(i);
            i:=i +1;
        end loop;
        return tab;
    end diffTab;


    nbElements : Integer; -- taille reelle du tableau tab
    tab : TabEntiers;   -- tableau de nbElements.
    tabCar: TabCharacter; -- tableau de nb char.

begin

    askTab(6, tab);

    tabCar:=('p', 'r', 'i', 'n', 'c', 'e', others => ' ');
    nbElements:= 6;
    stutterword(6, tabCar, tab);

end somme;
