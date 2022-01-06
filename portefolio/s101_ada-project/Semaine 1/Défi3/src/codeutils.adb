package body codeutils is     

   -- lit et range 4 entiers dans l'enregistrement code
   procedure  lireCode (code : out Enr ) is 
   
   begin
      
      -- Lecture et stokage des entrées une à une.
      put_line ("Entrer la premiere chiffre du code d'identification de 4 chiffres : ");
      get(code.c1);
      put_line ("Entrer la deuxieme chiffre du code d'identification de 4 chiffres : ");
      get(code.c2);
      put_line ("Entrer la troisieme chiffre du code d'identification de 4 chiffres : ");
      get(code.c3);
      put_line ("Entrer la quatrieme chiffre du code d'identification de 4 chiffres : ");
      get(code.c4);

   end lireCode;
   
   
   -- retourne VRAI si le code mémorise dans l'enregistrement code
   -- est correct et FAUX sinon
   function codeValide (code : in Enr) return Boolean is
      chiffreDuReste : Integer; -- chiffre attendu comme contrôle	

   begin
      -- déterminer le chiffre du reste
      chiffreDuReste :=(code.c1 + code.c2 + code.c3 + code.c4) mod 15;
      
     -- tester si le code est correct
     return (chiffreDuReste = code.c4) ;

   end codeValide ;

end codeutils;