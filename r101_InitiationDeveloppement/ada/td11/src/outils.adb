package body Tableau_Entiers_Tries is

   procedure lire (tab : out Tab_Entiers_Tries ; n : out Integer) is

   begin

   end lire;

   procedure ecrire (tab : in Tab_Entiers_Tries ; n : in Integer) iss

   begin

   end ecrire;

   procedure rechercher_par_dichotomie(tab:in Tab_Entiers_Tries; n: in Integer; x: in Integer; trouve: out Boolean; rang: out Integer) is
      idebut:Integer;
      ifin:Integer;
      imilieu:Integer;
   begin

      idebut:=1;
      ifin:=n;
      imilieu:=(idebut+ifin)/2;

      while (idebut<=ifin and tab((idebut+ifin)/2)/=x) loop

             if x<tab(imilieu) then
                ifin := imilieu-1;
             else
                idebut:=imilieu+1
             end if;
             imilieu:=(idebut+ifin)/2

      end loop;
      if tab(imilieu):=x then
         trouve:=TRUE;
         rang:=imilieu;
      else
         trouve:=FALSE;
      end if;

end if;


   end rechercher_par_dichotomie;

end Tableau_Entiers_Tries;
