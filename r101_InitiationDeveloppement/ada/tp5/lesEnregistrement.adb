

with ada.Text_IO; use ada.Text_IO;
with ada.Integer_Text_IO; use ada.Integer_Text_IO;

-- Programme principal
procedure rembourserDette is

	type Enr is record
		n50: Integer;
		n20: Integer;
		n10: Integer;
	end record;
   -- calcule la somme disponible en caisse
   -- Pr�-Condition : Les nombres de billets n50, n20 et n10 doivent �tre positifs ou nuls.
   -- Post-Condition : le r�sultat doit �tre �gal � n50*50+n20*20+n10*10
   function sommeCaisse (n50: in Integer; n20: in Integer; n10 : in Integer)
                         return Integer is
   begin

      return (n50*50+n20*20+n10*10);

   end sommeCaisse;

   -- calcule la nouvelle dette d restant � payer en fonction
   -- du nombre n de billets disponibles en caisse d'une valeur  v donn�e ; 
   -- d�termine le nombre nb de billets d�livr�s de cette valeur
   -- en remboursement de tout ou partie de la dette d;
   procedure CalculerDetteRestante (d : in out Integer ; n : in Integer ;
                                    valeur : in Integer ; nb : out Integer) is
   begin

      if d/valeur <= n then
         nb := d/valeur;
      else
         nb:= n;
      end if;
	  d:= d - nb*valeur;


   end CalculerDetteRestante;

   --b50,b20,b10 : integer ; --Nrb de billets de 50, 20 et 10 euros en caisse
   caisse: Enr;
	dette : integer ; --Dette due
   --nb50,nb20,nb10 : integer ; --Nrb de billets de 50, 20 et 10 euros d�pens�s
	depense: Enr;
begin

   -- lire le nombre de billets de 50, 20 et 10 disponibles en caisse
   put ("Combien y-a-t-il de billets de 50 euros ? ");
   get (b50);
   put ("Combien y-a-t-il de billets de 20 euros ? ");
   get (b20);
   put ("Combien y-a-t-il de billets de 10 euros ? ");
   get (b10);

     -- calculer et �crire la somme disponible en caisse
   put ("Le montant de la caisse est ");
   put (sommeCaisse(n50=>b50,n20=>b20,n10=>b10)); put_line (" euros");

   -- lire le montant de la dette � rembourser
   put ("Quel est le montant de la dette � rembourser ? ");
   get (dette);
   put ("La dette a rembourser est de "); put (dette); put_line (" euros.");
  
   -- calculer la dette apr�s remboursement avec des billets de 50 euros
   calculerDetteRestante (d=>dette, n=>b50, valeur=>50, nb=>nb50);
   -- calculer la dette apr�s remboursement avec des billets de 20 euros
   calculerDetteRestante (d=>dette, n=>b20, valeur=>20, nb=>nb20);
   -- calculer la dette apr�s remboursement avec des billets de 10 euros
   calculerDetteRestante (d=>dette, n=>b10, valeur=>10, nb=>nb10);


   -- �crire le nombre de billets de 50, 20 et 10 d�livr�s
   put ("Vous avez d�epense: ");
   put (sommeCaisse(n50=>nb50, n20=>nb20, n10=>nb10)); put_line(" euros, soit:");
   put (nb50); put_line(" billets de 50 euros");
   put (nb20); put_line("billets de 20 euros");
   put (nb10); put_line(" billets de 10 euros");


   -- �crire le montant de la dette restant � rembourser
   put ("Le montant de la dette restante est de ");
   put (dette); put_line (" euros");

   -- calculer et �crire la somme disponible en caisse
   put ("La somme restante disponible en caisse est de ");
   put (sommeCaisse(n50=>b50-nb50, n20=>b20-nb20,n10=> b10-nb10));
   put_line (" euros"); new_line ;
 end rembourserDette;