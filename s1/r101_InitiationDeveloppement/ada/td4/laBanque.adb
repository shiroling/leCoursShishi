with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure laBanque  is
    i: Integer;
    n10: Integer;
    n20: Integer;
    n50: Integer;
    totalBillets: Integer;    

    function sommeCaisse(nb50: in Integer; nb20: in Integer; nb10: in Integer) return Integer is
    begin
    return 50*nb50+20*nb20+10*nb10;
    end sommeCaisse;

begin
    totalBillets:= sommeCaisse(1, 1 ,1);
    put(totalBillets);


end laBanque;

