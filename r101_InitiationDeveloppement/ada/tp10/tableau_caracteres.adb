with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Tableau_Caracteres is



   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat1 (tab : out Tab_Caracteres; n : out Integer) is
      balise: Integer := 0;

      begin
      n:=0;
         while n < TAILLE_MAX and balise =0 loop
            -- saisie
            put("Donne un charactére pour le tableau.");
            get(tab(n));

            --demander si on arréte ?  -> balise 1
            put("Tu veux insérer une autre valeure ? [ oui:0 non:1]");
            get(balise);

            n:= n+1;

         end loop;
         new_line;
      end lireFormat1;



   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat2 (tab : out Tab_Caracteres; n : out Integer) is
      nb: Integer;
      begin
         put("Combien de cases va t'on remplir?");
         get(nb);
         if nb< 0 or nb> TAILLE_MAX then
            raise DEBORDEMENT;
         end if;

         n:=0;
         while n < TAILLE_MAX and n < nb loop
            -- saisie
            put("Donne un charactére pour le tableau.");
            get(tab(n));
            n:= n+1;
         end loop;
         new_line;
      end lireFormat2;


   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat3a (tab : out Tab_Caracteres; n : out Integer) is
      val: Character;
      marqueur: Character;
      begin
         marqueur:= 'x';
         put_line("Le marqueur d'arrét est 'x'");
         put("Donnez une valeur: ");
         get(val);

         n:= 0;
         while (val /= marqueur) loop
            if n > TAILLE_MAX then
               raise DEBORDEMENT;
            end if;

            tab(n):= val;
            put("Donnez une valeur: ");
            get(val);
            n:= n+1;
         end loop;
         new_line;
      end lireFormat3a;

   -- lit n entiers et les place séquentiellement dans le tableau tab
   -- entraine 0 <= n <=TAILLE_MAX
   -- lève l’exception DEBORDEMENT si plus de TAILLE_MAX entiers sont entrés
   procedure lireFormat3b (tab : out Tab_Caracteres; n : out Integer) is 
      val: Character;
      marqueur: Character;
      begin
         put_line("Entrez un marqueur de fin: ");
         get(marqueur);

         put("Entrez une valeur: ");
         get(val);

         n:= 0;
         while (val /= marqueur) loop
            if n > TAILLE_MAX then
               raise DEBORDEMENT;
            end if;

            tab(n):= val;
            put("Donnez une valeur");
            get(val);
            n:= n+1;
         end loop;
         new_line;
      end lireFormat3b;


   -- affiche les n éléments du tableau tab
   -- nécessite 0 < n <= TAILLE_MAX
   -- lève l’exception TRANCHE_INVALIDE si n<=0 ou n > TAILLE_MAX
   procedure ecrire (tab : in Tab_Caracteres; n : in Integer) is
      i: Integer;
      begin
         if n <= 0 or n >TAILLE_MAX then
            raise TRANCHE_INVALIDE;
         end if;

         i:= 0;
         while i <n loop
            put_line("element " & Integer'Image(i) & " :" &  tab(i));
            i:= i+1;
         end loop;
      end ecrire;



   -- Cherche une occurence du charactére x dans un tableau tab en entrés
   -- Indique si touvé la position de l'élément en sortie (rang) et une valeur de vérité (TRUE si touvé ou FALSE si non trouvé)
   -- 
   procedure rechercher_occurrence(tab: in Tab_Caracteres; n:in integer; x:in Character;
                                    trouve: out boolean; rang: out integer) is
      i: Integer;
      begin
      if n< 0 or n > TAILLE_MAX then
         raise TRANCHE_INVALIDE;
      end if;

         i:= 0;
         while i< n loop
            if tab(i) = x then
               trouve:= True;
               rang:= i;
            end if;
            i:= i+1;
         end loop;
      end rechercher_occurrence;

   -- fonction retournant l'indice de la valeur minimale d'un tableau
   -- entrées: un Tab_Caractéres et sa taille n.
   function indice_valeur_Minimum(tab: in Tab_Caracteres; n: in Integer) return Integer is
      i: integer;
      minimal: integer;
      begin
         if n< 0 or n > TAILLE_MAX then
            raise TRANCHE_INVALIDE;
         end if;

         minimal:= 0; 
         i:= 0;
         while i < n loop
            if tab (i) < tab(minimal) then
               minimal:= i;
            end if;
            i:= i+1;
         end loop;
         return minimal;
      end indice_valeur_Minimum;
end Tableau_Caracteres;
