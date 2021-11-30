package Tableau is

   type Tablo is array (Positive range <>) of Float;

   -- lit une suite de réels et les range dans Tab(Tab'First..Dernier)
   procedure Lire (Tab : out Tablo; Dernier : out Natural);

end Tableau;
