
with    Ada.Integer_Text_IO;use Ada.Integer_Text_IO;
with    Ada.Text_IO;           use Ada.Text_IO;
with    Numeric_Tests;         use Numeric_Tests; 


procedure somme is

    MAX_LENGTH : constant Integer := 40;
    type TabInteger is array (0 .. MAX_LENGTH -1) of Integer;

    type Polynome is record
        coefficients : TabInteger;
        degree : Integer;
    end record;

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


    procedure askPolyn(polyn: out Polynome) is
    i: Integer;
    marqueurFin: Integer;
    begin
        put("Que voulez-vous comme marqueur de fin ? ");
        get(marqueurFin);
        P.degre:=-1;
        i:=0;
        while i<NbCoefs and P.coefficients(i-1)/=marqueurFin loop
            get(P.coefficients(i));
            i:=i+1;
            P.degre:=P.degre+1;
        end loop;
        put(i); put(p.degre);
    end askPolyn;

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
    exp1: Polynome;

begin
    askPolyn(exp1);
end somme;
